{*------------------------------------------------------------------------------
	Modu³ formy g³ównej programu

	@author  norbert dudek
	@version 2016/07/24 1.0 Initial revision.
  @version 2020/12/17 2.0 Umo¿liwienie sterowania wiêcej ni¿ jednym serwisem

	@comment Forma g³ówna programu
-------------------------------------------------------------------------------}
unit FormMain;

interface

uses
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  System.Actions,
  System.Generics.Collections,
	Winapi.Windows,
  Winapi.Messages,
  Vcl.Graphics,
	Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.ImgList,
  Vcl.Menus,
  Vcl.ActnList,
	JvComponentBase,
  JvTrayIcon,
	ServiceManager;

type
  TServiceData = class
  private
    FName: string;
    FDescription: string;
  public
    constructor Create(AName, ADescription: string);

    property Name: string read FName write FName;
    property Description: string read FDescription write FDescription;
  end;

	TfrmMain = class(TForm)
		TrayIcon: TJvTrayIcon;
		tmrStatus: TTimer;
    actlstMain: TActionList;
    pmMain: TPopupMenu;
    actClose: TAction;
    mniN1: TMenuItem;
    mniClose: TMenuItem;
    ilTrayIcon: TImageList;
		procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
		procedure tmrStatusTimer(Sender: TObject);
    procedure actServiceActionUpdate(Sender: TObject);
    procedure actServiceActionExecute(Sender: TObject);
    procedure actStartUpdate(Sender: TObject);
		procedure actStartExecute(Sender: TObject);
    procedure actStopUpdate(Sender: TObject);
		procedure actStopExecute(Sender: TObject);
		procedure actRestartUpdate(Sender: TObject);
		procedure actRestartExecute(Sender: TObject);
		procedure actCloseExecute(Sender: TObject);
    procedure TrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
	private
    // zawiera nazwê folderu, gdzie przechowywana jest konfiguracja programu
    FAppdataFolder: string;
    // Zwiera obiekt menad¿era us³ug
		FServiceManager: TServiceManager;
    // zawiera listê dostêpnych serwisów
    FServiceDataList: TObjectList<TServiceData>;

    procedure CreateServiceItems(AParentItem: TMenuItem; AServiceData: TServiceData);
    procedure CreateServiceMenu(AServiceData: TServiceData);

    function GetServiceStateIcon(AServiceName: string): Integer;

		function GetServiceInfo(AServiceName: string): TServiceInfo;
		procedure UpdateTrayIcon;
	public
    property AppdataFolder: string read FAppdataFolder;
	end;

var
	frmMain: TfrmMain;

implementation
uses
  System.IniFiles,
  JclSysInfo;

{$R *.dfm}

procedure TfrmMain.actCloseExecute(Sender: TObject);
begin
	Close;
end;

procedure TfrmMain.actRestartExecute(Sender: TObject);
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(FServiceDataList[TAction(Sender).Tag].Name);
	if Assigned(FServiceInfo) then
	begin
		FServiceInfo.ServiceStop(False);
		UpdateTrayIcon;
    while FServiceInfo.State <> ssStopped do
      Application.ProcessMessages;
		FServiceInfo.ServiceStart(False);
		UpdateTrayIcon;
	end;
end;

procedure TfrmMain.actRestartUpdate(Sender: TObject);
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(FServiceDataList[TAction(Sender).Tag].Name);
	TAction(Sender).Enabled := Assigned(FServiceInfo) and (FServiceInfo.State in [ssRunning]);
end;

procedure TfrmMain.actServiceActionExecute(Sender: TObject);
begin
  {do nothing}
end;

procedure TfrmMain.actServiceActionUpdate(Sender: TObject);
begin
  TAction(Sender).ImageIndex := GetServiceStateIcon(FServiceDataList[TAction(Sender).Tag].Name)
end;

procedure TfrmMain.actStartExecute(Sender: TObject);
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(FServiceDataList[TAction(Sender).Tag].Name);
	if Assigned(FServiceInfo) then
		FServiceInfo.ServiceStart(False);
	UpdateTrayIcon;
end;

procedure TfrmMain.actStartUpdate(Sender: TObject);
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(FServiceDataList[TAction(Sender).Tag].Name);
	TAction(Sender).Enabled := Assigned(FServiceInfo) and (FServiceInfo.State in [ssStopped, ssPaused]);
end;

procedure TfrmMain.actStopExecute(Sender: TObject);
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(FServiceDataList[TAction(Sender).Tag].Name);
	if Assigned(FServiceInfo) then
		FServiceInfo.ServiceStop(False);
	UpdateTrayIcon;
end;

procedure TfrmMain.actStopUpdate(Sender: TObject);
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(FServiceDataList[TAction(Sender).Tag].Name);
	TAction(Sender).Enabled := Assigned(FServiceInfo) and (FServiceInfo.State in [ssRunning]);
end;

procedure TfrmMain.CreateServiceMenu(AServiceData: TServiceData);
var
  ServiceMenuItem: TMenuItem;
  ServiceAction: TAction;
