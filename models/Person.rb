class Person

  attr_accessor :id, :first_name, :last_name, :email, :gender, :ip_address, :sport_id, :sport

  def self.open_connection
    conn = PG.connect(dbname: 'people' )
  end

  # In the controller, we'll call the save method like Movie.save, so we can use self. to access the properties of the Movie (e.g. title, year, actors)
  def save
    conn = Person.open_connection

    # If the class instance that we're running the 'save' method on does NOT have an ID, then create. Else, update.
    if !self.id
      sql = "INSERT INTO people (first_name, last_name, email, gender, ip_address) VALUES ('#{self.first_name}', '#{self.last_name}', '#{self.email}', '#{self.gender}', '#{self.ip_address}')"
    else
      sql = "UPDATE people SET first_name='#{self.first_name}', last_name='#{self.last_name}', email='#{self.email}', gender='#{self.gender}', ip_address='#{self.ip_address}' WHERE id='#{self.id}'"
    end

    conn.exec(sql)
  end

  def self.all
    conn = self.open_connection
    sql = "SELECT * FROM people ORDER BY id"
    results = conn.exec(sql)

    people = results.map do |person|
      self.hydrate person
    end

    people
  end

  def self.all_with_sport
    conn = self.open_connection
    sql = "SELECT people.id, people.first_name, people.last_name, people.email, people.gender, people.ip_address, people.sport_id, sports.id, sports.sport_name, sports.invented, sports.team_size FROM people JOIN sports ON people.sport_id = sports.id"
    results = conn.exec(sql)

    people = results.map do |person|
      self.hydrate person
    end

    people
  end

  def self.find id
    conn = self.open_connection
    sql = "SELECT * FROM people WHERE id=#{id}"
    results = conn.exec(sql)

    person = self.hydrate results[0]

    person

  end

  def self.find_with_sport id
    conn = self.open_connection
    sql = "SELECT people.id, people.first_name, people.last_name, people.email, people.gender, people.ip_address, people.sport_id, sports.id, sports.sport_name, sports.invented, sports.team_size FROM sports JOIN people ON people.sport_id = sports.id WHERE sports.id=#{id}"
    results = conn.exec(sql)

    person = self.hydrate results[0]

    person

  end

  def self.destroy id
    conn = self.open_connection
    sql = "DELETE FROM people WHERE id=#{id}"
    conn.exec(sql)
  end

  def self.hydrate person_data
    person = Person.new

    person.id = person_data['id']
    person.first_name = person_data['first_name']
    person.last_name = person_data['last_name']
    person.email = person_data['email']
    person.gender = person_data['gender']
    person.ip_address = person_data['ip_address']
    person.sport_id = person_data['sport_id']
    person.sport = "#{person_data['sport_name']}"

    person
  end

end
