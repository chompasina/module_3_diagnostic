class SearchController < ApplicationController
  def index
    @locate = NrelClientService.new
  end
end