begin
  ServiceAction := TAction.Create(Self);
  ServiceAction.Caption := AServiceData.Description;
  ServiceAction.OnUpdate := actServiceActionUpdate;
  ServiceAction.OnExecute := actServiceActionExecute;
  ServiceAction.ActionList := actlstMain;
  ServiceAction.Tag := FServiceDataList.IndexOf(AServiceData);

  ServiceMenuItem := TMenuItem.Create(Self);
  ServiceMenuItem.Action := ServiceAction;

  pmMain.Items.Insert(pmMain.Items.Count -2, ServiceMenuItem);
  CreateServiceItems(ServiceMenuItem, AServiceData);
end;

procedure TfrmMain.CreateServiceItems(AParentItem: TMenuItem; AServiceData: TServiceData);
var
  MenuItem: TMenuItem;
  ActionItem: TAction;
begin
  ActionItem := TAction.Create(Self);
  ActionItem.OnExecute := actStartExecute;
  ActionItem.OnUpdate := actStartUpdate;
  ActionItem.Caption := 'Start';
  ActionItem.Tag := FServiceDataList.IndexOf(AServiceData);

  MenuItem := TMenuItem.Create(Self);
  MenuItem.Action := ActionItem;
  AParentItem.Insert(0, MenuItem);


  ActionItem := TAction.Create(Self);
  ActionItem.OnExecute := actStopExecute;
  ActionItem.OnUpdate := actStopUpdate;
  ActionItem.Caption := 'Stop';
  ActionItem.Tag := FServiceDataList.IndexOf(AServiceData);

  MenuItem := TMenuItem.Create(Self);
  MenuItem.Action := ActionItem;
  AParentItem.Insert(1, MenuItem);


  ActionItem := TAction.Create(Self);
  ActionItem.OnExecute := actRestartExecute;
  ActionItem.OnUpdate := actRestartUpdate;
  ActionItem.Caption := 'Restart';
  ActionItem.Tag := FServiceDataList.IndexOf(AServiceData);

  MenuItem := TMenuItem.Create(Self);
  MenuItem.Action := ActionItem;
  AParentItem.Insert(2, MenuItem);
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
  SectionList: TStrings;
begin
  FAppdataFolder := GetCommonAppdataFolder +'\NorbertDudek\ServiceState';
  ForceDirectories(AppdataFolder);

  FServiceDataList := TObjectList<TServiceData>.Create;

  SectionList := TStringList.Create;
  try
    with TINIFile.Create(AppdataFolder +'\config.ini') do
    begin
      ReadSections(SectionList);
      for var i := 0 to SectionList.Count -1 do
      begin
        FServiceDataList.Add(
          TServiceData.Create(
              SectionList[i],
              ReadString(SectionList[i], 'Description', 'xxx')
            )
          );
      end;
    end;
  finally
    SectionList.Free;
  end;

	FServiceManager := TServiceManager.Create;
	FServiceManager.Active := True;


  if FServiceDataList.Count = 1 then
    CreateServiceItems(pmMain.Items, FServiceDataList[0])
  else
    for var i := 0 to FServiceDataList.Count -1 do
      CreateServiceMenu(FServiceDataList[i]);

	UpdateTrayIcon;
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
	FServiceManager.Free;
  FServiceDataList.Free;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
end;

{*------------------------------------------------------------------------------

	@return Obiekt informacji o us³udze
	@see TServiceInfo
-------------------------------------------------------------------------------}
/// <summary>
///	Zwraca obiekt informacji o us³udze o podanej nazwie je¿eli jest ona zarejestrowany w systemie.      <para/>
///	Je¿eli us³uga nie jest zarejestrowana zwraca wartoœæ nil.
/// </summary>
/// <param name="AServiceName">Nazwa us³ugi, której obiekt chcemy otrzymaæ</param>
/// <returns>Obiekt informacji o us³udze</returns>
function TfrmMain.GetServiceInfo(AServiceName: string): TServiceInfo;
begin
	FServiceManager.RebuildServicesList;
	Result := TServiceInfo(FServiceManager.ServiceByName[AServiceName]);
end;

function TfrmMain.GetServiceStateIcon(AServiceName: string): Integer;
var
	FServiceInfo: TServiceInfo;
begin
	FServiceInfo := GetServiceInfo(AServiceName);
	if Assigned(FServiceInfo) then
    case FServiceInfo.State of
      ssStopped,
      ssPaused:
        Result := 0;
      ssStartPending,
      ssStopPending,
      ssContinuePending,
      ssPausePending:
        Result := 1;
      ssRunning:
        Result := 2;
      else
        Result := 3;
    end
  else
    Result := 3;
end;

procedure TfrmMain.tmrStatusTimer(Sender: TObject);
begin
	UpdateTrayIcon;
end;

procedure TfrmMain.TrayIconClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

end;

/// <summary>
/// Aktualizuje ikonê w zasobniku systemowym w zale¿noœci od stanu us³ugi.
/// </summary>
procedure TfrmMain.UpdateTrayIcon;
begin
  if FServiceDataList.Count > 0 then
    TrayIcon.IconIndex := GetServiceStateIcon(FServiceDataList[0].Name)
  else
    TrayIcon.IconIndex := GetServiceStateIcon('');
end;

{ TServiceData }

constructor TServiceData.Create(AName, ADescription: string);
begin
  FName := AName;
  FDescription := ADescription;
end;


end.
