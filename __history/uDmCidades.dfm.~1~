object DmCidades: TDmCidades
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 191
  Width = 296
  object sqlPesquisar: TSQLDataSet
    CommandText = 
      'SELECT C.ID, C.NOME AS CIDADE, E.NOME AS ESTADO, c.DATA_INSERT  ' +
      'FROM CIDADES C LEFT JOIN ESTADOS E ON C.ID_ESTADOS = E.ID WHERE ' +
      'CIDADE LIKE :NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.SQLConBanco
    Left = 24
    Top = 24
  end
  object sqlInserir: TSQLDataSet
    CommandText = 
      'INSERT INTO CIDADES (ID,CIDADE, DDD, ID_ESTADOS, USER_INSERT,USE' +
      'R_UPDATE, DATE_INSERT, DATE_UPDATE) VALUES (:ID, :NOME,  :DDD, :' +
      'ID_ESTADO, :USER_INSERT, :USER_UPDATE, :DATE_INSERT, :DATE_UPDAT' +
      'E)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DDD'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_ESTADO'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'USER_INSERT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'USER_UPDATE'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATE_INSERT'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'DATE_UPDATE'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.SQLConBanco
    Left = 80
    Top = 24
  end
  object sqlAlterar: TSQLDataSet
    CommandText = 
      'UPDATE CIDADES SET  CIDADE = :NOME, DDD = :DDD, ID_ESTADOS = :ID' +
      '_ESTADO, USER_INSERT = :USER_INSERT, USER_UPDATE = :USER_UPDATE,' +
      ' DATE_INSERT = :DATE_INSERT, DATE_UPDATE = :DATE_UPDATE where id' +
      ' = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideMemo
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'DDD'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'ID_ESTADO'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'USER_INSERT'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'USER_UPDATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'DATE_INSERT'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'DATE_UPDATE'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.SQLConBanco
    Left = 144
    Top = 24
  end
  object sqlExcluir: TSQLDataSet
    CommandText = 'DELETE FROM CIDADES WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.SQLConBanco
    Left = 223
    Top = 24
  end
  object dspCidades: TDataSetProvider
    DataSet = sqlPesquisar
    Left = 24
    Top = 88
  end
  object cdsCidades: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftWideMemo
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspCidades'
    Left = 24
    Top = 143
  end
  object sqlRecuperar: TSQLDataSet
    CommandText = 'SELECT * FROM CIDADES WHERE ID =:ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    SQLConnection = dmConexao.SQLConBanco
    Left = 224
    Top = 88
  end
end
