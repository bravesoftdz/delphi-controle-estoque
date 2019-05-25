object fmBairro: TfmBairro
  Left = 0
  Top = 0
  Caption = 'Manuten'#231#227'o de Bairros'
  ClientHeight = 341
  ClientWidth = 487
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
    Left = 32
    Top = 140
    Width = 37
    Height = 13
    Caption = 'Codigo:'
  end
  object Label2: TLabel
    Left = 32
    Top = 167
    Width = 31
    Height = 13
    Caption = 'Nome:'
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 93
    Width = 240
    Height = 25
    DataSource = dm_dados.ds_bairro
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
    Left = 75
    Top = 137
    Width = 54
    Height = 21
    DataField = 'BAIRRO_CODIGO'
    DataSource = dm_dados.ds_bairro
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 75
    Top = 164
    Width = 121
    Height = 21
    DataField = 'BAIRRO_NOME'
    DataSource = dm_dados.ds_bairro
    TabOrder = 2
  end
  object RadioGroup1: TRadioGroup
    Left = 304
    Top = 32
    Width = 165
    Height = 64
    Caption = 'Ordem de VIZUALIZA'#199#195'O'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Codigo '
      'Nome')
    TabOrder = 3
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 284
    Top = 117
    Width = 185
    Height = 68
    Caption = 'Consulta via Sele'#231#227'o'
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 292
    Top = 144
    Width = 165
    Height = 21
    KeyField = 'BAIRRO_CODIGO'
    ListField = 'BAIRRO_NOME'
    ListSource = dm_dados.ds_bairro
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 205
    Width = 445
    Height = 120
    DataSource = dm_dados.ds_bairro
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'BAIRRO_CODIGO'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO_NOME'
        Title.Caption = 'Nome'
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 32
    Top = 21
    Width = 240
    Height = 52
    Caption = 'Consulta via Digita'#231#227'o'
    TabOrder = 7
    object Edit2: TEdit
      Left = 16
      Top = 19
      Width = 209
      Height = 21
      OEMConvert = True
      TabOrder = 0
      OnChange = Edit2Change
    end
  end
  object tblAuxBairro: TIBTable
    Database = dm_dados.base_dados_estoque
    Transaction = dm_dados.IBTrans
    BufferChunks = 1000
    CachedUpdates = False
    FieldDefs = <
      item
        Name = 'BAIRRO_CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'BAIRRO_NOME'
        Attributes = [faRequired]
        DataType = ftString
        Size = 30
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
    TableName = 'BAIRRO'
    UniDirectional = False
    Left = 216
    Top = 133
    object tblAuxBairroBAIRRO_CODIGO: TIntegerField
      FieldName = 'BAIRRO_CODIGO'
      Required = True
    end
  end
end
