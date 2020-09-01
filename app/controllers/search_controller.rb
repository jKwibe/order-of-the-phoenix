class SearchController < ApplicationController
  def index
    @members = FetchService.new.to_objects.select { |character| character.house == params[:house] }
  end
end
