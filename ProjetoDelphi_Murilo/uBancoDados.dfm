object DataModule2: TDataModule2
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 199
  Width = 729
  object FDConnection_SQLite_Banco: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\muris\Documents\Embarcadero\Studio\Projects\Pr' +
        'ojetoDelphi_Murilo\BancoDados\banco'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 8
  end
  object FDQuery_cidades: TFDQuery
    Connection = FDConnection_SQLite_Banco
    SQL.Strings = (
      'CREATE TABLE IF NOT EXISTS CIDADES2('
      ' ID INT NO NULL,'
      ' NOME_CIDADE VARCHAR(100),'
      ' SIGLA_ESTADO VARCHAR(2),'
      ' PRIMARY KEY (ID)'
      ')')
    Left = 304
    Top = 48
  end
  object FDQuery_clientes: TFDQuery
    Connection = FDConnection_SQLite_Banco
    SQL.Strings = (
      'create table if not exists clientes('
      'id int no null,'
      'nome varchar(100),'
      'endereco varchar(100),'
      'id_cidade int,'
      'primary key(id)'
      ')')
    Left = 480
    Top = 48
  end
  object FDQuery_Numeros: TFDQuery
    Connection = FDConnection_SQLite_Banco
    SQL.Strings = (
      'create table if not exists numeros4('
      'id int no null,'
      'data_cadastro varchar(10),'
      'id_cliente int,'
      'numero_celular varchar(11),'
      'dia_pagamento varchar(10),'
      'valor_mensal int,'
      'credito numeric(18,2),'
      'primary key(id)'
      ')')
    Left = 640
    Top = 48
  end
  object FDTable_cidades: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = FDConnection_SQLite_Banco
    TableName = 'CIDADES2'
    Left = 304
    Top = 128
    object FDTable_cidadesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_cidadesNOME_CIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME_CIDADE'
      Origin = 'NOME_CIDADE'
      Size = 100
    end
    object FDTable_cidadesSIGLA_ESTADO: TStringField
      DisplayLabel = 'Estado'
      FieldName = 'SIGLA_ESTADO'
      Origin = 'SIGLA_ESTADO'
      EditMask = 'AA;1;_'
      Size = 2
    end
  end
  object FDTable_numeros: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection_SQLite_Banco
    TableName = 'numeros4'
    Left = 640
    Top = 120
    object FDTable_numerosid: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_numerosdata_cadastro: TStringField
      DisplayLabel = 'Data do cadastro'
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      EditMask = '!99/99/00;1;_'
      Size = 10
    end
    object FDTable_numerosid_cliente: TIntegerField
      DisplayLabel = 'C'#243'digo do cliente'
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
    end
    object FDTable_numerosnumero_celular: TStringField
      DisplayLabel = 'Numero do celular'
      FieldName = 'numero_celular'
      Origin = 'numero_celular'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 11
    end
    object FDTable_numerosdia_pagamento: TStringField
      DisplayLabel = 'Dia do pagamento'
      FieldName = 'dia_pagamento'
      Origin = 'dia_pagamento'
      EditMask = '!99/99/00;1;_'
      Size = 10
    end
    object FDTable_numerosvalor_mensal: TIntegerField
      DisplayLabel = 'Valor mensal'
      FieldName = 'valor_mensal'
      Origin = 'valor_mensal'
      EditFormat = #39'R$ ###,##0.00'#39
    end
    object FDTable_numeroscredito: TFMTBCDField
      DisplayLabel = 'Cr'#233'dito'
      FieldName = 'credito'
      Origin = 'credito'
      Precision = 18
      Size = 2
    end
    object FDTable_numerosnome_cliente: TStringField
      FieldKind = fkLookup
      FieldName = 'nome_cliente'
      LookupDataSet = FDTable_clientes
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'id_cliente'
      Size = 100
      Lookup = True
    end
  end
  object FDTable_clientes: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection_SQLite_Banco
    TableName = 'clientes'
    Left = 480
    Top = 128
    object FDTable_clientesid: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 10
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDTable_clientesnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 36
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object FDTable_clientesendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 26
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object FDTable_clientesid_cidade: TWideStringField
      DisplayLabel = 'ID_Cidade'
      DisplayWidth = 32767
      FieldName = 'id_cidade'
      Origin = 'id_cidade'
      Size = 32767
    end
    object FDTable_clientesnome_cidade: TStringField
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'nome_cidade'
      LookupDataSet = FDTable_cidades
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME_CIDADE'
      KeyFields = 'id_cidade'
      Size = 100
      Lookup = True
    end
  end
end
