task :get_books => :environment do
  Goodreads::Client.new(:api_key => 'gNh5zqd2UoEjSGbDxhQc3g', :api_secret => 'jbypCJfZEExfPk9P1pOjhfxcV0Tez6j6MwFbGrbso')

  list_of_books = ['blink', 'what the dog saw', 'tipping point']

  list_of_books.each do |book|
    author = GoodreadsAPI.book_by_title(book).authors.author.name
    title = GoodreadsAPI.book_by_title(book).title
    description = GoodreadsAPI.book_by_title(book).description
    url = GoodreadsAPI.book_by_title(book).image_url
    puts url

    Book.create(:author => author, :title => title, :description => description, :url => url)

  end
end
