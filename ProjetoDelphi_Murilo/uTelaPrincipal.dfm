object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Bem vindo!'
  ClientHeight = 420
  ClientWidth = 780
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    780
    420)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 26
    Width = 626
    Height = 30
    Anchors = [akLeft, akRight]
    Caption = 'Bem vindo ao gerenciador de celulares'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -29
    Font.Name = 'Fixedsys'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 630
  end
  object Label2: TLabel
    Left = 208
    Top = 98
    Width = 353
    Height = 26
    Anchors = [akLeft, akRight]
    Caption = 'Escolha abaixo o que deseja fazer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Franklin Gothic Medium'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 399
    Width = 76
    Height = 13
    Caption = #169' 2021, SI, Inc'
  end
  object btnCadastroCidades: TButton
    Left = 8
    Top = 146
    Width = 243
    Height = 162
    Anchors = [akLeft, akRight]
    Caption = 'Cadastro de cidades'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnCadastroCidadesClick
    ExplicitWidth = 247
  end
  object btnCadastroCliente: TButton
    Left = 264
    Top = 146
    Width = 243
    Height = 162
    Anchors = [akLeft, akRight]
    Caption = 'Cadastro de clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = btnCadastroClienteClick
    ExplicitTop = 143
    ExplicitWidth = 247
  end
  object btnCadastroNumeros: TButton
    Left = 517
    Top = 146
    Width = 243
    Height = 162
    Anchors = [akLeft, akRight]
    Caption = 'Cadastro de numeros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btnCadastroNumerosClick
    ExplicitWidth = 247
  end
end
