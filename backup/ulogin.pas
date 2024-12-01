unit ulogin;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { Tflogin }

  Tflogin = class(TForm)
    btbatal: TButton;
    btlogin: TButton;
    edusername: TEdit;
    edpassword: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btbatalClick(Sender: TObject);
    procedure btloginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public
    procedure AwalForm;
  end;

var
  flogin: Tflogin;

implementation

uses
  umenu;

{$R *.lfm}

{ Tflogin }
procedure Tflogin.AwalForm;
begin
  edusername.Text := '';
  edpassword.Text := '';
  edusername.SetFocus;
end;

procedure Tflogin.btbatalClick(Sender: TObject);
begin
  close;
end;

procedure Tflogin.btloginClick(Sender: TObject);
begin
  if (edusername.Text = 'xxdyoh') and (edpassword.Text = '123') then
  begin
    ShowMessage('Log In berhasil.');
    fmenu.Menu := fmenu.MainMenu2;
    Close;
  end;
  else
  begin
    ShowMessage('Unername atau password anda salah!');
  end;
end;

procedure Tflogin.FormShow(Sender: TObject);
begin
  AwalForm;
end;

end.

