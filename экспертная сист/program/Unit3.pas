unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit4: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
 uses Unit2;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  assignfile(w,'sys.dat');
      reset(w);
      seek(w,filesize(w));

      f.name:=Edit1.Text;
      f.belonging:=Edit2.Text;
      f.sort:=Edit3.Text;
      write(w,f);
      closefile(w);
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
      
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
      assignfile(w,'sys.dat');
      rEWRITE(w);
       closefile(w);
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
assignfile(w,'sys.dat');
      reset(w);
seek(w,StrToInt(Edit4.Text)-1);
      read(w,f);
      Edit1.Text:= f.name;
      Edit2.Text:=f.belonging;
      Edit3.Text:=f.sort;
      closefile(w);
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
assignfile(w,'sys.dat');
      reset(w);
seek(w,StrToInt(Edit4.Text)-1);
f.name:=Edit1.Text;
      f.belonging:=Edit2.Text;
      f.sort:=Edit3.Text;
      write(w,f);
      closefile(w);
      Edit1.Text:='';
      Edit2.Text:='';
      Edit3.Text:='';
end;

end.
