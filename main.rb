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
  attr_reader :x, :y
    def initialize(x, y)
      @x, @y = x, y
    end
    def +(other)
      Point.new(@x+other.x, @y+other.y)
    end

    def in_grid?(x,y)
      puts @x+x
      if (@x+x).between?(0,$dimension-1)
        if (@y+y).between?(0,$dimension-1)
          return true
        end
      else
        return false
      end


    end
end

  # A (probably mutable) point in the grid, defined by and x- and y-coordinate.


class Kangaroo
  # Skippy is an instance of this class, instance = object
end

class Grid
  attr_reader :dimension
  def initialize()
    @dimension = inputter
    puts "dimension: #{@dimension}"
    die = Die.new
    position = Point.new(0,0)
    new_direction =
        case die.roll #[1,2,3,4]
        when 1 then :north
        when 2 then :east
        when 3 then :south
        when 4 then :west
        end
    puts new_direction
    xycoordinates(new_direction)
    puts @x_add,@y_add
    puts position.in_grid?(@x_add,@y_add)
    #new_direction is now north,east,south or west

  end

  def xycoordinates(direction)
    x_add,y_add =
        case direction
        when :north then x_add=0,y_add=1
        when :east then x_add=1,y_add=0
        when :south then x_add=0,y_add=-1
        when :west then x_add=-1,y_add=0
        end
    @x_add = x_add
    @y_add = y_add

  end

  def inputter #gets the input dimension, checks if correct input is given
    puts "Enter the dimension of grid"
    @dimension = Integer(gets) rescue false
    if not @dimension
      puts "Wrong input!"
      inputter()
    end
    $dimension = @dimension
  end
 # The grid that Skippy is hopping about on, can be of any dimension.
end

first = Grid.new
first.dimension

