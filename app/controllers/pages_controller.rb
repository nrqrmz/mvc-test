class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = %w[alex betty cindy diane eric]
  end
end
