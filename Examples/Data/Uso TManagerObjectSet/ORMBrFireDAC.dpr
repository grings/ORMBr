program ORMBrFireDAC;

uses
  Forms,
  SysUtils,
  uMainFormORM in 'uMainFormORM.pas' {Form3},
  ormbr.model.client in 'ormbr.model.client.pas',
  ormbr.model.detail in 'ormbr.model.detail.pas',
  ormbr.model.lookup in 'ormbr.model.lookup.pas',
  ormbr.model.master in 'ormbr.model.master.pas',
  ormbr.objectset.abstract in '..\..\..\Source\Objectset\ormbr.objectset.abstract.pas',
  ormbr.objectset.adapter in '..\..\..\Source\Objectset\ormbr.objectset.adapter.pas',
  ormbr.objectset.bind in '..\..\..\Source\Objectset\ormbr.objectset.bind.pas',
  ormbr.session.objectset in '..\..\..\Source\Objectset\ormbr.session.objectset.pas',
  ormbr.command.abstract in '..\..\..\Source\Core\ormbr.command.abstract.pas',
  ormbr.command.deleter in '..\..\..\Source\Core\ormbr.command.deleter.pas',
  ormbr.command.factory in '..\..\..\Source\Core\ormbr.command.factory.pas',
  ormbr.command.inserter in '..\..\..\Source\Core\ormbr.command.inserter.pas',
  ormbr.command.selecter in '..\..\..\Source\Core\ormbr.command.selecter.pas',
  ormbr.command.updater in '..\..\..\Source\Core\ormbr.command.updater.pas',
  ormbr.dml.commands in '..\..\..\Source\Core\ormbr.dml.commands.pas',
  ormbr.dml.interfaces in '..\..\..\Source\Core\ormbr.dml.interfaces.pas',
  ormbr.driver.register in '..\..\..\Source\Core\ormbr.driver.register.pas',
  ormbr.encddecd in '..\..\..\Source\Core\ormbr.encddecd.pas',
  ormbr.json in '..\..\..\Source\Core\ormbr.json.pas',
  ormbr.json.utils in '..\..\..\Source\Core\ormbr.json.utils.pas',
  ormbr.mapping.attributes in '..\..\..\Source\Core\ormbr.mapping.attributes.pas',
  ormbr.mapping.classes in '..\..\..\Source\Core\ormbr.mapping.classes.pas',
  ormbr.mapping.exceptions in '..\..\..\Source\Core\ormbr.mapping.exceptions.pas',
  ormbr.mapping.explorer in '..\..\..\Source\Core\ormbr.mapping.explorer.pas',
  ormbr.mapping.explorerstrategy in '..\..\..\Source\Core\ormbr.mapping.explorerstrategy.pas',
  ormbr.mapping.popular in '..\..\..\Source\Core\ormbr.mapping.popular.pas',
  ormbr.mapping.register in '..\..\..\Source\Core\ormbr.mapping.register.pas',
  ormbr.mapping.repository in '..\..\..\Source\Core\ormbr.mapping.repository.pas',
  ormbr.mapping.rttiutils in '..\..\..\Source\Core\ormbr.mapping.rttiutils.pas',
  ormbr.objects.helper in '..\..\..\Source\Core\ormbr.objects.helper.pas',
  ormbr.objects.manager.abstract in '..\..\..\Source\Core\ormbr.objects.manager.abstract.pas',
  ormbr.objects.manager in '..\..\..\Source\Core\ormbr.objects.manager.pas',
  ormbr.rest.json in '..\..\..\Source\Core\ormbr.rest.json.pas',
  ormbr.rtti.helper in '..\..\..\Source\Core\ormbr.rtti.helper.pas',
  ormbr.session.abstract in '..\..\..\Source\Core\ormbr.session.abstract.pas',
  ormbr.types.blob in '..\..\..\Source\Core\ormbr.types.blob.pas',
  ormbr.types.database in '..\..\..\Source\Core\ormbr.types.database.pas',
  ormbr.types.lazy in '..\..\..\Source\Core\ormbr.types.lazy.pas',
  ormbr.types.mapping in '..\..\..\Source\Core\ormbr.types.mapping.pas',
  ormbr.types.nullable in '..\..\..\Source\Core\ormbr.types.nullable.pas',
  ormbr.utils in '..\..\..\Source\Core\ormbr.utils.pas',
  ormbr.form.monitor in '..\..\..\Source\Monitor\ormbr.form.monitor.pas' {CommandMonitor},
  ormbr.objectset.base.adapter in '..\..\..\Source\Objectset\ormbr.objectset.base.adapter.pas',
  ormbr.manager.objectset in '..\..\..\Source\Objectset\ormbr.manager.objectset.pas',
  ormbr.dml.generator.absolutedb in '..\..\..\Source\Core\ormbr.dml.generator.absolutedb.pas',
  ormbr.dml.generator.elevatedb in '..\..\..\Source\Core\ormbr.dml.generator.elevatedb.pas',
  ormbr.dml.generator.firebird in '..\..\..\Source\Core\ormbr.dml.generator.firebird.pas',
  ormbr.dml.generator.interbase in '..\..\..\Source\Core\ormbr.dml.generator.interbase.pas',
  ormbr.dml.generator.mongodb in '..\..\..\Source\Core\ormbr.dml.generator.mongodb.pas',
  ormbr.dml.generator.mssql in '..\..\..\Source\Core\ormbr.dml.generator.mssql.pas',
  ormbr.dml.generator.mysql in '..\..\..\Source\Core\ormbr.dml.generator.mysql.pas',
  ormbr.dml.generator.nexusdb in '..\..\..\Source\Core\ormbr.dml.generator.nexusdb.pas',
  ormbr.dml.generator.nosql in '..\..\..\Source\Core\ormbr.dml.generator.nosql.pas',
  ormbr.dml.generator.oracle in '..\..\..\Source\Core\ormbr.dml.generator.oracle.pas',
  ormbr.dml.generator in '..\..\..\Source\Core\ormbr.dml.generator.pas',
  ormbr.dml.generator.postgresql in '..\..\..\Source\Core\ormbr.dml.generator.postgresql.pas',
  ormbr.dml.generator.sqlite in '..\..\..\Source\Core\ormbr.dml.generator.sqlite.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.