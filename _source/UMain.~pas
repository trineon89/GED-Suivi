{ #######################################
  ###            SUIVI GED            ###
  ###           STAUDT JILL           ###
  ###       AUTISME LUXEMBOURG        ###
  ###               2015              ###
  #######################################
}

unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XPMan, StdCtrls, IdBaseComponent, IdNetworkCalculator,
  IdUserAccounts, ExtCtrls, Grids;

type
  TfrmMain = class(TForm)
    Panel1: TPanel;
    XPManifest1: TXPManifest;
    Button1: TButton;
    edtCreation: TEdit;
    edtlastAccess: TEdit;
    edtModification: TEdit;
    creationTime: TLabel;
    lastAccessTime: TLabel;
    lastModificationTime: TLabel;
    dlgOpen: TOpenDialog;
    sg: TStringGrid;
    procedure Button1Click(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    function FileTimeToDateTime(fileTime: TFileTime; var dateTime: TDateTime): boolean;
    function GetFileTimes(const fileName: string; var creationTime, lastAccessTime,
                            lastModificationTime: TDateTime): boolean;
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}
function TfrmMain.FileTimeToDateTime(fileTime: TFileTime; var dateTime: TDateTime): boolean;
var
  sysTime: TSystemTime;
begin
  Result := FileTimeToSystemTime(fileTime, sysTime);
  if Result then
    dateTime := SystemTimeToDateTime(sysTime);
end;

function TfrmMain.GetFileTimes(const fileName: string; var creationTime, lastAccessTime, lastModificationTime: TDateTime): boolean;
var
  fileHandle            : cardinal;
  fsCreationTime        : TFileTime;
  fsLastAccessTime      : TFileTime;
  fsLastModificationTime: TFileTime;
begin
  Result := false;
  fileHandle := CreateFile(PChar(fileName), GENERIC_READ, FILE_SHARE_READ, nil,
    OPEN_EXISTING, 0, 0);
  if fileHandle <> INVALID_HANDLE_VALUE then try
    Result :=
      GetFileTime(fileHandle, @fsCreationTime, @fsLastAccessTime,
         @fsLastModificationTime) and
      FileTimeToDateTime(fsCreationTime, creationTime) and
      FileTimeToDateTime(fsLastAccessTime, lastAccessTime) and
      FileTimeToDateTime(fsLastModificationTime, lastModificationTime);
  finally
    CloseHandle(fileHandle);
  end;
end;

procedure TfrmMain.Button1Click(Sender: TObject);
var creation,access,modification:TDateTime;
begin
  if dlgOpen.Execute then
  begin
    GetFileTimes(dlgOpen.FileName, creation, access, modification);
    edtCreation.Text:=datetostr(creation);
    edtlastAccess.Text:=datetostr(access);
    edtModification.Text:=datetostr(modification);
  end;
end;

end.
