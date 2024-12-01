unit ubuku;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, SQLDB, mysql57conn, Forms, Controls, Graphics, Dialogs,
  StdCtrls, DBGrids;

type

  { Tfbuku }

  Tfbuku = class(TForm)
    bttambah: TButton;
    btubah: TButton;
    bthapus: TButton;
    bttutup: TButton;
    cbjenisbuku: TComboBox;
    dsbuku: TDataSource;
    dbgbuku: TDBGrid;
    edkodebuku: TEdit;
    ednamabuku: TEdit;
    edstokbuku: TEdit;
    edpengarang: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cnbuku: TMySQL57Connection;
    qrbuku: TSQLQuery;
    qraksi: TSQLQuery;
    trbuku: TSQLTransaction;
    procedure FormShow(Sender: TObject);
  private

  public
    procedure AwalForm;
    procedure KoneksiBuku;
    procedure AturDbgBuku;
  end;

var
  fbuku: Tfbuku;

implementation

{$R *.lfm}

{ Tfbuku }
procedure Tfbuku.KoneksiBuku;
begin
  cnbuku.HostName:='localhost';
  cnbuku.UserName:='root';
  cnbuku.Password:='';
  cnbuku.Port:=3306;
  cnbuku.DatabaseName:='crud_perpus';
  cnbuku.Transaction:=trbuku;
  cnbuku.Connected:=true;

  trbuku.DataBase:=cnbuku;
  trbuku.Active:=true;

  qrbuku.Database:=cnbuku;
  qrbuku.Transaction:=trbuku;
  qrbuku.SQL.Clear;
  qrbuku.SQL.Add('Select * from tbuku');
  qrbuku.Active:=true;

  dsbuku.DataSet:=qrbuku;
  dsbuku.Enabled:=true;

  dbgbuku.DataSource:=dsbuku;
end;

procedure Tfbuku.AturDbgBuku;
begin
  dbgbuku.Columns[0].FieldName:='kodebuku';
  dbgbuku.Columns[1].FieldName:='namabuku';
  dbgbuku.Columns[2].FieldName:='jenisbuku';
  dbgbuku.Columns[3].FieldName:='pengarang';
  dbgbuku.Columns[4].FieldName:='stok';
end;

procedure Tfbuku.AwalForm;
begin
  bttambah.Enabled:=true;
  btubah.Enabled:=true;
  bthapus.Enabled:=true;
  bttutup.Enabled:=true;
  bttambah.Caption:='Tambah';
  btubah.Caption:='Ubah';
  bthapus.Caption:='Hapus';
  bttutup.Caption:='Tutup';
  edkodebuku.Text:='';
  ednamabuku.Text:='';
  edstokbuku.Text:='';
  edpengarang.Text:='';
  cbjenisbuku.Text:='';
  edkodebuku.Enabled:=false;
  ednamabuku.Enabled:=false;
  edstokbuku.Enabled:=false;
  edpengarang.Enabled:=false;
  cbjenisbuku.Enabled:=false;
  bttambah.SetFocus;
end;

procedure Tfbuku.FormShow(Sender: TObject);
begin
  KoneksiBuku;
  AwalForm;
end;

end.

