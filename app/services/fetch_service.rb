class FetchService
  def to_objects
    characters.map do |character|
      Member.new(character)
    end
  end

  def characters
    to_json('characters')
  end

  private
  def to_json(url_endpoint)
    response = conn.get(url_endpoint)
    JSON.parse(response.body, symbolize_names: true)
  end
  def conn
    Faraday.new('https://www.potterapi.com/v1/') do |f|
      f.params[:key] = ENV['POTTER_KEY']
    end
  end
end