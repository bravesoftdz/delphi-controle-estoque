program Estoque;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {fmPrincipal},
  USobre in 'USobre.pas' {fmSobre},
  UDM_dados in 'UDM_dados.pas' {dm_dados: TDataModule},
  UBairro in 'UBairro.pas' {fmBairro},
  UCliente in 'UCliente.pas' {fmCliente},
  UCidade in 'UCidade.pas' {fmCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfmPrincipal, fmPrincipal);
  Application.CreateForm(Tdm_dados, dm_dados);
  Application.CreateForm(TfmBairro, fmBairro);
  Application.CreateForm(TfmCliente, fmCliente);
  Application.CreateForm(TfmCidade, fmCidade);
  Application.Run;
end.
