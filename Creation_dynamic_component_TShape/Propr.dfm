object PagesDlg: TPagesDlg
  Left = 614
  Top = 129
  BorderStyle = bsDialog
  Caption = 'Properties'
  ClientHeight = 234
  ClientWidth = 386
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poMainFormCenter
  PixelsPerInch = 120
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 386
    Height = 195
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    ParentColor = True
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 5
      Top = 5
      Width = 376
      Height = 185
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Apperence'
        object Label1: TLabel
          Left = 20
          Top = 14
          Width = 74
          Height = 16
          Caption = 'Shape style:'
        end
        object ComboBox1: TComboBox
          Left = 20
          Top = 37
          Width = 131
          Height = 24
          Style = csDropDownList
          ItemHeight = 16
          ItemIndex = 0
          TabOrder = 0
          Text = 'stCircle'
          OnChange = ComboBox1Change
          Items.Strings = (
            'stCircle'
            'stEllipse'
            'stRectangle'
            'stRoundRect'
            'stRoundSquare'
            'stSquare')
        end
        object RadioButton1: TRadioButton
          Left = 20
          Top = 94
          Width = 139
          Height = 20
          Caption = 'Fon color'
          TabOrder = 1
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 20
          Top = 122
          Width = 139
          Height = 21
          Caption = 'Contur color'
          TabOrder = 2
          OnClick = RadioButton2Click
        end
        object GroupBox1: TGroupBox
          Left = 185
          Top = 10
          Width = 170
          Height = 133
          Caption = ' View '
          TabOrder = 3
          object Shape1: TShape
            Left = 47
            Top = 30
            Width = 80
            Height = 80
            Shape = stSquare
          end
        end
      end
      object Coordoner: TTabSheet
        Caption = 'Parameters'
        object GroupBox2: TGroupBox
          Left = 4
          Top = 23
          Width = 157
          Height = 106
          Caption = ' Coordinates '
          TabOrder = 0
          object Label2: TLabel
            Left = 20
            Top = 30
            Width = 14
            Height = 16
            Caption = 'X :'
          end
          object Label3: TLabel
            Left = 20
            Top = 63
            Width = 15
            Height = 16
            Caption = 'Y :'
          end
          object Edit1: TEdit
            Left = 46
            Top = 26
            Width = 96
            Height = 24
            TabOrder = 0
            OnKeyPress = Edit1KeyPress
          end
          object Edit2: TEdit
            Left = 46
            Top = 59
            Width = 96
            Height = 24
            TabOrder = 1
            OnKeyPress = Edit2KeyPress
          end
        end
        object GroupBox3: TGroupBox
          Left = 167
          Top = 23
          Width = 194
          Height = 106
          Caption = ' Size '
          TabOrder = 1
          object Label4: TLabel
            Left = 20
            Top = 30
            Width = 59
            Height = 16
            Caption = 'Longueur:'
          end
          object Label5: TLabel
            Left = 20
            Top = 63
            Width = 49
            Height = 16
            Caption = 'Largeur:'
          end
          object Edit3: TEdit
            Left = 86
            Top = 26
            Width = 96
            Height = 24
            TabOrder = 0
            OnKeyPress = Edit3KeyPress
          end
          object Edit4: TEdit
            Left = 86
            Top = 59
            Width = 96
            Height = 24
            TabOrder = 1
            OnKeyPress = Edit4KeyPress
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 195
    Width = 386
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object OKBtn: TButton
      Left = 181
      Top = 9
      Width = 92
      Height = 24
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      OnClick = OKBtnClick
    end
    object CancelBtn: TButton
      Left = 279
      Top = 9
      Width = 93
      Height = 24
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object ColorDialog1: TColorDialog
    Left = 368
    Top = 8
  end
end
