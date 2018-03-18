program project1;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms,
  Unit1,
  Unit3,
  Unit2,
  Unit4,
  Unit5,
  Unit6,
  Unit7, Unit8 { you can add units after this };

{$R *.res}

begin
  Application.Title := '随机点名器';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TLoadingForm, LoadingForm);
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
