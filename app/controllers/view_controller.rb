class ViewController < ApplicationController
  def partial_basic
  	@book = Book.find(2)
  end

  def fields
  	@user = User.find(1)
  end

  def partial_col
  	@books = Book.all
  end

  def dat_select
  	@book = Book.find(1)
  end

  def col_radio
    @book = Book.new(publish: '技術評論社')
    @books = Book.select(:publish).distinct
  end
end
