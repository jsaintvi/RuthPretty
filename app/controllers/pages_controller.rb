class PagesController < ApplicationController


  def home
  end

  def profile
    render :profile,:layout => true

  end


end
