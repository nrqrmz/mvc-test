class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = %w[alex betty cindy diane eric benjamin charly anthony arthur adele daniel ellen ephraim kate stephan].sort

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member])}
    end
  end
end
