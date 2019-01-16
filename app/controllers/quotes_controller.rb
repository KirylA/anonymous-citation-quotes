class QuotesController < ApplicationController
  def new
  end

  def index
    @quotes = Quote.all
  end

  def show
    @quote = Quote.find(params[:id])
  end

  def create
    @quote = Quote.new(quote_params)
    @quote.save
    redirect_to @quote
    #render plain: params[:quote].inspect
  end

private
  def quote_params
    params.require(:quote).permit(:text)
  end
end
