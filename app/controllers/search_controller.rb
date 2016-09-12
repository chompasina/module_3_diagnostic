class SearchController < ApplicationController
  def index
     @locate = NrelClientService.new(params[:q])
  end
end