unit uTelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Menus;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnCadastroCidades: TButton;
    btnCadastroNumeros: TButton;
    btnCadastroCliente: TButton;
    Label3: TLabel;
    procedure btnCadastroNumerosClick(Sender: TObject);
    procedure btnCadastroClienteClick(Sender: TObject);
    procedure btnCadastroCidadesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uBancoDados, uCadastroCidades, uCadastroClientes, uCadastroNumeros,
  uSplash, uLayout;

procedure TfrmPrincipal.btnCadastroCidadesClick(Sender: TObject);
begin
  frmCadastroCidades.Show;
end;

procedure TfrmPrincipal.btnCadastroClienteClick(Sender: TObject);
begin
  frmCadastroCliente.Show;
end;

procedure TfrmPrincipal.btnCadastroNumerosClick(Sender: TObject);
begin
  frmCadastrosNumeros.Show;
end;

end.
