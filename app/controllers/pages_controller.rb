class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    # @members = %w[alex betty cindy diane eric benjamin charly anthony arthur adele daniel ellen ephraim kate stephan].sort

    # if params[:member]
    #   @members = @members.select { |member| member.start_with?(params[:member])}
    # end

    @members = [
      { first: 'alexa', last: 'brewer' },
      { first: 'bernardette', last: 'collins' },
      { first: 'chloe', last: 'daniels' },
      { first: 'diane', last: 'young' }
    ]

    if params[:first] || params[:last]
      @members = @members.select do |member|
        member[:first].start_with?(params[:first]) || member[:last].start_with?(params[:last])
      end
    end
  end
end
