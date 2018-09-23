class Die
  #A 4-sided die, with each side representing a direction, North, South, East or West.
  #Also stores a hash table to keep track of the number of throws in each direction so far.
  def roll
    prng = Random.new
    @new_direction = prng.rand(1..4)
    #1 = North, 2 = East, 3 = South, 4 = West
  end

end

class Point
  # A (probably mutable) point in the grid, defined by and x- and y-coordinate.
end

class Kangaroo
  # Skippy is an instance of this class, instance = object
end

class Grid
  def initialize()

    @dimension = inputter
    puts "dimension: #{@dimension}"
    die = Die.new
    new_direction =  die.roll

  end

  def inputter #gets the input dimension, checks if correct input is given
    puts "Enter the dimension of grid"
    @dimension = Integer(gets) rescue false
    if not @dimension
      puts "Wrong input!"
      inputter()
    end
    @dimension
  end
 # The grid that Skippy is hopping about on, can be of any dimension.
end

first = Grid.new
