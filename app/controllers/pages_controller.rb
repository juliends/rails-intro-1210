class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @members = ["thanh", "dimitri", "germain", "damien", "julien"]
    # Look for members starting with "Dim"
    if params[:member]
      @members = @members.select { |member|  member.starts_with?(params[:member]) }
    end
  end
end
