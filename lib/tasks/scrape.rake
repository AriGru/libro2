task :get_books => :environment do
  Goodreads::Client.new(:api_key => 'X9YtyhHcbo8epOwkayEtEA', :api_secret => 'hi0fQvg8rbw2fufhHYOlsreqb1oKq0iU29zXaXVrMec')

  list_of_books = ['Rising Strong',"Kitchens of the Great Midwest",'Eleanor & Park ','Me Before You ','Sharp Objects ','To Kill a Mockingbird ','The Book Thief','My Heart and Other Black Holes','I Was Here',"Life's Greatest Secret: The Race to Crack the Genetic Code",'The Art of the Con: The Most Notorious Fakes, Frauds, and Forgeries in the Art World','THE FIRST FIFTEEN LIVES','THE MARTIAN','Still Life with Bread Crumbs','Tigerman','Redeployment','The Storied Life of A.J. Fikry','landline','The Marriage of Opposites ','Applied Minds: How Engineers Think','THE NEW JIM CROW','GO SET A WATCHMAN', 'what the dog saw', 'THE GIRL ON THE TRAIN', 'ALL THE LIGHT WE CANNOT SEE', 'BETWEEN THE WORLD AND ME','THE WRIGHT BROTHERS',  'BARBARIAN DAYS', 'BEING MORTAL', 'THE BOYS IN THE BOAT', 'THE GLASS CASTLE', 'UNBROKEN', 'ORANGE IS THE NEW BLACK', 'THE POWER OF HABIT',  ]

  list_of_books.each do |book|
    puts book
    gr_book = GoodreadsAPI.book_by_title(book)
    author = gr_book.authors.author.name
    title = gr_book.title
    description = gr_book.description
    url = gr_book.image_url


    Book.create(:author => author, :title => title, :description => description, :url => url)

  end
end
