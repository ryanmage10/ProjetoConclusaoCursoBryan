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
      'Database=C:\Users\Bryan\Desktop\PROJETOPEC1.db'
      'HostName=bryan'
      'User_Name=sysdba'
      'Password=masterkey')
    Connected = True
    Left = 24
    Top = 24
  end
end
