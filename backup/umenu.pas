unit umenu;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus;

type

  { Tfmenu }

  Tfmenu = class(TForm)
    MainMenu1: TMainMenu;
    MainMenu2: TMainMenu;
    miprogrammer2: TMenuItem;
    miabout2: TMenuItem;
    milappeminjaman: TMenuItem;
    milapanggota: TMenuItem;
    milapbuku: TMenuItem;
    milaporan: TMenuItem;
    mipengembalian: TMenuItem;
    mipeminjaman: TMenuItem;
    mitransaksi: TMenuItem;
    mibuku: TMenuItem;
    mianggota: TMenuItem;
    mipetugas: TMenuItem;
    mimaster: TMenuItem;
    mikeluar2: TMenuItem;
    Separator2: TMenuItem;
    milogout2: TMenuItem;
    mifile2: TMenuItem;
    milogin2: TMenuItem;
    miprogrammer: TMenuItem;
    miabout: TMenuItem;
    mikeluar: TMenuItem;
    Separator1: TMenuItem;
    milogout: TMenuItem;
    milogin: TMenuItem;
    mifile: TMenuItem;
    procedure mikeluarClick(Sender: TObject);
    procedure miloginClick(Sender: TObject);
    procedure milogout2Click(Sender: TObject);
    procedure miprogrammerClick(Sender: TObject);
  private

  public

  end;

var
  fmenu: Tfmenu;

implementation

uses
  ulogin, uprogrammer;

{$R *.lfm}

{ Tfmenu }

procedure Tfmenu.miloginClick(Sender: TObject);
begin
  flogin.showmodal;
end;

procedure Tfmenu.milogout2Click(Sender: TObject);
begin
  if MessageDlg('Log Out', 'Yakin akan log out?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  fmenu.menu := fmenu.MainMenu1;
end;

procedure Tfmenu.miprogrammerClick(Sender: TObject);
begin
  fprogrammer.showmodal;
end;

procedure Tfmenu.mikeluarClick(Sender: TObject);
begin
  if MessageDlg('Keluar Aplikasi','Yakin akan keluar dari aplikasi?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  Application.Terminate;
end;

end.

