object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Main'
  ClientHeight = 297
  ClientWidth = 562
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object TrayIcon: TJvTrayIcon
    Active = True
    IconIndex = 0
    Icons = ilTrayIcon
    PopupMenu = pmMain
    Visibility = [tvVisibleTaskList, tvAutoHide]
    OnClick = TrayIconClick
    Left = 24
    Top = 88
  end
  object tmrStatus: TTimer
    Interval = 500
    OnTimer = tmrStatusTimer
    Left = 104
    Top = 88
  end
  object actlstMain: TActionList
    Images = ilTrayIcon
    Left = 304
    Top = 88
    object actClose: TAction
      Caption = 'Close'
      OnExecute = actCloseExecute
    end
  end
  object pmMain: TPopupMenu
    Images = ilTrayIcon
    Left = 256
    Top = 88
    object mniN1: TMenuItem
      Caption = '-'
    end
    object mniClose: TMenuItem
      Action = actClose
    end
  end
  object ilTrayIcon: TImageList
    Left = 24
    Top = 136
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D6166009B6A700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D6166009B6A700000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000008D6166009B6A700000000000000000000000
      00000000000000000000000000000000000000000000D1D2D800D5D6DC00D6D8
      DD00D6D8DD00D5D5DC00D4D4DB00D3D5DA00D3D5DA00D4D4DB00D2D4D900D3D5
      DA00CACED900C6CBD700C5CBD700000000000000000000000000000000000000
      0000C88B92000000000080808000BA888E00BD888F00807E7E008A808100C488
      8F00000000000000000000000000000000000000000000000000000000000000
      0000C88B92000000000080808000BA888E00BD888F00807E7E008A808100C488
      8F00000000000000000000000000000000000000000000000000000000000000
      0000C88B92000000000080808000BA888E00BD888F00807E7E008A808100C488
      8F00000000000000000000000000000000008AA6C8001661B8001660BA001A68
      C0001D6DC1002574C0002D7CC200347DC1003780C100327ABF002A73BE00206C
      BB001368C4000B62C6000F6DCB0094A7BF000000000000000000000000000000
      0000C2899100BF898E00A672A100C2889200C5899100A373A300AD799E00C98C
      93008B8082000000000000000000000000000000000000000000000000000000
      0000C2899100BF898E00A69BA100C28B9200C58A9100A39DA300AD989E00C98C
      93008B8082000000000000000000000000000000000000000000000000000000
      0000C2899100BF898E00A69B7800C28B8F00C58A9000A39D7900AD987F00C98C
      93008B80820000000000000000000000000080A0CC000076F2000083FF000795
      FF0021AAFF0041BDFF005FCAFF0068CFFF006ACDFF005FC8FF0042BBFF0025AA
      FF000B96FF000491FF000787F8009FACC1000000000000000000000000008C80
      8100B7809700CB8E9400D1929800D4949A00D4949A00D1929800CC8F9500BB81
      96002519E8008880810000000000000000000000000000000000000000008C80
      8100B7919700CB8E9400D1929800D4949A00D4949A00D1929800CC8F9500BB8D
      960025E6E8008880810000000000000000000000000000000000000000008C80
      8100B7918600CB8E9400D1929800D4949A00D4949A00D1929800CC8F9500BB8D
      8A0025E61B00888081000000000000000000000000000B62BF000181FB00007E
      FE000D92FF0021A0FF0029A6FF0098D7FF008CD3FF002DA9FF0024A3FF001093
      FF00088EFF000A96FF002160AD000000000000000000C1858B00C98C9300C288
      8D00CB8E9400CE909600AC779E007652BB007652BB00AC779E00CD909500CB8E
      9400B7809700C3898F00C78B92000000000000000000C1858B00C98C9300C288
      8D00CB8E9400CE909600AC989E0076B8BB0076B8BB00AC989E00CD909500CB8E
      9400B7919700C3898F00C78B92000000000000000000C1858B00C98C9300C288
      8D00CB8E9400CE909600AC987D0076B8550076B85500AC987D00CD909500CB8E
      9400B7918600C3898F00C78B9200000000000000000094ABCC002B99EF00088A
      FC000084FF000A90FF001193FE00EEF8FC00E5F5FC001095FE000E93FF00068B
      FF000A97FF000D81EC00B2BCCD00000000000000000000000000BD878D00CC8F
      9500CD909500815AB5000604FA000000FF000000FF000704FA00835AB400CE90
      9600CB8E9400B47E9B008F818200000000000000000000000000BD878D00CC8F
      9500CD90950081B1B50006F9FA0000FFFF0000FFFF0007F9FA0083B0B400CE90
      9600CB8E9400B4949B008F818200000000000000000000000000BD878D00CC8F
      9500CD90950081B15E0006F9050000FF000000FF000007F9050083B05E00CE90
      9600CB8E9400B49485008F8182000000000000000000000000003278BC0039AA
      FA001996FA000186FE000075FF001093F9000E8EF900017AFF000186FF00038A
      FF000F9CFF00386BA90000000000000000000000000000000000BA888E00D192
      9800AB779F000603F9000000FF000201FD000201FD000000FF000704FA00AC76
      9D00D1929800A371A20080808000000000000000000000000000BA888E00D192
      9800AB999F0006F9F90000FFFF0002FCFD0002FCFD0000FFFF0007F9FA00AC96
      9D00D1929800A39CA20080808000000000000000000000000000BA888E00D192
      9800AB997D0006F9030000FF000002FC020002FC020000FF000007F90500AC96
      7D00D1929800A39C770080808000000000000000000000000000AABBD4003C9B
      E40030A2F500269DF7000380FA00EEF8FF00E8F4FE000064F9000080FC000390
      FF001080E800C8CDD80000000000000000009C6B7200B17B8000C5899000D494
      9A007652BC00FFFFFF000201FD000000FF000000FF000201FD000000FF007652
      BA00D4949A00C2889200BA868D008B6064009C6B7200B17B8000C5899000D494
      9A0076B9BC00FFFFFF0002FCFD0000FFFF0000FFFF0002FCFD0000FFFF0076B7
      BA00D4949A00C28B9200BA868D008B6064009C6B7200B17B8000C5899000D494
      9A0076B95500FFFFFF0002FC020000FF000000FF000002FC020000FF000076B7
      5500D4949A00C28B8F00BA868D008B606400000000000000000000000000457F
      B70042A7F1002C97EC001B8EEE00F3F8FE00E1F1FC000056E800007BFE000A97
      FF005078AC000000000000000000000000008B606400A3727700C4899000D494
      9A007652BC00FFFFFF00FDFCFD000000FF000000FF000201FD000000FF007652
      BA00D4949A00C5899100BD888F00986B6F008B606400A3727700C4899000D494
      9A0076B9BC00FFFFFF00FDFCFD0000FFFF0000FFFF0002FCFD0000FFFF0076B7
      BA00D4949A00C58A9100BD888F00986B6F008B606400A3727700C4899000D494
      9A0076B95500FFFFFF00FDFCFD0000FF000000FF000002FC020000FF000076B7
      5500D4949A00C58A9000BD888F00986B6F00000000000000000000000000C0CB
      DD004297DC00379CEA00238EE400ECF7FC00E5F3FB000472F000018AFF000F7B
      E200DDDEE3000000000000000000000000000000000000000000BA878C00D192
      9800AB779F00FCF9F900FFFFFF00FDFCFD000201FD000000FF000704FA00AC76
      9D00D1929800A372A3007E7E7E00000000000000000000000000BA878C00D192
      9800AB999F00FCF9F900FFFFFF00FDFCFD0002FCFD0000FFFF0007F9FA00AC96
      9D00D1929800A39EA3007E7E7E00000000000000000000000000BA878C00D192
      9800AB997D00FCF9F900FFFFFF00FDFCFD0002FC020000FF000007F90500AC96
      7D00D1929800A39E77007E7E7E00000000000000000000000000000000000000
      00005788B9004AAAED003094E400EEF7FC00E4F4FC001493FC002CACFE006C8C
      B600000000000000000000000000000000000000000000000000B77E8400CB8E
      9400CE909600815AB500FBF9FA00FFFFFF00FFFFFF000704FA00835AB400CD90
      9500CC8F9500BD868D0000000000000000000000000000000000B77E8400CB8E
      9400CE90960081B1B500FBF9FA00FFFFFF00FFFFFF0007F9FA0083B0B400CD90
      9500CC8F9500BD868D0000000000000000000000000000000000B77E8400CB8E
      9400CE90960081B15E00FBF9FA00FFFFFF00FFFFFF0007F9050083B05E00CD90
      9500CC8F9500BD868D0000000000000000000000000000000000000000000000
      0000D5DCE7004393D20041A0E70093CFF20081CAF7002AABFF002688D6000000
      00000000000000000000000000000000000000000000C88C9200BF858900C089
      8E00CC8E9400CD909500AC779E007652BB007652BB00AC779E00CE909600CB8E
      9400BB829600C98E9400BF868C000000000000000000C88C9200BF858900C089
      8E00CC8E9400CD909500AC989E0076B8BB0076B8BB00AC989E00CE909600CB8E
      9400BB8E9600C98E9400BF868C000000000000000000C88C9200BF858900C089
      8E00CC8E9400CD909500AC987D0076B8550076B85500AC987D00CE909600CB8E
      9400BB8E8A00C98E9400BF868C00000000000000000000000000000000000000
      0000000000006B92BE0056ACEC00359EEF002DA4FB0042B4FD00849BBC000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1889100CC8F9500D1929800D4949A00D4949A00D1929800CB8E9400C089
      8E008C8081000000000000000000000000000000000000000000000000000000
      0000C1889100CC8F9500D1929800D4949A00D4949A00D1929800CB8E9400C089
      8E008C8081000000000000000000000000000000000000000000000000000000
      0000C1889100CC8F9500D1929800D4949A00D4949A00D1929800CB8E9400C089
      8E008C8081000000000000000000000000000000000000000000000000000000
      000000000000000000004093D3004FB5FB004BBDFF003487CF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C98C9300AD797D00BA888E00C5899000C4899000BA878C00C1888E00BF85
      8900000000000000000000000000000000000000000000000000000000000000
      0000C98C9300AD797D00BA888E00C5899000C4899000BA878C00C1888E00BF85
      8900000000000000000000000000000000000000000000000000000000000000
      0000C98C9300AD797D00BA888E00C5899000C4899000BA878C00C1888E00BF85
      8900000000000000000000000000000000000000000000000000000000000000
      000000000000000000007DA0C7005DBFFF0054BBFD009BADC600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C1858B000000000000000000B17B8000A37277000000000000000000C88C
      9200000000000000000000000000000000000000000000000000000000000000
      0000C1858B000000000000000000B17B8000A37277000000000000000000C88C
      9200000000000000000000000000000000000000000000000000000000000000
      0000C1858B000000000000000000B17B8000A37277000000000000000000C88C
      9200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000489ADA004D91CE0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6C72008B60660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6C72008B60660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009C6C72008B60660000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000D0DDEA00D8E2EC0000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FFE7FFE7F8001F40FF40FF40F0000
      F007F007F0070000E003E003E00380018001800180018001C001C001C001C003
      C001C001C001C003000000000000E007000000000000E007C001C001C001F00F
      C003C003C003F01F800180018001F81FF007F007F007FC3FF00FF00FF00FFC3F
      F66FF66FF66FFE7FFE7FFE7FFE7FFE7F00000000000000000000000000000000
      000000000000}
  end
end
