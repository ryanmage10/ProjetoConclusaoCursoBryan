object dmEstados: TdmEstados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 185
  Width = 277
  object sqlPesquisar: TSQLDataSet
    CommandText = 
      'SELECT E.ID, E.ESTADO, E.SIGLA, '#13#10'      E.DATE_INSERT, P.PAIS  F' +
      'ROM ESTADOS AS E LEFT JOIN PAISES AS P ON E.ID_PAIS = P.ID'
    MaxBlobSize = -1
    Params = <>
    Left = 24
    Top = 24
  end
  object sqlInserir: TSQLDataSet
    CommandText = 
      'INSERT INTO ESTADOS (ID, ESTADO, SIGLA, ID_PAIS, USER_INSERT,USE' +
      'R_UPDATE, DATE_INSERT, DATE_UPDATE) VALUES (:ID, :NOME, :SIGLA, ' +
      ':ID_PAIS, :USER_INSERT, :USER_UPDATE, :DATE_INSERT, :DATE_UPDATE' +
      ')'
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
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ID_PAIS'
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
    Left = 80
    Top = 24
  end
  object sqlAlterar: TSQLDataSet
    CommandText = 
      'UPDATE ESTADOS SET  ESTADO = :NOME, SIGLA = :SIGLA, ID_PAIS = :I' +
      'D_PAIS, USER_INSERT = :USER_INSERT, USER_UPDATE = :USER_UPDATE, ' +
      'DATE_INSERT = :DATE_INSERT, DATE_UPDATE = :DATE_UPDATE where id ' +
      '= :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideMemo
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'ID_PAIS'
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
    Left = 144
    Top = 24
  end
  object sqlExcluir: TSQLDataSet
    CommandText = 'DELETE FROM ESTADOS WHERE ID = :ID;'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 215
    Top = 24
  end
  object dspEstados: TDataSetProvider
    DataSet = sqlPesquisar
    Left = 24
    Top = 80
  end
  object cdsEstados: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspEstados'
    Left = 24
    Top = 129
  end
  object sqlRecuperar: TSQLDataSet
    CommandText = 'SELECT * FROM ESTADOS WHERE ID =:ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideMemo
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 221
    Top = 88
  end
end
