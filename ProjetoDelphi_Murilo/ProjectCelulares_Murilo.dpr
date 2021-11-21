program ProjectCelulares_Murilo;

uses
  Vcl.Forms,
  uTelaPrincipal in 'uTelaPrincipal.pas' {frmPrincipal},
  uBancoDados in 'uBancoDados.pas' {DataModule2: TDataModule},
  uCadastroNumeros in 'uCadastroNumeros.pas' {frmCadastrosNumeros},
  uCadastroClientes in 'uCadastroClientes.pas' {frmCadastroCliente},
  uCadastroCidades in 'uCadastroCidades.pas' {frmCadastroCidades},
  uSplash in 'uSplash.pas' {frmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TfrmCadastrosNumeros, frmCadastrosNumeros);
  Application.CreateForm(TfrmCadastroCliente, frmCadastroCliente);
  Application.CreateForm(TfrmCadastroCidades, frmCadastroCidades);
  Application.Run;
end.
