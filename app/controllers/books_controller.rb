class BooksController < ApplicationController
  # before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :require_logged_in

  # client = Goodreads::Client.new(:api_key => 'gNh5zqd2UoEjSGbDxhQc3g', :api_secret => 'jbypCJfZEExfPk9P1pOjhfxcV0Tez6j6MwFbGrbso')


  # GET /books
  # GET /books.json
  def index
    @books = Book.all
    @client = Goodreads::Client.new(:api_key => 'gNh5zqd2UoEjSGbDxhQc3g', :api_secret => 'jbypCJfZEExfPk9P1pOjhfxcV0Tez6j6MwFbGrbso')
  end

  # GET /books/1
  # GET /books/1.json
  def show
  @book = Book.find(params[:id])

  end

  # GET /books/new
  def new
    @book = current_user.books.new
  end

  # GET /books/1/edit
  def edit
    @book = Book.find(params[:id])
  end

  # POST /books
  # POST /books.json
  def create
    @book = current_user.books.new(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book = Book.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = current_user.books.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:user_id, :title, :author, :description)
    end
end
