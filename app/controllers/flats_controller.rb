class FlatsController < ApplicationController
# READ
  def index
    @flats = Flat.all
  end

end
