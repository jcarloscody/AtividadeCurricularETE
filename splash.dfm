object splach: Tsplach
  Left = 260
  Top = 195
  Width = 425
  Height = 55
  AlphaBlend = True
  AlphaBlendValue = 200
  AutoSize = True
  BorderIcons = []
  Caption = '...'
  Color = clBtnFace
  TransparentColorValue = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 409
    Height = 17
    TabOrder = 0
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 272
  end
  object XPManifest1: TXPManifest
    Left = 232
    Top = 8
  end
end
