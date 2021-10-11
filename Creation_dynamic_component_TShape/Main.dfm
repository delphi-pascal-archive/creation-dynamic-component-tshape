object Form1: TForm1
  Left = 223
  Top = 133
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Creation dynamic component TShape'
  ClientHeight = 337
  ClientWidth = 498
  Color = clBtnFace
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnDragDrop = FormDragDrop
  OnDragOver = FormDragOver
  OnMouseDown = FormMouseDown
  OnResize = FormResize
  PixelsPerInch = 120
  TextHeight = 17
  object Label1: TLabel
    Left = 264
    Top = 8
    Width = 213
    Height = 17
    Caption = 'Click on "Create" to create a shape'
  end
  object Label2: TLabel
    Left = 264
    Top = 32
    Width = 205
    Height = 17
    Caption = 'Click on shape to use it properties'
  end
  object Button1: TButton
    Left = 8
    Top = 304
    Width = 121
    Height = 25
    Caption = 'Create'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 136
    Top = 304
    Width = 121
    Height = 25
    Caption = 'List'
    TabOrder = 1
    OnClick = Button2Click
  end
  object ListView1: TListView
    Left = 264
    Top = 56
    Width = 225
    Height = 273
    Columns = <
      item
        Caption = 'Cop'
        Width = 222
      end>
    TabOrder = 2
    ViewStyle = vsList
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 8
    object Propriter1: TMenuItem
      Caption = 'Proprietes...'
      OnClick = Propriter1Click
    end
    object Supprimer1: TMenuItem
      Caption = 'Delete'
      OnClick = Supprimer1Click
    end
  end
end
