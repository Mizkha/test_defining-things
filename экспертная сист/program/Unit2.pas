unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  minerals =record
  name      : String[100];
  belonging : String[100];
  sort      : String[100];
end;
  TForm2 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  w:file of minerals;
  f:minerals;
  i,k:integer;
  s:string;
implementation

{$R *.dfm}
uses Unit3;
procedure TForm2.Button1Click(Sender: TObject);
begin
//Memo1.Lines.Clear;
 assignfile(w,'sys.dat');
      reset(w);
      while not eof(w)  do begin
      read(w,f);
 if (Edit1.Text=f.belonging) and (Edit2.Text=f.sort)
 then begin
 s:='��������������: '+ansistring(f.belonging)+#13#10+
 '������: '+ansistring(f.sort)+#13#10+
 '��������: '+ ansistring(f.name)+#13#10+'';
 Memo1.Lines.Add(s);
 end
 //else
  else begin if (Edit1.Text=f.belonging) and (Edit2.Text='')
  then begin
  s:='��������������: '+ansistring(f.belonging)+#13#10+
 '������: '+ansistring(f.sort)+#13#10+
 '��������: '+ ansistring(f.name)+#13#10+'';
 Memo1.Lines.Add(s);
      end;
  end;
   end;
  closefile(w);
   if (Edit1.Text='') and (Edit2.Text='')
  then   Memo1.Lines.Add('���� ������ �����');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
 Memo1.Clear;
end;

end.
