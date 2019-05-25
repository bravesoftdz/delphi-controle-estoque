unit UDM_dados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr,
  Data.FMTBcd, Datasnap.Provider, Datasnap.DBClient, IBX.IBCustomDataSet,
  IBX.IBTable, IBX.IBDatabase;

type
  Tdm_dados = class(TDataModule)
    IBTrans: TIBTransaction;
    tbl_cidade: TIBTable;
    tbl_cidadeCID_CODIGO: TIntegerField;
    tbl_cidadeCID_NOME: TIBStringField;
    tbl_cidadeCID_UF: TIBStringField;
    ds_cidade: TDataSource;
    base_dados_estoque: TIBDatabase;
    tblBairro: TIBTable;
    ds_bairro: TDataSource;
    tblBairroBAIRRO_CODIGO: TIntegerField;
    tblBairroBAIRRO_NOME: TIBStringField;
    tblLogradouro: TIBTable;
    dsLogradouro: TDataSource;
    tblLogradouroLOG_CODIGO: TIntegerField;
    tblLogradouroLOG_LOGRADOURO: TIBStringField;
    tblCliente: TIBTable;
    dsCliente: TDataSource;
    tblClienteCLI_CODIGO: TIntegerField;
    tblClienteCLI_NOME: TIBStringField;
    tblClienteCLI_LOGRADOURO: TIntegerField;
    tblClienteCLI_NUMERO: TIBStringField;
    tblClienteCLI_BAIRRO: TIntegerField;
    tblClienteCLI_CIDADE: TIntegerField;
    tblClienteCLI_CEP: TIBStringField;
    tblClienteCLI_DATANASC: TDateTimeField;
    tblClienteCLI_COMPLEMENTO: TIBStringField;
    tblClienteCLI_FOTO: TIBStringField;
    tblClienteCLI_CPF: TIBStringField;
    tblClienteCLI_RG: TIBStringField;
    tblClienteCLI_FONECOM: TIBStringField;
    tblClienteCLI_FONECEL: TIBStringField;
    tblClienteCLI_OBS: TIBStringField;
    tblClientePES_EMAIL: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm_dados: Tdm_dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
