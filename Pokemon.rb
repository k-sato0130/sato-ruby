TYPE = ['Fire', 'Water', 'Ice', 'Electric', 'Dragon', 'Flying', 'Ghost', 'Fighting', 'Grass']

###POKEMON
class Pokemon

  attr_accessor :name, :type, :hp, :pp, :pw, :df, :sp, :moves

  class << self
    def poke_generate #Base Stats
      puts "Put the name of this Poke"
      name = gets.chomp
      moves = []
      4.times do
        moves << Move.move_generate
      end
      type = TYPE[rand(9)]
      Pokemon.new(name, type, 0, 0, 0, 0, 0, moves)
    end
  end

  def initialize(name, type, hp,  pp , pw, df, sp, moves) ##initialize
    @name = name
    @type = type
    @hp = rand(1..10)
    @pp = rand(1..10)
    @pw = rand(1..10)
    @df = rand(1..10)
    @sp = rand(1..10)
    @moves = moves
  end

  def poke_inspect #display Base Stats of a poke
    puts "This is the status of this pokemon"
    puts "Name: #{@name}"
    puts "Type: #{@type}"
    puts "HP: #{@hp}"
    puts "PP: #{@pp}"
    puts "Power: #{@pw}"
    puts "Defence: #{@df}"
    puts "Agility: #{@sp}"
    puts "Moves:"
    @moves.each.with_index(1){ |move, index| puts "#{index}:[Damage:#{move.damage}]#{move.name}(#{move.type})"}
  end
end

###MOVE
class Move
  NAME_OPTIONS = %w(Erratic Smooth Magical Curious Wise Dramatic Dependent Attractive Coherent Tricky Lazy Nutritious Exciting Easy Spectacular Important Terrific Tangible)
  NAME_OPTIONS2 = %w(Punch Kick Chain Whip LightningStrike Interrupt Grip BendMind Shout Pound Destroy Purge Bite Shower)

  attr_accessor :name, :accuracy, :damage, :type

  class << self
    def move_generate
      move_name = "#{NAME_OPTIONS[rand(NAME_OPTIONS.size)]} #{NAME_OPTIONS2[rand(NAME_OPTIONS2.size)]}"
      type = TYPE[rand(9)]
      Move.new(move_name, 0, 0, type)
    end
  end
  def initialize(name, accuracy, damage, type)
    @name = name
    @accuracy = rand(3..10)
    @damage = rand(1..10)
    @type = type
  end
end

class Player

  attr_accessor :name

  class << self
    def player_generate(name)
      Player.new(name)
    end
  end

  def initialize(name, poke)
    @name = name
    @poke = poke
  end
end

class Battle
  class << self
    def Begin
      puts "Put player1'name"
      name1 = gets.chomp
        player1 = Player.player_generate(name1)
      puts "Put player2's name"
      name2 = gets.chomp
        player2 = Player.player_generate(name2)
    end
  end
end

Battle.Begin
