# PokemonPokemon
class Pokemon
  def initialize(name,lv,hp,pw,df,sp)
    @name = name
    @lv = lv
    @hp = hp
    @pw = pw
    @df = df
    @sp = sp
  end

  def inspect
    puts "This is the status of this pokemon"
    puts "Name: #{@name}"
    puts "Level: #{@lv}"
    puts "HP: #{@hp}"
    puts "Power: #{@pw}"
    puts "Defence: #{@df}"
    puts "Agility: #{@sp}"
  end
end

class Move
  def initialize(accuracy,damage, element)
    @accuracy = accuracy
    @damage = damage
    @element = element
  end
end

class Battle

end

pokemon1 = Pokemon.new('Poke',1,10,3,5,4)
pokemon1.inspect
