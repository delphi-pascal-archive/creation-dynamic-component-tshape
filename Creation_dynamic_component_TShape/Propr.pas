unit Propr;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ComCtrls, ExtCtrls, Dialogs;

type
  TPagesDlg = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Coordoner: TTabSheet;
    OKBtn: TButton;
    CancelBtn: TButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ColorDialog1: TColorDialog;
    GroupBox1: TGroupBox;
    Shape1: TShape;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    procedure RadioButton1Click(Sender: TObject);
    procedure OKBtnClick(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  PagesDlg: TPagesDlg;

implementation

{$R *.dfm}

uses Main;

procedure TPagesDlg.ComboBox1Change(Sender: TObject);
begin
  case ComboBox1.ItemIndex of
  0:Shape1.Shape := stCircle;
  1:Shape1.Shape := stEllipse;
  2:Shape1.Shape := stRectangle;
  3:Shape1.Shape := stRoundRect;
  4:Shape1.Shape := stRoundSquare;
  5:Shape1.Shape := stSquare
  end
end;

procedure TPagesDlg.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Edit1.GetTextLen > 0) and (not (key in [#8,'0'..'9'])) then key:=#0
end;

procedure TPagesDlg.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if (Edit1.GetTextLen > 0) and (not (key in [#8,'0'..'9'])) then key:=#0
end;

procedure TPagesDlg.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Edit1.GetTextLen > 0) and (not (key in [#8,'0'..'9'])) then key:=#0
end;

procedure TPagesDlg.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if (Edit1.GetTextLen > 0) and (not (key in [#8,'0'..'9'])) then key:=#0
end;

procedure TPagesDlg.OKBtnClick(Sender: TObject);
begin
  With (Form1.Objet as TShape) do
  begin
    Brush.Color := Shape1.Brush.Color;
    Pen.Color := Shape1.Pen.Color;
    Shape := Shape1.Shape;
    Left := StrToInt(Edit1.Text);
    Top := StrToInt(Edit2.Text);
    Height := StrToInt(Edit3.Text);
    Width := StrToInt(Edit4.Text)
  end;
  Close
end;

procedure TPagesDlg.RadioButton1Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
  begin
    Shape1.Brush.Color := ColorDialog1.Color;
    RadioButton1.Checked := False
  end
end;

procedure TPagesDlg.RadioButton2Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
  begin
    Shape1.Pen.Color := ColorDialog1.Color;
    RadioButton2.Checked := False
  end
end;

end.

