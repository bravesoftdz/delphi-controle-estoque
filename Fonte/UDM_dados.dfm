object dm_dados: Tdm_dados
  OldCreateOrder = False
  Height = 353
  Width = 190
  object IBTrans: TIBTransaction
    Active = True
    DefaultDatabase = base_dados_estoque
    Left = 120
    Top = 32
  end
  object tbl_cidade: TIBTable
    Database = base_dados_estoque
    Transaction = IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CID_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CID_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CID_UF'
        Attributes = [faRequired]
        DataType = ftString
        Size = 2
      end>
    IndexDefs = <
      item
        Name = 'CIDADE_PK'
        Fields = 'CID_CODIGO'
        Options = [ixUnique]
      end
      item
        Name = 'IND_COD_CIDADE'
        Fields = 'CID_CODIGO'
      end
      item
        Name = 'IND_NOME_CID'
        Fields = 'CID_NOME'
      end>
    IndexName = 'IND_COD_CIDADE'
    StoreDefs = True
    TableName = 'TBL_CIDADE'
    UniDirectional = False
    Left = 40
    Top = 88
    object tbl_cidadeCID_CODIGO: TIntegerField
      FieldName = 'CID_CODIGO'
      Required = True
    end
    object tbl_cidadeCID_NOME: TIBStringField
      FieldName = 'CID_NOME'
      Required = True
      Size = 30
    end
    object tbl_cidadeCID_UF: TIBStringField
      FieldName = 'CID_UF'
      Required = True
      Size = 2
    end
  end
  object ds_cidade: TDataSource
    DataSet = tbl_cidade
    Left = 120
    Top = 96
  end
  object base_dados_estoque: TIBDatabase
    Connected = True
    DatabaseName = 'C:\Estoque\Dados\ESTOQUE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTrans
    ServerType = 'IBServer'
    Left = 40
    Top = 32
  end
  object tblBairro: TIBTable
    Database = base_dados_estoque
    Transaction = IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    IndexName = 'BAI_INDCOD'
    TableName = 'BAIRRO'
    UniDirectional = False
    Left = 40
    Top = 152
    object tblBairroBAIRRO_CODIGO: TIntegerField
      FieldName = 'BAIRRO_CODIGO'
      Required = True
    end
    object tblBairroBAIRRO_NOME: TIBStringField
      FieldName = 'BAIRRO_NOME'
      Required = True
      Size = 30
    end
  end
  object ds_bairro: TDataSource
    DataSet = tblBairro
    Left = 120
    Top = 152
  end
  object tblLogradouro: TIBTable
    Database = base_dados_estoque
    Transaction = IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'LOGRADOURO'
    UniDirectional = False
    Left = 40
    Top = 208
    object tblLogradouroLOG_CODIGO: TIntegerField
      FieldName = 'LOG_CODIGO'
      Required = True
    end
    object tblLogradouroLOG_LOGRADOURO: TIBStringField
      FieldName = 'LOG_LOGRADOURO'
      Required = True
      Size = 40
    end
  end
  object dsLogradouro: TDataSource
    DataSet = tblLogradouro
    Left = 120
    Top = 208
  end
  object tblCliente: TIBTable
    Database = base_dados_estoque
    Transaction = IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CLIENTE'
    UniDirectional = False
    Left = 40
    Top = 272
    object tblClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object tblClienteCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 40
    end
    object tblClienteCLI_LOGRADOURO: TIntegerField
      FieldName = 'CLI_LOGRADOURO'
      Required = True
    end
    object tblClienteCLI_NUMERO: TIBStringField
      FieldName = 'CLI_NUMERO'
      Required = True
      Size = 10
    end
    object tblClienteCLI_BAIRRO: TIntegerField
      FieldName = 'CLI_BAIRRO'
      Required = True
    end
    object tblClienteCLI_CIDADE: TIntegerField
      FieldName = 'CLI_CIDADE'
      Required = True
    end
    object tblClienteCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object tblClienteCLI_DATANASC: TDateTimeField
      FieldName = 'CLI_DATANASC'
      Required = True
    end
    object tblClienteCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 10
    end
    object tblClienteCLI_FOTO: TIBStringField
      FieldName = 'CLI_FOTO'
      Size = 40
    end
    object tblClienteCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Size = 14
    end
    object tblClienteCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
    end
    object tblClienteCLI_FONECOM: TIBStringField
      FieldName = 'CLI_FONECOM'
      Size = 16
    end
    object tblClienteCLI_FONECEL: TIBStringField
      FieldName = 'CLI_FONECEL'
      Size = 16
    end
    object tblClienteCLI_OBS: TIBStringField
      FieldName = 'CLI_OBS'
      Size = 40
    end
    object tblClientePES_EMAIL: TIBStringField
      FieldName = 'PES_EMAIL'
      Size = 50
    end
  end
  object dsCliente: TDataSource
    DataSet = tblCliente
    Left = 120
    Top = 272
  end
end
