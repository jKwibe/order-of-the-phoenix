class CharacterFacade
  def house_members(house)
    members.select do |member|
      member.house == house
    end
  end

  private

  def members
    FetchService.new.to_objects
  end
end