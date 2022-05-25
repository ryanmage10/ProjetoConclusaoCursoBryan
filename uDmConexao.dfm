object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 150
  Width = 215
  object SQLConBanco: TSQLConnection
    ConnectionName = 'ConexaoBanco'
    DriverName = 'Sqlite'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Sqlite'
      'DriverUnit=Data.DbxSqlite'
      
        'DriverPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver270.bp' +
        'l'
      
        'MetaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqlite' +
        'Driver270.bpl'
      'FailIfMissing=True'
      
        'Database=C:\Users\Bryan\Documents\GitHub\ProjetoConclusaoCursoBr' +
        'yan\PROJETOPEC1.db'
      'HostName=bryan'
      'User_Name=sysdba'
      'Password=masterkey'
      'DelegateConnection=DBXTrace'
      
        'DBXTrace.TraceFlags=PARAMETER;ERROR;EXECUTE;COMMAND;CONNECT;TRAN' +
        'SACT;BLOB;MISC;VENDOR;READER;DRIVER_LOAD;METADATA'
      'DBXTrace.DriverUnit=Data.DBXTrace'
      'DBXTrace.DelegateDriver=True'
      'DBXTrace.DriverName=DBXTrace'
      
        'DBXTrace.DriverPackageLoader=TDBXTraceDriverLoader,DBXCommonDriv' +
        'er270.bpl'
      
        'DBXTrace.DriverAssemblyLoader=Borland.Data.TDBXTraceDriverLoader' +
        ',Borland.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,P' +
        'ublicKeyToken=91d62ebb5b0d1b1b'
      
        'ConnectionString=DriverName=Sqlite,DriverUnit=Data.DbxSqlite,Dri' +
        'verPackageLoader=TDBXSqliteDriverLoader,DBXSqliteDriver270.bpl,M' +
        'etaDataPackageLoader=TDBXSqliteMetaDataCommandFactory,DbxSqliteD' +
        'river270.bpl,FailIfMissing=True,Database=C:\Users\Bryan\Desktop\' +
        'PROJETOPEC1.db,HostName=bryan,User_Name=sysdba,Password=masterke' +
        'y,DelegateConnection=DBXTrace,DBXTrace.TraceFlags=PARAMETER;ERRO' +
        'R;EXECUTE;COMMAND;CONNECT;TRANSACT;BLOB;MISC;VENDOR;READER;DRIVE' +
        'R_LOAD;METADATA,DBXTrace.DriverUnit=Data.DBXTrace,DBXTrace.Deleg' +
        'ateDriver=True,DBXTrace.DriverName=DBXTrace,DBXTrace.DriverPacka' +
        'geLoader=TDBXTraceDriverLoader,DBXCommonDriver270.bpl,DBXTrace.D' +
        'riverAssemblyLoader=Borland.Data.TDBXTraceDriverLoader,Borland.D' +
        'ata.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicKeyTo' +
        'ken=91d62ebb5b0d1b1b')
    Left = 24
    Top = 24
  end
end
