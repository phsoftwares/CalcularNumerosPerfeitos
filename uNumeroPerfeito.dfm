object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 302
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object btnNumeroPerfeito: TButton
    Left = 24
    Top = 248
    Width = 270
    Height = 43
    Caption = 'Testar numeros perfeitos'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnNumeroPerfeitoClick
  end
  object edtNumeroPerfeito: TEdit
    Left = 24
    Top = 16
    Width = 177
    Height = 21
    TabOrder = 1
  end
  object btnAdicionar: TButton
    Left = 219
    Top = 16
    Width = 75
    Height = 21
    Caption = 'Adicionar'
    TabOrder = 2
    OnClick = btnAdicionarClick
  end
  object StringGrid1: TStringGrid
    Left = 24
    Top = 56
    Width = 270
    Height = 186
    ColCount = 2
    FixedCols = 0
    RowCount = 51
    FixedRows = 0
    TabOrder = 3
  end
end
