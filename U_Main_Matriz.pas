unit U_Main_Matriz;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Tabs, ComCtrls, Menus, Buttons, Grids;

type
  TForm1 = class(TForm)
    nb_Main: TNotebook;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    MainMenu1: TMainMenu;
    Arquivo1: TMenuItem;
    Sair1: TMenuItem;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Bevel1: TBevel;
    Panel3: TPanel;
    SpeedButton1: TSpeedButton;
    tbs_Mat_Inv: TTabSet;
    nb_Mat_Inv: TNotebook;
    Label1: TLabel;
    sgrid_Mat_Inv_Normal: TStringGrid;
    sgrid_Mat_Inv_Ident: TStringGrid;
    sgrid_Mat_Inv_Inv: TStringGrid;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    pnl_Mat_Inv_Gauss: TPanel;
    Label2: TLabel;
    cbb_Mat_Inv_Gauss: TComboBox;
    procedure tbs_Mat_InvChange(Sender: TObject; NewTab: Integer;
      var AllowChange: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cbb_Mat_Inv_GaussChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    procedure CriarIdentidade(Ordem: Integer);  // Preencher Matriz Identidade
    procedure TamanhoCelula(Ordem: Integer); // Calcula o tamanho das celulas conforme o valor da ordem.

  public
    { Public declarations }

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CriarIdentidade(Ordem: Integer);  // Preencher Matriz Identidade
var
  i, j: Integer;
begin
  for i := 0 to Ordem do
    for j := 0 to Ordem do
      begin
        if (i <> j) then
          sgrid_Mat_Inv_Ident.Cells[i, j] := '0'
        else
          sgrid_Mat_Inv_Ident.Cells[i, j] := '1';
      end;
end;




procedure TForm1.TamanhoCelula(Ordem: Integer); // Calcula o tamanho das celulas conforme o valor da ordem.
var
  H, W, nH, nW: Real;
begin
  H := sgrid_Mat_Inv_Normal.Height;
  W := sgrid_Mat_Inv_Normal.Width;
  nH := (H / Ordem);
  nW := (W / Ordem);

  sgrid_Mat_Inv_Normal.DefaultRowHeight := Round(nH - 2);
  sgrid_Mat_Inv_Normal.DefaultColWidth := Round(nW - 2);
  sgrid_Mat_Inv_Normal.ColCount := Ordem;
  sgrid_Mat_Inv_Normal.RowCount := Ordem;

  sgrid_Mat_Inv_Ident.DefaultRowHeight := Round(nH - 2);
  sgrid_Mat_Inv_Ident.DefaultColWidth := Round(nW - 2);
  sgrid_Mat_Inv_Ident.ColCount := Ordem;
  sgrid_Mat_Inv_Ident.RowCount := Ordem;

  sgrid_Mat_Inv_Inv.DefaultRowHeight := Round(nH - 2);
  sgrid_Mat_Inv_Inv.DefaultColWidth := Round(nW - 2);
  sgrid_Mat_Inv_Inv.ColCount := Ordem;
  sgrid_Mat_Inv_Inv.RowCount := Ordem;

  case Ordem of
    0 : begin sgrid_Mat_Inv_Normal.Font.Size := 28;
              sgrid_Mat_Inv_Ident.Font.Size := 28;
              sgrid_Mat_Inv_Inv.Font.Size := 28;
        end;
    1 : begin sgrid_Mat_Inv_Normal.Font.Size := 24;
              sgrid_Mat_Inv_Ident.Font.Size := 24;
              sgrid_Mat_Inv_Inv.Font.Size := 24;
        end;
    2 : begin sgrid_Mat_Inv_Normal.Font.Size := 20;
              sgrid_Mat_Inv_Ident.Font.Size := 20;
              sgrid_Mat_Inv_Inv.Font.Size := 20;
        end;
    3 : begin sgrid_Mat_Inv_Normal.Font.Size := 16;
              sgrid_Mat_Inv_Ident.Font.Size := 16;
              sgrid_Mat_Inv_Inv.Font.Size := 16;
        end;
    4 : begin sgrid_Mat_Inv_Normal.Font.Size := 14;
              sgrid_Mat_Inv_Ident.Font.Size := 14;
              sgrid_Mat_Inv_Inv.Font.Size := 14;
        end;
    5 : begin sgrid_Mat_Inv_Normal.Font.Size := 8;
              sgrid_Mat_Inv_Ident.Font.Size := 8;
              sgrid_Mat_Inv_Inv.Font.Size := 8;
        end;
    6 : begin sgrid_Mat_Inv_Normal.Font.Size := 6;
              sgrid_Mat_Inv_Ident.Font.Size := 6;
              sgrid_Mat_Inv_Inv.Font.Size := 6;
        end;
    7 : begin sgrid_Mat_Inv_Normal.Font.Size := 4;
              sgrid_Mat_Inv_Ident.Font.Size := 4;
              sgrid_Mat_Inv_Inv.Font.Size := 4;
        end;
  end;
end;




procedure TForm1.tbs_Mat_InvChange(Sender: TObject; NewTab: Integer;
  var AllowChange: Boolean);
begin
  nb_Mat_Inv.PageIndex := NewTab;
end;




procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  nb_Main.PageIndex := 1;
end;




procedure TForm1.cbb_Mat_Inv_GaussChange(Sender: TObject);
begin
  case cbb_Mat_Inv_Gauss.ItemIndex of
    0 :  begin CriarIdentidade(2);
               TamanhoCelula(2);
         end;
    1 :  begin CriarIdentidade(3);
               TamanhoCelula(3);
         end;
    2 :  begin CriarIdentidade(4);
               TamanhoCelula(4);
         end;
    3 :  begin CriarIdentidade(5);
               TamanhoCelula(5);
         end;
    4 :  begin CriarIdentidade(6);
               TamanhoCelula(6);
         end;
    5 :  begin CriarIdentidade(7);
               TamanhoCelula(7);
         end;
    6 :  begin CriarIdentidade(8);
               TamanhoCelula(8);
         end;
    7 :  begin CriarIdentidade(9);
               TamanhoCelula(9);
         end;
  end;
end;




procedure TForm1.Button1Click(Sender: TObject);
var
  i, j: Integer;
begin
  for i := 0 to sgrid_Mat_Inv_Normal.RowCount - 1 do
    begin
      for j := 0 to sgrid_Mat_Inv_Normal.ColCount - 1 do
        begin
          sgrid_Mat_Inv_Inv.Cells[i, j] := sgrid_Mat_Inv_Normal.Cells[i, j];
        end;
    end;
end;

end.
