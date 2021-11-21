object frmCadastroCliente: TfrmCadastroCliente
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Cadastro de clientes'
  ClientHeight = 420
  ClientWidth = 664
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 14
    Top = 17
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 62
    Top = 17
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 62
    Top = 57
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label6: TLabel
    Left = 62
    Top = 100
    Width = 33
    Height = 13
    Caption = 'Cidade'
  end
  object Label4: TLabel
    Left = 8
    Top = 399
    Width = 76
    Height = 13
    Caption = #169' 2021, SI, Inc'
  end
  object btnGravar: TButton
    Left = 132
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Gravar'
    Default = True
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object btnProximo_dado: TButton
    Left = 354
    Top = 327
    Width = 75
    Height = 25
    Caption = '>'
    TabOrder = 1
    OnClick = btnProximo_dadoClick
  end
  object btnAnterior_dado: TButton
    Left = 192
    Top = 327
    Width = 75
    Height = 25
    Caption = '<'
    TabOrder = 2
    OnClick = btnAnterior_dadoClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 187
    Width = 636
    Height = 134
    DataSource = DataSource_Clientes
    Enabled = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'id_cidade'
        Title.Caption = 'ID Cidade'
        Width = 55
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_cidade'
        Title.Caption = 'Cidade'
        Width = 150
        Visible = True
      end>
  end
  object btnExcluir: TButton
    Left = 273
    Top = 327
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 4
    OnClick = btnExcluirClick
  end
  object DBEdit1: TDBEdit
    Left = 14
    Top = 33
    Width = 27
    Height = 21
    DataField = 'id'
    DataSource = DataSource_Clientes
    TabOrder = 5
  end
  object DBEdit2: TDBEdit
    Left = 62
    Top = 33
    Width = 300
    Height = 21
    DataField = 'nome'
    DataSource = DataSource_Clientes
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 62
    Top = 73
    Width = 237
    Height = 21
    DataField = 'endereco'
    DataSource = DataSource_Clientes
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 62
    Top = 119
    Width = 145
    Height = 21
    DataField = 'nome_cidade'
    DataSource = DataSource_Clientes
    TabOrder = 8
  end
  object edtQuantidadeCliente: TLabeledEdit
    Left = 8
    Top = 352
    Width = 121
    Height = 21
    EditLabel.Width = 105
    EditLabel.Height = 13
    EditLabel.Caption = 'Quantidade de cliente'
    TabOrder = 9
  end
  object btnNovo: TButton
    Left = 32
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 10
    OnClick = btnNovoClick
  end
  object btnCancelar: TBitBtn
    Left = 232
    Top = 156
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 11
    OnClick = btnCancelarClick
  end
  object DataSource_Clientes: TDataSource
    DataSet = DataModule2.FDTable_clientes
    OnStateChange = DataSource_ClientesStateChange
    Left = 520
    Top = 8
  end
end
