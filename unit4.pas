unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, md5;

type

  { TPasswordModifyForm }

  TPasswordModifyForm = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
    procedure passwdmd5(md5 : string);
  end;

var
  PasswordModifyForm: TPasswordModifyForm;

implementation

uses unit2;

{$R *.lfm}

{ TPasswordModifyForm }

procedure TPasswordModifyForm.FormCreate(Sender: TObject);
begin

end;

procedure TPasswordModifyForm.FormShow(Sender: TObject);
begin
  edit1.text := '';
  edit2.text := '';
end;

procedure TPasswordModifyForm.Button1Click(Sender: TObject);
begin
  if md5print(md5string(edit1.Text)) = passwordmd5 then
  begin
    passwordmd5 := md5print(md5string(edit2.Text));
    PasswordModifyForm.Close;
  end
  else
    ShowMessage('密码错误，请重试。');
end;

procedure TPasswordModifyForm.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
end;

procedure TPasswordModifyForm.passwdmd5(md5 : string);
begin
   passwordmd5 := md5;
end;

end.
