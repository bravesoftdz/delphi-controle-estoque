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
