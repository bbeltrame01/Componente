unit ufrComponentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uProperEdit;

type
  TForm1 = class(TForm)
    labTexto: TLabel;
    edtTexto: TProperEdit;
    labResultado: TLabel;
    edtResultado: TEdit;
    btnResultado: TButton;
    procedure btnResultadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnResultadoClick(Sender: TObject);
begin
  edtResultado.Text := edtTexto.FormatString(edtTexto.Text);
end;

end.
