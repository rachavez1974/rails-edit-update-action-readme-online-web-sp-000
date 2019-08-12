class ArticlesController < ApplicationController
  before_action :set_coupon, only: [:show, :edit, :update]

  def index
    @articles = Article.all
  end

  def show
  
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end


  # add edit and update methods here
  private
    def set_coupon
      @article = Article.find(params[:id])
    end
end
