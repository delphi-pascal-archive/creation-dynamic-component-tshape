unit Main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Menus, ComCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    PopupMenu1: TPopupMenu;
    Propriter1: TMenuItem;
    Supprimer1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    ListView1: TListView;
    procedure Button1Click(Sender: TObject);
    procedure FormDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Supprimer1Click(Sender: TObject);
    procedure Propriter1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Déclarations privées }
    procedure ShapeMouseDown(Sender: TObject; Button: TMouseButton;
              Shift: TShiftState; X, Y: Integer);
  public
    { Déclarations publiques }
    Objet: TObject;
  end;

var
  Form1: TForm1;
  n: integer;  

implementation

{$R *.dfm}

uses Propr;

procedure TForm1.ShapeMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Shift = [ssRight] then
  begin
    Form1.PopupMenu := PopupMenu1;
    Objet := Sender;
  end
end;

procedure TForm1.Supprimer1Click(Sender: TObject);
begin
  if Objet <> Nil then Objet.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
const namShape:String = 'Shape';
begin
  //la création du shape avec des proprietes prés initialiser
  inc(n);
  TShape.Create(Self).Name := namShape+inttostr(n);
  with TShape(FindComponent(namshape + IntToStr(n))) do
  begin
    Parent := Form1;
    Height  := 32;
    Width := 32;
    Left := n * 16;
    Top := n * 16;
    DragMode := dmAutomatic;
    Shape := stSquare;
    OnMouseDown := ShapeMouseDown
  end;
  //raffrichissement de la listview
  Button2.Click;
end;

procedure TForm1.Button2Click(Sender: TObject);
var I: Integer; Temp: TComponent; ListItem: TListItem;
begin
  //création d’une liste contenant tout les composents de la form principal
  ListView1.Clear;
  ListView1.ViewStyle := vsList;
  ListItem := ListView1.Items.Add;
  ListItem.Caption := 'Components: ';
  for I := ComponentCount - 1 downto 0 do
  begin
    Temp := Components[I];
    ListItem := ListView1.Items.Add;
    ListItem.Caption := Temp.Name;
  end;
  ListItem.Free;
  ListView1.Visible := True;
end;

procedure TForm1.FormDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  {la formule x - ((Source as TShape).Width div 2) a pour but de focalistion
  toujour le centre de l'objet sur la postion de la sourie }
  (Source as TShape).Left := x - ((Source as TShape).Width div 2);
  (Source as TShape).Top := y - ((Source as TShape).Height div 2)
end;

procedure TForm1.FormDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TShape;
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Form1.PopupMenu := Nil;
  Objet := Nil;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
{
  ListView1.Left := ClientWidth - 186;
  ListView1.Height := ClientHeight - 84;
  Label1.Left := ClientWidth - 186;
  Label2.Left := ClientWidth - 186;
  Button1.Top := ClientHeight - 50;
  Button2.Top := ClientHeight - 50;
}
end;

procedure TForm1.Propriter1Click(Sender: TObject);
begin
  With PagesDlg do
  begin
    Shape1.Shape := (objet as TShape).Shape;
    Shape1.Brush.Color := (objet as TShape).Brush.Color;
    Shape1.Pen.Color := (objet as TShape).Pen.Color;
    case Shape1.Shape of
    stCircle: ComboBox1.ItemIndex := 0;
    stEllipse: ComboBox1.ItemIndex := 1;
    stRectangle: ComboBox1.ItemIndex := 2;
    stRoundRect: ComboBox1.ItemIndex := 3;
    stRoundSquare: ComboBox1.ItemIndex := 4;
    stSquare: ComboBox1.ItemIndex := 5
    end;
    Edit1.Text := IntToStr((Objet as TShape).Left);
    Edit2.Text := IntToStr((Objet as TShape).Top);
    Edit3.Text := IntToStr((Objet as TShape).Height);
    Edit4.Text := IntToStr((Objet as TShape).Width);
    Showmodal;
  end
end;

end.
