object frmCadastroCidades: TfrmCadastroCidades
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de cidades'
  ClientHeight = 347
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 288
    Top = 55
    Width = 33
    Height = 13
    Caption = 'Estado'
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 32
    Width = 28
    Height = 21
    DataField = 'ID'
    DataSource = DataSource_Cidades
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 72
    Width = 250
    Height = 21
    DataField = 'NOME_CIDADE'
    DataSource = DataSource_Cidades
    TabOrder = 1
  end
  object btnGravar: TButton
    Left = 99
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Default = True
    TabOrder = 2
    OnClick = btnGravarClick
  end
  object btnExcluir: TButton
    Left = 165
    Top = 295
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 3
    OnClick = btnExcluirClick
  end
  object btnAnterior_dado: TButton
    Left = 84
    Top = 295
    Width = 75
    Height = 25
    Caption = '<'
    TabOrder = 4
    OnClick = btnAnterior_dadoClick
  end
  object btnProximo_dado: TButton
    Left = 246
    Top = 295
    Width = 75
    Height = 25
    Caption = '>'
    TabOrder = 5
    OnClick = btnProximo_dadoClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 155
    Width = 409
    Height = 134
    DataSource = DataSource_Cidades
    Enabled = False
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CIDADE'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGLA_ESTADO'
        Width = 40
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox
    Left = 288
    Top = 72
    Width = 42
    Height = 21
    DataField = 'SIGLA_ESTADO'
    DataSource = DataSource_Cidades
    Items.Strings = (
      'AC'
      'AL'
      'AP'
      'AM'
      'BA'
      'CE'
      'ES'
      'GO'
      'MA'
      'MT'
      'MS'
      'MG'
      'PA'
      'PB'
      'PR'
      'PE'
      'PI'
      'RJ'
      'RN'
      'RS'
      'RO'
      'RR'
      'SC'
      'SP'
      'SE'
      'TO'
      'DF')
    TabOrder = 7
  end
  object btnNovo: TButton
    Left = 8
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 8
    OnClick = btnNovoClick
  end
  object btnCancelar: TButton
    Left = 191
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 9
    OnClick = btnCancelarClick
  end
  object DataSource_Cidades: TDataSource
    DataSet = DataModule2.FDTable_cidades
    Left = 88
    Top = 16
  end
end
