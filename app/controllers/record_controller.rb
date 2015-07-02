class RecordController < ApplicationController
  def groupby
  	@books = Book.select('publish, AVG(price) AS avg_price').group(:publish)
  end

  def ph1
  	@books = Book.where('publish = ? AND price >= ?',
  		params[:publish], params[:price])
  	render 'hello/list'
  end

  def exists
  	flag = Book.exists?
  	render text: "存在するか？: #{flag}"
  end

  def scope
  	@books = Book.gihyo.top10
  	render 'hello/list'
  	
  end

  def def_scope
  	render text: Review.all.inspect
  	
  end

  def count
  	cnt = Book.where(publish: '技術評論社').count
  	render text: "#{cnt}件です"
  	
  end
end
