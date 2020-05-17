object Form1: TForm1
  Left = 206
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 404
  ClientWidth = 612
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 0
    Width = 612
    Height = 3
    Cursor = crVSplit
    Align = alTop
    Beveled = True
    Color = clWhite
    ParentColor = False
    ResizeStyle = rsNone
  end
  object Splitter2: TSplitter
    Left = 121
    Top = 3
    Width = 3
    Height = 382
    Cursor = crHSplit
    Beveled = True
    Color = clWhite
    ParentColor = False
    ResizeStyle = rsNone
  end
  object Bevel1: TBevel
    Left = 124
    Top = 3
    Width = 488
    Height = 382
    Align = alClient
  end
  object nb_Main: TNotebook
    Left = 124
    Top = 3
    Width = 488
    Height = 382
    Align = alClient
    TabOrder = 0
    object TPage
      Left = 0
      Top = 0
      Caption = 'Default'
    end
    object TPage
      Left = 0
      Top = 0
      Caption = 'Matriz Inversa'
      object tbs_Mat_Inv: TTabSet
        Left = 0
        Top = 361
        Width = 488
        Height = 21
        Align = alBottom
        BackgroundColor = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        SelectedColor = clSilver
        Tabs.Strings = (
          'Forma de Hermite'
          'M'#233'todo de Gauss Jordan')
        TabIndex = 0
        OnChange = tbs_Mat_InvChange
      end
      object nb_Mat_Inv: TNotebook
        Left = 0
        Top = 0
        Width = 488
        Height = 361
        Align = alClient
        TabOrder = 1
        object TPage
          Left = 0
          Top = 0
          Caption = 'Hermite'
          object Label1: TLabel
            Left = 88
            Top = 80
            Width = 36
            Height = 13
            Caption = 'Hermite'
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'Gauss Jordan'
          object Label3: TLabel
            Left = 206
            Top = 224
            Width = 66
            Height = 13
            Caption = 'IDENTIDADE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 54
            Top = 224
            Width = 46
            Height = 13
            Caption = 'NORMAL'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 382
            Top = 224
            Width = 47
            Height = 13
            Caption = 'INVERSA'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object sgrid_Mat_Inv_Normal: TStringGrid
            Left = 8
            Top = 64
            Width = 153
            Height = 153
            ColCount = 1
            DefaultColWidth = 20
            DefaultRowHeight = 20
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goEditing, goTabs]
            ScrollBars = ssNone
            TabOrder = 0
          end
          object sgrid_Mat_Inv_Ident: TStringGrid
            Left = 168
            Top = 64
            Width = 153
            Height = 153
            ColCount = 1
            DefaultColWidth = 20
            DefaultRowHeight = 20
            Enabled = False
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
            ScrollBars = ssNone
            TabOrder = 1
          end
          object sgrid_Mat_Inv_Inv: TStringGrid
            Left = 328
            Top = 64
            Width = 153
            Height = 153
            ColCount = 1
            DefaultColWidth = 20
            DefaultRowHeight = 20
            Enabled = False
            FixedCols = 0
            RowCount = 1
            FixedRows = 0
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected]
            ScrollBars = ssNone
            TabOrder = 2
          end
          object Button1: TButton
            Left = 120
            Top = 250
            Width = 249
            Height = 25
            Caption = 'Calcular'
            TabOrder = 3
            OnClick = Button1Click
          end
          object pnl_Mat_Inv_Gauss: TPanel
            Left = 0
            Top = 0
            Width = 488
            Height = 41
            Align = alTop
            BevelOuter = bvNone
            Color = clGray
            TabOrder = 4
            object Label2: TLabel
              Left = 16
              Top = 16
              Width = 93
              Height = 13
              Caption = 'Selecione a Ordem:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
            end
            object cbb_Mat_Inv_Gauss: TComboBox
              Left = 112
              Top = 8
              Width = 145
              Height = 21
              ItemHeight = 13
              TabOrder = 0
              OnChange = cbb_Mat_Inv_GaussChange
              Items.Strings = (
                '2 x 2'
                '3 x 3'
                '4 x 4'
                '5 x 5'
                '6 x 6'
                '7 x 7'
                '8 x 8'
                '9 x 9')
            end
          end
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 3
    Width = 121
    Height = 382
    Align = alLeft
    BevelOuter = bvNone
    Color = clSilver
    Constraints.MaxWidth = 121
    Constraints.MinWidth = 121
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 8
      Top = 40
      Width = 105
      Height = 65
      Caption = 'Matriz Inversa'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C8807FF7777777777FF700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 121
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = '-=: MATRIZES :=-'
      Color = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 0
      Top = 29
      Width = 121
      Height = 3
      BevelOuter = bvNone
      Color = clGray
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 385
    Width = 612
    Height = 19
    Color = clSilver
    Panels = <
      item
        Bevel = pbNone
        Text = 'Tipo:'
        Width = 28
      end
      item
        Text = 'Matriz'
        Width = 92
      end
      item
        Bevel = pbNone
        Text = '          Ordem:'
        Width = 73
      end
      item
        Alignment = taCenter
        Text = '2 x 2'
        Width = 50
      end
      item
        Bevel = pbNone
        Text = '          Linha:'
        Width = 64
      end
      item
        Alignment = taCenter
        Text = 'i'
        Width = 50
      end
      item
        Bevel = pbNone
        Text = 'Coluna:'
        Width = 42
      end
      item
        Alignment = taCenter
        Text = 'j'
        Width = 50
      end
      item
        Bevel = pbNone
        Width = 50
      end>
    SimplePanel = False
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 168
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
