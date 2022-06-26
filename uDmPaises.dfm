object DmPaises: TDmPaises
  OldCreateOrder = False
  Height = 249
  Width = 350
  object sqlPesquisar: TSQLDataSet
    CommandText = 
      'SELECT C.ID, C.CIDADE, E.ESTADO, c.DATE_INSERT  FROM CIDADES as ' +
      'C LEFT JOIN ESTADOS as E ON C.ID_ESTADOS = E.ID WHERE NOME LIKE ' +
      ':NOME'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'NOME'
        ParamType = ptInput
      end>
    Left = 24
    Top = 24
  end
  object sqlInserir: TSQLDataSet
    CommandText = 
      'INSERT INTO PAISES (ID, PAIS, SIGLA, DDI, USER_INSERT,USER_UPDAT' +
      'E, DATE_INSERT, DATE_UPDATE) VALUES (:ID, :NOME, :SIGLA, :DDI, :' +
      'USER_INSERT, :USER_UPDATE, :DATE_INSERT, :DATE_UPDATE)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DDI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USER_INSERT'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'USER_UPDATE'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATE_INSERT'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATE_UPDATE'
        ParamType = ptInput
      end>
    Left = 80
    Top = 24
  end
  object sqlAlterar: TSQLDataSet
    CommandText = 
      'UPDATE PAISES SET  PAIS = :PAIS, SIGLA = :SIGLA, DDI = :DDI, USE' +
      'R_INSERT = :USER_INSERT, USER_UPDATE = :USER_UPDATE, DATE_INSERT' +
      ' = :DATE_INSERT, DATE_UPDATE = :DATE_UPDATE where id = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideMemo
        Name = 'PAIS'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'SIGLA'
        ParamType = ptInput
      end
      item
        DataType = ftWideMemo
        Name = 'DDI'
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
    CommandText = 'DELETE FROM PAISES WHERE ID = :ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 208
    Top = 24
  end
  object sqlRecuperar: TSQLDataSet
    CommandText = 
      'SELECT ID, PAIS, DDI, SIGLA, DATE_UPDATE, DATE_INSERT, USER_INSE' +
      'RT, USER_UPDATE FROM PAISES WHERE ID =:ID'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftWideMemo
        Name = 'ID'
        ParamType = ptInput
      end>
    Left = 280
    Top = 24
  end
end
