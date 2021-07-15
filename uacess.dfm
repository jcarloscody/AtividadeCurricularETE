object acesso: Tacesso
  Left = 354
  Top = 219
  Width = 305
  Height = 163
  AutoSize = True
  Caption = 'Acesso'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 39
    Height = 13
    Caption = 'Usuario:'
  end
  object Label2: TLabel
    Left = 0
    Top = 56
    Width = 34
    Height = 13
    Caption = 'Senha:'
  end
  object DBText1: TDBText
    Left = 48
    Top = 0
    Width = 201
    Height = 25
    DataField = 'nome'
    DataSource = sededeconeccao.ds_acesso
  end
  object SpeedButton1: TSpeedButton
    Left = 16
    Top = 96
    Width = 105
    Height = 29
    Caption = 'Entrar'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 128
    Top = 96
    Width = 105
    Height = 29
    Caption = 'Cancelar'
    Flat = True
    OnClick = SpeedButton2Click
  end
  object SpeedButton3: TSpeedButton
    Left = 240
    Top = 56
    Width = 49
    Height = 29
    Caption = 'Novo'
    Flat = True
  end
  object Edit2: TEdit
    Left = 40
    Top = 56
    Width = 185
    Height = 21
    TabOrder = 0
  end
end
