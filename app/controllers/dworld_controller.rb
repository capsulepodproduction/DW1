class DworldController < ApplicationController
  def home
  end

  def about
  end

  def portfolio
  end

  def news
  end

  def contact
    @name = params[:Name]
    @email = params[:"Email Address"]
  end
end
