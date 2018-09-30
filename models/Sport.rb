class Sport

  attr_accessor :id, :sport_name, :invented, :team_size

  def self.open_connection
    conn = PG.connect(dbname: 'people' )
  end

  # In the controller, we'll call the save method like Movie.save, so we can use self. to access the properties of the Movie (e.g. title, year, actors)
  def save
    conn = Sport.open_connection

    # If the class instance that we're running the 'save' method on does NOT have an ID, then create. Else, update.
    if !self.id
      sql = "INSERT INTO sports (sport_name, invented, team_size) VALUES ('#{self.sport_name}', #{self.invented}, #{self.team_size})"
    else
      sql = "UPDATE sports SET sport_name='#{self.sport_name}', invented=#{self.invented}, team_size=#{self.team_size} WHERE id=#{self.id}"
    end

    conn.exec(sql)
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM sports ORDER BY id"
    results = conn.exec(sql)

    sports = results.map do |sport|
      self.hydrate sport
    end

    sports
  end

  def self.find id
    conn = self.open_connection
    sql = "SELECT * FROM sports WHERE id=#{id}"
    results = conn.exec(sql)

    sport = self.hydrate results[0]

    sport

  end

  def self.find_with_people id
    conn = self.open_connection
    sql = "SELECT people.id, people.first_name, people.last_name, people.email, people.gender, people.ip_address, people.sport_id, sports.id, sports.sport_name, sports.invented, sports.team_size FROM sports JOIN people ON people.sport_id = sports.id WHERE sports.id=#{id}"
    results = conn.exec(sql)

    sport = self.hydrate results[0]

    sport

  end

  def self.destroy id
    conn = self.open_connection
    sql = "DELETE FROM sports WHERE id=#{id}"
    conn.exec(sql)
  end

  def self.hydrate sport_data
    sport = Sport.new

    sport.id = sport_data['id']
    sport.sport_name = sport_data['sport_name']
    sport.invented = sport_data['invented']
    sport.team_size = sport_data['team_size']

    sport
  end

end
