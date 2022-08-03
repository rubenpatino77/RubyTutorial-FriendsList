class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This is an example about page!"
  end 
end
