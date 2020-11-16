unit ormbr.dependencies.command.dbebr;

interface

uses
  ormbr.dependencies.interfaces,
  ormbr.dependencies.command.base,
  System.StrUtils,
  System.SysUtils;

type TORMBrDependenciesCommandDBEBr = class(TORMBrDependenciesCommandBase, IORMBrDependenciesCommand)

  private
    FTag: string;

  protected
    function GetPath: String; override;
    function UrlDownloadFile: string; override;
    function ZipFileName: string; override;

  public
    constructor create(ATag: String);
    class function New(ATag: String): IORMBrDependenciesCommand;
    destructor Destroy; override;
end;

implementation

{ TORMBrDependenciesCommandDBEBr }

constructor TORMBrDependenciesCommandDBEBr.create(ATag: String);
begin
  FTag := ATag;
end;

destructor TORMBrDependenciesCommandDBEBr.Destroy;
begin

  inherited;
end;

class function TORMBrDependenciesCommandDBEBr.New(ATag: String): IORMBrDependenciesCommand;
begin
  result := Self.create(ATag);
end;

function TORMBrDependenciesCommandDBEBr.GetPath: String;
begin
  result := ExtractFilePath(GetModuleName(HInstance)) +
    'Source\DBEBr\';

  ForceDirectories(result);
end;

function TORMBrDependenciesCommandDBEBr.UrlDownloadFile: string;
var
  version: string;
begin
  version := IfThen(FTag.IsEmpty, 'master', FTag);

  result := Format('https://bitbucket.org/isaquepinheiro/dbebr/get/%s.zip',
    [version])
end;

function TORMBrDependenciesCommandDBEBr.ZipFileName: string;
begin
  result := GetPath + 'dbebr.zip';

  ForceDirectories(ExtractFilePath(result));
end;

end.
