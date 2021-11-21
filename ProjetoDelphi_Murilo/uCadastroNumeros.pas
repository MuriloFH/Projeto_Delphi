unit uCadastroNumeros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TfrmCadastrosNumeros = class(TForm)
    btnGravar: TButton;
    btnExcluir: TButton;
    btnAnterior_dado: TButton;
    btnProximo_dado: TButton;
    DBGrid1: TDBGrid;
    edtQuantidadeCadastro: TLabeledEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource_Numeros: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    edtCredito: TDBEdit;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    edtValorMedio: TLabeledEdit;
    btnNovo: TButton;
    btnCancelar: TButton;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAnterior_dadoClick(Sender: TObject);
    procedure btnProximo_dadoClick(Sender: TObject);
    procedure DataSource_NumerosStateChange(Sender: TObject);
  private
    { Private declarations }
    procedure CalculaTotais;
    procedure QuantidadeCadastros;
    procedure CalculaMedia;
  public
    { Public declarations }
  end;

var
  frmCadastrosNumeros: TfrmCadastrosNumeros;

implementation

{$R *.dfm}

uses
  uCadastroCidades, uBancoDados;


//buttons
procedure TfrmCadastrosNumeros.btnAnterior_dadoClick(Sender: TObject);
begin
  DataSource_Numeros.DataSet.Prior;
end;

procedure TfrmCadastrosNumeros.btnCancelarClick(Sender: TObject);
begin
  DataSource_Numeros.DataSet.Cancel;
end;

procedure TfrmCadastrosNumeros.btnExcluirClick(Sender: TObject);
begin
if (Application.MessageBox('Deseja excluir?','Aviso',MB_ICONQUESTION+MB_YESNO)= idNo) then
    Exit;

  DataSource_Numeros.DataSet.Delete;
  //CalculaTotais;
  QuantidadeCadastros;
end;

procedure TfrmCadastrosNumeros.btnGravarClick(Sender: TObject);
begin
  DataSource_Numeros.DataSet.Post;
end;

procedure TfrmCadastrosNumeros.btnNovoClick(Sender: TObject);
begin
  DataSource_Numeros.DataSet.Append;
  DBEdit1.SetFocus;
end;
procedure TfrmCadastrosNumeros.btnProximo_dadoClick(Sender: TObject);
begin
  //n�o est� funcionando o bot�o next
  DataSource_Numeros.DataSet.Next;
end;

//buttons

//procedure de calculo medio de mensalidade
procedure TfrmCadastrosNumeros.CalculaMedia;
begin
  edtValorMedio.Text:=FloatToStr(DataModule2.CalculaMedia);
end;


//procedure de calculo total de mensalidade
procedure TfrmCadastrosNumeros.CalculaTotais;
begin
  try
    edtCredito.Text:= Format('%15.2m', [DataModule2.CalculaTotal]);
  except
    on e:Exception do
      edtCredito.Text:='Erro!';
  end;
end;


//procedure para atualizar o valor das outras procedures que puxam informa��o do banco
procedure TfrmCadastrosNumeros.DataSource_NumerosStateChange(Sender: TObject);
begin
  if DataSource_Numeros.State in [dsBrowse] then
    QuantidadeCadastros;
    //CalculaTotais; n�o est� funcionado essa function, consequentimente a media tbm n�o
    //CalculaMedia;
end;


//executa a procedure quando o form � criado
procedure TfrmCadastrosNumeros.FormShow(Sender: TObject);
begin
  CalculaTotais;
  QuantidadeCadastros;
end;


//procedure de quantidade de cadastro
procedure TfrmCadastrosNumeros.QuantidadeCadastros;
begin
  edtQuantidadeCadastro.Text:=IntToStr(DataModule2.CalculaQuantidade);
end;

end.
