require "dbi"

class Sql
  attr_accessor :dbConnection, :results, :resultsColumnNames

  def executeQuery(sql_query, server="ksqbptdbdev", database="default_chatham_db")
    @db_connection=DBI.connect("DBI:ODBC:Driver={SQL Server};Server=#{server};Database=#{database}; Trusted_Connection=yes;")
    query = @db_connection.prepare(sql_query)

    query.execute()
    arrNew = Array.new
    arrNew2 = Array.new
    arrNew2 = query.column_names

    while row = query.fetch() do
      arrNew.push row.to_a
    end

    @results = arrNew
    @resultsColumnNames = arrNew2
    @db_connection.disconnect if @db_connection

    return @results
  end
end