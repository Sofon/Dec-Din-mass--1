object Form1: TForm1
  Left = 202
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1077#1082' ('#1047#1072#1076#1072#1095#1072' '#1085#1072#1087#1080#1089#1072#1085#1072' '#1085#1072' '#1079#1072#1082#1072#1079' '#1080' '#1077#1097#1077' '#1085#1077' '#1086#1087#1083#1072#1095#1077#1085#1072')'
  ClientHeight = 275
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 20
    Top = 13
    Width = 39
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1058#1086#1074#1072#1088
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 20
    Top = 39
    Width = 49
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1057#1090#1088#1072#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 20
    Top = 65
    Width = 34
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1057#1088#1086#1082
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 20
    Top = 91
    Width = 48
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1050#1086#1083'-'#1074#1086
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 254
    Top = 13
    Width = 85
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1055#1086#1089#1090#1072#1074#1082#1072' '#1076#1086':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 754
    Top = 13
    Width = 122
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1057#1090#1088#1072#1085#1099' '#1087#1086#1089#1090#1072#1074#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
  end
  object edtTitle: TEdit
    Left = 85
    Top = 13
    Width = 150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 0
  end
  object edtCountry: TEdit
    Left = 85
    Top = 39
    Width = 150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 1
  end
  object edtLimit: TEdit
    Left = 85
    Top = 65
    Width = 150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 2
  end
  object edtCount: TEdit
    Left = 85
    Top = 91
    Width = 150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 3
  end
  object btnViewDec: TButton
    Left = 20
    Top = 182
    Width = 215
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100
    TabOrder = 4
    OnClick = btnViewDecClick
  end
  object sgDec: TStringGrid
    Left = 254
    Top = 38
    Width = 487
    Height = 222
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ColCount = 4
    FixedCols = 0
    RowCount = 2
    TabOrder = 5
  end
  object btnAddTop: TButton
    Left = 20
    Top = 130
    Width = 104
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' ('#1058#1086#1088')'
    TabOrder = 6
    OnClick = btnAddTopClick
  end
  object btnAddBottom: TButton
    Left = 130
    Top = 130
    Width = 105
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' ('#1042#1086'tt)'
    TabOrder = 7
    OnClick = btnAddBottomClick
  end
  object btnDelTop: TButton
    Left = 20
    Top = 156
    Width = 104
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1059#1076#1072#1083#1080#1090#1100' ('#1058#1086#1088')'
    TabOrder = 8
    OnClick = btnDelTopClick
  end
  object btnDelBottom: TButton
    Left = 130
    Top = 156
    Width = 105
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1059#1076#1072#1083#1080#1090#1100' (Bott)'
    TabOrder = 9
    OnClick = btnDelBottomClick
  end
  object btnFreeDec: TButton
    Left = 20
    Top = 208
    Width = 215
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 10
    OnClick = btnFreeDecClick
  end
  object btnClose: TButton
    Left = 20
    Top = 234
    Width = 215
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1047#1072#1082#1088#1099#1090#1100
    TabOrder = 11
    OnClick = btnCloseClick
  end
  object btnDecide: TButton
    Left = 527
    Top = 12
    Width = 104
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1054#1090#1074#1077#1090
    TabOrder = 12
    OnClick = btnDecideClick
  end
  object edtDecide: TEdit
    Left = 364
    Top = 13
    Width = 150
    Height = 21
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    TabOrder = 13
    Text = '01.07.2013'
  end
  object lstCountry: TMemo
    Left = 754
    Top = 39
    Width = 150
    Height = 222
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Enabled = False
    TabOrder = 14
  end
  object btnReport: TButton
    Left = 637
    Top = 13
    Width = 105
    Height = 20
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Caption = #1054#1090#1095#1077#1090
    TabOrder = 15
    OnClick = btnReportClick
  end
  object SaveDlg: TSaveDialog
    Left = 16
    Top = 136
  end
end
