object frmMain: TfrmMain
  Left = 309
  Top = 186
  Width = 715
  Height = 607
  Caption = 'Suivi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 699
    Height = 129
    Align = alTop
    TabOrder = 0
    object creationTime: TLabel
      Left = 450
      Top = 21
      Width = 61
      Height = 13
      Caption = 'creationTime'
    end
    object lastAccessTime: TLabel
      Left = 450
      Top = 45
      Width = 74
      Height = 13
      Caption = 'lastAccessTime'
    end
    object lastModificationTime: TLabel
      Left = 450
      Top = 69
      Width = 96
      Height = 13
      Caption = 'lastModificationTime'
    end
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object edtCreation: TEdit
      Left = 552
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 1
      Text = 'edtCreation'
    end
    object edtlastAccess: TEdit
      Left = 552
      Top = 40
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edtlastAccess'
    end
    object edtModification: TEdit
      Left = 552
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 3
      Text = 'edtModification'
    end
  end
  object sg: TStringGrid
    Left = 0
    Top = 129
    Width = 265
    Height = 440
    Align = alLeft
    BorderStyle = bsNone
    Color = clBtnFace
    ColCount = 2
    FixedColor = clSilver
    FixedCols = 0
    TabOrder = 1
  end
  object XPManifest1: TXPManifest
    Left = 168
    Top = 8
  end
  object dlgOpen: TOpenDialog
    Left = 128
    Top = 8
  end
end
