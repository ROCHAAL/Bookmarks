require 'pg'

def  setup_test_database
  p "Settinp up test database..."
  connection = PG.connect(dbname: 'bookmark_manager_test')# connecting to the test database.
  connection.exec("TRUNCATE bookmarks;")# clear anything on the table in the dataase

end
