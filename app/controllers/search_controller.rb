class SearchController < ApplicationController
  def index
    @members = CharacterFacade.new.house_members(params[:house])
  end
end
