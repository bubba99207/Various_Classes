class Person
  def initialize(first_name, last_name, age, hair_color, eye_color)
    @first_name = first_name
    @last_name = last_name
    @age = age
    @hair_color = hair_color
    @eye_color = eye_color

    def first_name
      return @first_name
    end

    def first_name=(first_name)
      @first_name = first_name
    end

    def last_name
      return @last_name
    end

    def last_name=(last_name)
      @last_name = last_name
    end

    def age
      return @age
    end

    def age=(age)
      @age = age
    end

    def hair_color
      return @hair_color
    end

    def hair_color=(hair_color)
      @hair_color = hair_color
    end

    def eye_color
      return @eye_color
    end

    def eye_color=(eye_color)
      @eye_color = eye_color
    end

    def to_s
      return "#{@first_name }#{@last_name} is #{@age } years old has #{@hair_color } hair and #{@eye_color } eye's!"
    end
  end
end

class Address
  def initialize(line1, line2, city, state, zip)
    @line1 = line1
    @line2 = line2
    @city = city
    @state = state
    @zip = zip

    def line1
      return @line1
    end

    def line1=(line1)
      @line1 = line1
    end

    def line2
      return @line2
    end

    def line2=(line2)
      @line2 = line2
    end

    def city
      return @city
    end

    def city=(city)
      @city = city
    end

    def state
      return @state
    end

    def state=(state)
      @state = state
    end

    def zip
      return @zip
    end

    def zip=(zip)
      @zip = zip
    end

    def to_s
      return "The address is \n #{@line1} \n #{@line2} \n #{@city} \n #{@state} \n #{@zip}"
    end
  end
end

class Character
  def initialize(name, race, hit_points, gold)
    @name = name
    @race = race
    @hit_points = hit_points
    @gold = gold
    @clothing = []
    @weapons = []

    def name
      return @name
    end

    def name=(name)
      @name = name
    end

    def race
      return @race
    end

    def race=(race)
      @race = race
    end

    def hit_points
      return @hit_points
    end

    def hit_points=(hit_points)
      @hit_points = hit_points
    end

    def gold
      return @gold
    end

    def gold=(gold)
      @gold = gold
    end

    def weapons
      return @weapons.join("n")
    end

    def add_weapon(klass)
      return @weapons<< klass
    end

    def drop_weapon(weapon)
      return @weapons.delete(weapon)
    end

    def clothing
      return @clothing.join("n")
    end

    def add_clothing(cloths)
      return @clothing<< cloths
    end

    def drop_clothing(cloths)
      return @clothing.delete(cloths)
    end

    def to_s
      return " #{@name} is a #{@race } with #{@hit_points } Hit Points of damage and #{@gold} pieces of gold With these items \n WEAPONS \n #{@weapons.join (" \n ")} \n  \n CLOTHING \n #{@clothing.join(" \n ")}  "
    end
  end
end

puts "Person Class!"
puts
my_person = Person.new("Tom", "Thumb", 42, "red", "green")

# puts my_person.first_name
# puts my_person.last_name
# puts my_person.age
# puts my_person.hair_color
# puts my_person.eye_color
puts my_person

puts "Address Class!"
puts
my_address = Address.new("1733 n smith", "Apt 3", "Spokane", "Wa", 99207)
# puts my_address.line1
# puts my_address.line2
# puts my_address.city
# puts my_address.state
# puts my_address.zip
# puts
puts my_address


puts "Character Class!"
puts
my_Character = Character.new("Kane", "Nightshrouder", 42, 5)
# puts my_Character.name
# puts my_Character.race
# puts my_Character.hit_points
# puts my_Character.gold
my_Character.add_clothing("pants")
my_Character.add_clothing("shoes")
my_Character.add_clothing("hat")
my_Character.add_weapon("knife")
my_Character.add_weapon("stick")
my_Character.add_weapon("rock")
puts my_Character
puts
my_Character.drop_weapon("knife")
my_Character.drop_clothing("shoes")

puts "Character Class!"
puts
puts my_Character

