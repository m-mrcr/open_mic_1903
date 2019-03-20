class User

  attr_reader :name,
              :jokes

  def initialize(name, jokes = [])
    @name = name
    @jokes = jokes
  end

  def learn(joke)
    @jokes.push(joke)
  end

  def tell(user, joke)
    user.jokes.push(joke)
  end

  def joke_by_id(id)
    @jokes.select {|joke| joke.id == id}
  end

end
