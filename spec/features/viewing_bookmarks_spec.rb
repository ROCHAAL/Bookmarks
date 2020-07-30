
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')#connecting my database "bookmark_manager_test" database to SQL

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")#To insert how? what is going to happen?
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');") # inserting the  url value into the bookmark.
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.google.com');") #how this happen?

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
