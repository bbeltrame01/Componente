object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'frComponentes'
  ClientHeight = 129
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object labTexto: TLabel
    Left = 24
    Top = 16
    Width = 28
    Height = 15
    Caption = 'Texto'
  end
  object labResultado: TLabel
    Left = 24
    Top = 72
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object edtTexto: TProperEdit
    Left = 24
    Top = 37
    Width = 338
    Height = 23
    TabOrder = 0
  end
  object edtResultado: TEdit
    Left = 24
    Top = 93
    Width = 338
    Height = 23
    ReadOnly = True
    TabOrder = 1
  end
  object btnResultado: TButton
    Left = 368
    Top = 36
    Width = 97
    Height = 25
    Caption = 'Resultado'
    TabOrder = 2
    OnClick = btnResultadoClick
  end
end
