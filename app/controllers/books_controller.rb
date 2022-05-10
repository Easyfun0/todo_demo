class BooksController < ApplicationController
    def index
        @book = Book.all
    end

    def new
        @book = Book.new
    end

    def create
        @book = Book.new(book_params)
        if @book.save
            flash[:notice] = '已新增'
            redirect_to '/'
        else
            render :new
        end
    end

    def edit
        @book = Book.find(params[:id])
    end

    def update
        @book = Book.find(params[:id])
        if @book.update(book_params)
            flash[:notice] = '已修改'
            redirect_to '/'
        else
            render :edit
        end
    end

    def destroy
        @book = Book.find(params[:id])
        @book.destroy
        redirect_to '/', notice: '已刪除'
    end


    private
    def book_params
        params.require(:book).permit(:name, :date, :price, :pages, :isbn)
    end
end