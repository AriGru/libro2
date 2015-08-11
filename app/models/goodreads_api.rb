class GoodreadsAPI
  def self.client
    Goodreads::Client.new(:api_key => 'X9YtyhHcbo8epOwkayEtEA', :api_secret => 'hi0fQvg8rbw2fufhHYOlsreqb1oKq0iU29zXaXVrMec')
  end

  def self.book_by_title(title)
    client.book_by_title(title)
  end

end
