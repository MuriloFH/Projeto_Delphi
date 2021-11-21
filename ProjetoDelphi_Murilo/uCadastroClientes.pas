unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons;

type
  TfrmCadastroCliente = class(TForm)
    btnGravar: TButton;
    btnProximo_dado: TButton;
    btnAnterior_dado: TButton;
    DBGrid1: TDBGrid;
    btnExcluir: TButton;
    DataSource_Clientes: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    edtQuantidadeCliente: TLabeledEdit;
    btnNovo: TButton;
    btnCancelar: TBitBtn;
    procedure FormShow(Sender: TObject);
    //procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource_ClientesStateChange(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAnterior_dadoClick(Sender: TObject);
    procedure btnProximo_dadoClick(Sender: TObject);
  private
    { Private declarations }
    procedure QuantidadeCliente;
  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

uses uBancoDados, uCadastroCidades;


//buttons
procedure TfrmCadastroCliente.btnAnterior_dadoClick(Sender: TObject);
begin
  DataSource_Clientes.DataSet.Prior;
end;

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
   DataSource_Clientes.DataSet.Cancel;
end;

procedure TfrmCadastroCliente.btnExcluirClick(Sender: TObject);
begin
if (Application.MessageBox('Deseja excluir?','Aviso',MB_ICONQUESTION+MB_YESNO)= idNo) then
    Exit;

  DataSource_Clientes. DataSet.Delete;
  QuantidadeCliente;
end;

procedure TfrmCadastroCliente.btnGravarClick(Sender: TObject);
begin
  DataSource_Clientes.DataSet.Post;
end;

procedure TfrmCadastroCliente.btnNovoClick(Sender: TObject);
begin
  DataSource_Clientes.DataSet.Append;
  DBEdit1.SetFocus;
end;
procedure TfrmCadastroCliente.btnProximo_dadoClick(Sender: TObject);
begin
  //n�o est� funcionando o bot�o next
  DataSource_Clientes.DataSet.Next;
end;

//buttons


//atualiza a quantidade
procedure TfrmCadastroCliente.DataSource_ClientesStateChange(Sender: TObject);
begin
if DataSource_Clientes.State in [dsBrowse] then
    QuantidadeCliente;

end;


//executa a procedure quando o form � criado
procedure TfrmCadastroCliente.FormShow(Sender: TObject);
begin
QuantidadeCliente; //aqui est� funcionando
end;

//mostra no edit a quantidade de cliente
procedure TfrmCadastroCliente.QuantidadeCliente;
begin
  edtQuantidadeCliente.Text:=IntToStr(DataModule2.QuantidadeClientes);
end;

end.
