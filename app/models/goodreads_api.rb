class GoodreadsAPI
  def self.client
    Goodreads::Client.new(:api_key => 'gNh5zqd2UoEjSGbDxhQc3g', :api_secret => 'jbypCJfZEExfPk9P1pOjhfxcV0Tez6j6MwFbGrbso')
  end

  def self.book_by_title(title)
    client.book_by_title(title)
  end

end
