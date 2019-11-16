require 'dbi'
require 'dbd/mysql'
require 'dbd/pg'

begin
  mysql = DBI.connect("DBI:Mysql:source:localhost", "root", "password")
  postgres = DBI.connect("DBI:Pg:destination:localhost", "deh", "IFSP2011")

  mysql.select_all("SHOW TABLES") do |table|
    next if ['schema_migrations', 'sessions'].include?(table.to_s)
    select = mysql.execute("SELECT * FROM #{table}")
    columns = select.column_names.map { |key| ""#{key}"" }.join(', ')
    placeholders = (['?'] * select.column_names.size).join(', ')
    insert = postgres.prepare("INSERT INTO #{table} (#{columns}) VALUES(#{placeholders})")
    select.each { |row| insert.execute(*row) }
    insert.finish
    end
  rescue DBI::DatabaseError => e
    puts "Error #{e.err}: #{e.errstr}"
  ensure
    mysql.disconnect if mysql
    postgres.disconnect if postgres
end
