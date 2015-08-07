task :get_books => :environment do
  Goodreads::Client.new(:api_key => 'gNh5zqd2UoEjSGbDxhQc3g', :api_secret => 'jbypCJfZEExfPk9P1pOjhfxcV0Tez6j6MwFbGrbso')

  list_of_books = ['THE FIRST FIFTEEN LIVES','THE MARTIAN','Still Life with Bread Crumbs','Tigerman','Redeployment','The Storied Life of A.J. Fikry','landline','The Marriage of Opposites ','Applied Minds: How Engineers Think','THE NEW JIM CROW','GO SET A WATCHMAN', 'what the dog saw', 'THE GIRL ON THE TRAIN', 'ALL THE LIGHT WE CANNOT SEE', 'BETWEEN THE WORLD AND ME','THE WRIGHT BROTHERS',  'BARBARIAN DAYS', 'BEING MORTAL', 'THE BOYS IN THE BOAT', 'THE GLASS CASTLE', 'UNBROKEN', 'ORANGE IS THE NEW BLACK', 'THE POWER OF HABIT',  ]

  list_of_books.each do |book|
    gr_book = GoodreadsAPI.book_by_title(book)
    author = gr_book.authors.author.name
    title = gr_book.title
    description = gr_book.description
    url = gr_book.image_url
    puts title

    Book.create(:author => author, :title => title, :description => description, :url => url)

  end
end
