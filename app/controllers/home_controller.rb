class HomeController < ApplicationController
  def index
  	skip_authorize index
  end
end
