class Member
  attr_reader :house, :name, :patronus, :role
  def initialize(data)
    @house = data[:house]
    @name = data[:name]
    @role = data[:role]
    @patronus = data[:patronus]
  end
end