unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, IBX.IBCustomDataSet,
  IBX.IBTable;

type
  TfmCliente = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    edit1: TEdit;
    tblAuxCliente: TIBTable;
    tblAuxClienteCLI_CODIGO: TIntegerField;
    tblAuxClienteCLI_NOME: TIBStringField;
    tblAuxClienteCLI_LOGRADOURO: TIntegerField;
    tblAuxClienteCLI_NUMERO: TIBStringField;
    tblAuxClienteCLI_BAIRRO: TIntegerField;
    tblAuxClienteCLI_CIDADE: TIntegerField;
    tblAuxClienteCLI_CEP: TIBStringField;
    tblAuxClienteCLI_DATANASC: TDateTimeField;
    tblAuxClienteCLI_COMPLEMENTO: TIBStringField;
    tblAuxClienteCLI_FOTO: TIBStringField;
    tblAuxClienteCLI_CPF: TIBStringField;
    tblAuxClienteCLI_RG: TIBStringField;
    tblAuxClienteCLI_FONECOM: TIBStringField;
    tblAuxClienteCLI_FONECEL: TIBStringField;
    tblAuxClienteCLI_OBS: TIBStringField;
    tblAuxClientePES_EMAIL: TIBStringField;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    DBEdit8: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmCliente: TfmCliente;

implementation

{$R *.dfm}

uses UDM_dados;

procedure TfmCliente.FormShow(Sender: TObject);
begin

 dm_dados.tblCliente.Open;

end;

procedure TfmCliente.RadioGroup1Click(Sender: TObject);
begin
      case RadioGroup1.itemindex of
      0:dm_dados.tblCliente.IndexName:='cli_indcod';
      1:dm_dados.tblCliente.IndexName:='cli_indnome';

      end;

end;

procedure TfmCliente.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var ultcod:Integer;
begin
  if dm_dados.dsCliente.State in [dsInsert] then
  Begin
      tblAuxCliente.Open;
      tblAuxCliente.last;
      ultcod:=tblAuxClienteCLI_CODIGO.value+1;
      dm_dados.tblClienteCLI_CODIGO.Value:=ultcod;
      tblAuxCliente.Close;
      dbedit2.SetFocus;
  end;
end;

procedure TfmCliente.Edit1Change(Sender: TObject);
begin
   dm_dados.tblCliente.Locate('cli_nome',edit1.text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfmCliente.FormClose(Sender: TObject; var Action: TCloseAction);

begin
 dm_dados.tblCliente.Close;
end;



end.
