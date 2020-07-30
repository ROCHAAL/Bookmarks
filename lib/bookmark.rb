require 'pg'

class Bookmark
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname:'bookmark_manager_test')
    else #( connecting PG into our database "bookmark_manager"
      connection = PG.connect(dbname:'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks")#( using SQL in our database,executing SQL in our date database)
    result.map { |bookmark| bookmark['url'] }#( taking the information and interating over it )
  end
end
