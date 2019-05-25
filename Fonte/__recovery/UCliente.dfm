object fmCliente: TfmCliente
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o de Clientes'
  ClientHeight = 425
  ClientWidth = 727
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 47
    Width = 37
    Height = 13
    Caption = 'Codigo:'
  end
  object Label2: TLabel
    Left = 111
    Top = 47
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object Label3: TLabel
    Left = 8
    Top = 71
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 262
    Top = 74
    Width = 41
    Height = 13
    Caption = 'N'#250'mero:'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 231
    Top = 98
    Width = 32
    Height = 13
    Caption = 'Bairro:'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 8
    Top = 128
    Width = 37
    Height = 13
    Caption = 'Cidade:'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 241
    Top = 133
    Width = 23
    Height = 13
    Caption = 'CEP:'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 270
    Top = 157
    Width = 57
    Height = 13
    Caption = 'Data Nasc.:'
  end
  object Label9: TLabel
    Left = 8
    Top = 98
    Width = 69
    Height = 13
    Caption = 'Complemento:'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 209
    Top = 187
    Width = 26
    Height = 13
    Caption = 'Foto:'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 8
    Top = 160
    Width = 23
    Height = 13
    Caption = 'CPF:'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 8
    Top = 187
    Width = 18
    Height = 13
    Caption = 'RG:'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 8
    Top = 216
    Width = 46
    Height = 13
    Caption = 'Telefone:'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 209
    Top = 214
    Width = 37
    Height = 13
    Caption = 'Celular:'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 8
    Top = 241
    Width = 27
    Height = 13
    Caption = 'Obs.:'
    FocusControl = DBEdit15
  end
  object Label16: TLabel
    Left = 262
    Top = 241
    Width = 32
    Height = 13
    Caption = 'Email.:'
    FocusControl = DBEdit16
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = dm_dados.dsCliente
    Hints.Strings = (
      'Primeiro Registro'
      'Registro Anterior'
      'Proximo Registro'
      'Ultimo Registro'
      'Novo Registro'
      'Excluir Registro'
      'Editar Registro'
      'Gravar Registro'
      'Cancelar'
      'Atualizar Dados'
      'Aplicar Mudan'#231'as'
      'Cancelar Mudan'#231'as')
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = DBNavigator1Click
  end
  object DBEdit1: TDBEdit
    Left = 51
    Top = 44
    Width = 54
    Height = 21
    DataField = 'CLI_CODIGO'
    DataSource = dm_dados.dsCliente
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 148
    Top = 44
    Width = 174
    Height = 21
    DataField = 'CLI_NOME'
    DataSource = dm_dados.dsCliente
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 275
    Width = 705
    Height = 124
    DataSource = dm_dados.dsCliente
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CLI_CODIGO'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_LOGRADOURO'
        Title.Caption = 'Logradouro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_NUMERO'
        Title.Caption = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_BAIRRO'
        Title.Caption = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CIDADE'
        Title.Caption = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CEP'
        Title.Caption = 'Cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_DATANASC'
        Title.Caption = 'Data Nasc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_COMPLEMENTO'
        Title.Caption = 'Complemento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FOTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_CPF'
        Title.Caption = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_RG'
        Title.Caption = 'RG'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONECOM'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_FONECEL'
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_OBS'
        Title.Caption = 'Obs.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PES_EMAIL'
        Title.Caption = 'Email'
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 496
    Top = 8
    Width = 165
    Height = 64
    Caption = 'Ordem de VIZUALIZA'#199#195'O'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Codigo '
      'Nome')
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 496
    Top = 83
    Width = 185
    Height = 68
    Caption = 'Consulta via Sele'#231#227'o'
    TabOrder = 5
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 498
    Top = 109
    Width = 165
    Height = 21
    KeyField = 'CID_CODIGO'
    ListField = 'CID_NOME'
    ListSource = dm_dados.ds_cidade
    TabOrder = 6
  end
  object GroupBox1: TGroupBox
    Left = 496
    Top = 178
    Width = 217
    Height = 49
    Caption = 'Consulta via Digita'#231#227'o'
    TabOrder = 7
    object edit1: TEdit
      Left = 5
      Top = 17
      Width = 180
      Height = 21
      OEMConvert = True
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object DBEdit3: TDBEdit
    Left = 63
    Top = 71
    Width = 42
    Height = 21
    DataField = 'CLI_LOGRADOURO'
    DataSource = dm_dados.dsCliente
    TabOrder = 8
  end
  object DBEdit4: TDBEdit
    Left = 309
    Top = 71
    Width = 73
    Height = 21
    DataField = 'CLI_NUMERO'
    DataSource = dm_dados.dsCliente
    TabOrder = 9
  end
  object DBEdit5: TDBEdit
    Left = 269
    Top = 98
    Width = 52
    Height = 21
    DataField = 'CLI_BAIRRO'
    DataSource = dm_dados.dsCliente
    TabOrder = 10
  end
  object DBEdit6: TDBEdit
    Left = 51
    Top = 125
    Width = 33
    Height = 21
    DataField = 'CLI_CIDADE'
    DataSource = dm_dados.dsCliente
    TabOrder = 11
  end
  object DBEdit7: TDBEdit
    Left = 270
    Top = 130
    Width = 134
    Height = 21
    DataField = 'CLI_CEP'
    DataSource = dm_dados.dsCliente
    TabOrder = 12
  end
  object DBEdit9: TDBEdit
    Left = 83
    Top = 98
    Width = 134
    Height = 21
    DataField = 'CLI_COMPLEMENTO'
    DataSource = dm_dados.dsCliente
    TabOrder = 13
  end
  object DBEdit10: TDBEdit
    Left = 241
    Top = 184
    Width = 94
    Height = 21
    DataField = 'CLI_FOTO'
    DataSource = dm_dados.dsCliente
    TabOrder = 14
  end
  object DBEdit11: TDBEdit
    Left = 63
    Top = 152
    Width = 186
    Height = 21
    DataField = 'CLI_CPF'
    DataSource = dm_dados.dsCliente
    TabOrder = 15
  end
  object DBEdit12: TDBEdit
    Left = 55
    Top = 179
    Width = 135
    Height = 21
    DataField = 'CLI_RG'
    DataSource = dm_dados.dsCliente
    TabOrder = 16
  end
  object ComboBox1: TComboBox
    Left = 111
    Top = 71
    Width = 145
    Height = 21
    TabOrder = 17
    Text = 'ComboBox1'
  end
  object ComboBox2: TComboBox
    Left = 327
    Top = 98
    Width = 145
    Height = 21
    TabOrder = 18
    Text = 'ComboBox2'
  end
  object ComboBox3: TComboBox
    Left = 90
    Top = 125
    Width = 145
    Height = 21
    TabOrder = 19
    Text = 'ComboBox3'
  end
  object DBEdit13: TDBEdit
    Left = 60
    Top = 211
    Width = 130
    Height = 21
    DataField = 'CLI_FONECOM'
    DataSource = dm_dados.dsCliente
    TabOrder = 20
  end
  object DBEdit14: TDBEdit
    Left = 252
    Top = 211
    Width = 109
    Height = 21
    DataField = 'CLI_FONECEL'
    DataSource = dm_dados.dsCliente
    TabOrder = 21
  end
  object DBEdit15: TDBEdit
    Left = 41
    Top = 238
    Width = 194
    Height = 21
    DataField = 'CLI_OBS'
    DataSource = dm_dados.dsCliente
    TabOrder = 22
  end
  object DBEdit16: TDBEdit
    Left = 309
    Top = 238
    Width = 269
    Height = 21
    DataField = 'PES_EMAIL'
    DataSource = dm_dados.dsCliente
    TabOrder = 23
  end
  object DBEdit8: TDBEdit
    Left = 333
    Top = 157
    Width = 121
    Height = 21
    DataField = 'CLI_DATANASC'
    DataSource = dm_dados.dsCliente
    TabOrder = 24
  end
  object tblAuxCliente: TIBTable
    Database = dm_dados.base_dados_estoque
    Transaction = dm_dados.IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'CLI_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CLI_LOGRADOURO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_NUMERO'
        Attributes = [faRequired]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLI_BAIRRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_CIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CLI_CEP'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLI_DATANASC'
        Attributes = [faRequired]
        DataType = ftDateTime
      end
      item
        Name = 'CLI_COMPLEMENTO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'CLI_FOTO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'CLI_CPF'
        DataType = ftString
        Size = 14
      end
      item
        Name = 'CLI_RG'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CLI_FONECOM'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CLI_FONECEL'
        DataType = ftString
        Size = 16
      end
      item
        Name = 'CLI_OBS'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'PES_EMAIL'
        DataType = ftString
        Size = 50
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
    StoreDefs = True
    TableName = 'CLIENTE'
    UniDirectional = False
    Left = 408
    Top = 193
    object tblAuxClienteCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Required = True
    end
    object tblAuxClienteCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Required = True
      Size = 40
    end
    object tblAuxClienteCLI_LOGRADOURO: TIntegerField
      FieldName = 'CLI_LOGRADOURO'
      Required = True
    end
    object tblAuxClienteCLI_NUMERO: TIBStringField
      FieldName = 'CLI_NUMERO'
      Required = True
      Size = 10
    end
    object tblAuxClienteCLI_BAIRRO: TIntegerField
      FieldName = 'CLI_BAIRRO'
      Required = True
    end
    object tblAuxClienteCLI_CIDADE: TIntegerField
      FieldName = 'CLI_CIDADE'
      Required = True
    end
    object tblAuxClienteCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object tblAuxClienteCLI_DATANASC: TDateTimeField
      FieldName = 'CLI_DATANASC'
      Required = True
    end
    object tblAuxClienteCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 10
    end
    object tblAuxClienteCLI_FOTO: TIBStringField
      FieldName = 'CLI_FOTO'
      Size = 40
    end
    object tblAuxClienteCLI_CPF: TIBStringField
      FieldName = 'CLI_CPF'
      Size = 14
    end
    object tblAuxClienteCLI_RG: TIBStringField
      FieldName = 'CLI_RG'
    end
    object tblAuxClienteCLI_FONECOM: TIBStringField
      FieldName = 'CLI_FONECOM'
      Size = 16
    end
    object tblAuxClienteCLI_FONECEL: TIBStringField
      FieldName = 'CLI_FONECEL'
      Size = 16
    end
    object tblAuxClienteCLI_OBS: TIBStringField
      FieldName = 'CLI_OBS'
      Size = 40
    end
    object tblAuxClientePES_EMAIL: TIBStringField
      FieldName = 'PES_EMAIL'
      Size = 50
    end
  end
end
