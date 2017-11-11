class PagesController < ApplicationController
  def index
  	pp @users = User.all
  	pp @posts = Post.all
  end
end