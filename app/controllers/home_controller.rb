class HomeController < ApplicationController
  def index
  end

  def about
    @about_me = "This is a CRUD application which gives users(you) the ability to create, read, update and delete friends from a list. Users are also able to create an account, sign in/out and delete their account if they desire."
  end 
end
