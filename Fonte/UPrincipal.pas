unit UPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.ComCtrls;

type
  TfmPrincipal = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Consultas1: TMenuItem;
    Relatrio1: TMenuItem;
    Sair1: TMenuItem;
    Clientes1: TMenuItem;
    Fornecedores1: TMenuItem;
    Cidades1: TMenuItem;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button2: TButton;
    Ba1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Ba1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

uses USobre, UCidade, UBairro, UCliente;

{$R *.dfm}

procedure TfmPrincipal.Ba1Click(Sender: TObject);
var bairros:TfmBairro;
begin
   bairros:=TfmBairro.create(self);
   bairros.ShowModal;
end;

procedure TfmPrincipal.Button3Click(Sender: TObject);
var cidades:TfmCidade;
begin
    cidades:=TfmCidade.create(self);
    cidades.ShowModal;
end;

procedure TfmPrincipal.Cidades1Click(Sender: TObject);
var cidades:TfmCidade;
begin
    cidades:=TfmCidade.create(self);
    cidades.ShowModal;
end;

procedure TfmPrincipal.Clientes1Click(Sender: TObject);
var clientes:TfmCliente;
begin
    clientes:=TfmCliente.Create(self);
    clientes.ShowModal;
end;

procedure TfmPrincipal.Sair1Click(Sender: TObject);
var sobre:TfmSobre;
begin
    sobre:=Tfmsobre.create(self);
    sobre.showModal;
end;

procedure TfmPrincipal.Timer1Timer(Sender: TObject);
begin
statusbar1.panels[2].Text:= 'Hora.: '+ timetostr(time);
statusbar1.panels[3].Text:= 'Data.: '+ datetostr(date);
end;

end.
