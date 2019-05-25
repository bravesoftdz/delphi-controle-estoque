unit UBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, IBX.IBCustomDataSet,
  IBX.IBTable;

type
  TfmBairro = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    DBLookupComboBox1: TDBLookupComboBox;
    tblAuxBairro: TIBTable;
    DBGrid1: TDBGrid;
    tblAuxBairroBAIRRO_CODIGO: TIntegerField;
    GroupBox1: TGroupBox;
    Edit2: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioGroup1Click(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure Edit2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmBairro: TfmBairro;

implementation

{$R *.dfm}

uses UDM_dados;

procedure TfmBairro.FormShow(Sender: TObject);
begin

 dm_dados.tblBairro.Open;

end;

procedure TfmBairro.RadioGroup1Click(Sender: TObject);
begin
      case RadioGroup1.itemindex of
      0:dm_dados.tblBairro.IndexName:='bai_indcod';
      1:dm_dados.tblBairro.IndexName:='bai_indnome';

      end;

end;

procedure TfmBairro.DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
var ultcod:Integer;
begin
  if dm_dados.ds_bairro.State in [dsInsert] then
  Begin
      tblAuxBairro.Open;
      tblAuxBairro.last;
      ultcod:=tblAuxBairrobairro_CODIGO.value+1;
      dm_dados.tblbairrobairro_CODIGO.Value:=ultcod;
      tblAuxBairro.Close;
      dbedit2.SetFocus;
  end;
end;



procedure TfmBairro.Edit2Change(Sender: TObject);
begin
    dm_dados.tblBairro.Locate('bairro_nome',edit2.text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfmBairro.FormClose(Sender: TObject; var Action: TCloseAction);

begin
 dm_dados.tblBairro.Close;
end;



end.
