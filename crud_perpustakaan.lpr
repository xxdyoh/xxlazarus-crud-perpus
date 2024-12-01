program crud_perpustakaan;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}
  cthreads,
  {$ENDIF}
  {$IFDEF HASAMIGA}
  athreads,
  {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, umenu, ulogin, uprogrammer, ubuku
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(Tfmenu, fmenu);
  Application.CreateForm(Tflogin, flogin);
  Application.CreateForm(Tfprogrammer, fprogrammer);
  Application.CreateForm(Tfbuku, fbuku);
  Application.Run;
end.

