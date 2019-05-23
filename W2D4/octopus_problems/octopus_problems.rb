# Big O-ctopus and Biggest Fish
# A Very Hungry Octopus wants to eat the longest fish in an array of fish.

# ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"



# Sluggish Octopus
# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths

def sluggish(fish)
  longest_fish = nil

  (0...fish.length-1).each do |i|
    (i+1...fish.length).each do |j|
      if fish[i].length > fish[i+1].length
        longest_fish = fish[i]
      else
        longest_fish = fish[i+1]
      end
    end
  end

  longest_fish
end

# fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p sluggish(fish)


# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Accessing this on GitHub? Use this link. Remember that Big O is classified by the dominant term.


def dominant(fish)
  fish_arr = ms(fish)
  fish_arr.last
end

def ms(arr)
  return arr if arr.length <= 1

  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]

  merge(ms(left), ms(right))
end

def merge(arr1, arr2)
  output = []

  until arr1.empty? || arr2.empty?
    if arr1.first.length < arr2.first.length
      output << arr1.shift
    else
      output << arr2.shift
    end
  end

  output.concat(arr1).concat(arr2)
end


# fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p dominant(fish)




# Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

def clever(arr)
  longest = arr.first

  (1...arr.length).each do |i|
    longest = arr[i] if arr[i].length > longest.length
  end

  longest
end

# fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# p clever(fish)




# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# To play the game, the octopus must step on a tile with her corresponding tentacle. We can assume that the octopus's eight tentacles are numbered and correspond to the tile direction indices.


# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

# slow_dance("up", tiles_array)
# > 0

# slow_dance("right-down", tiles_array)
# > 3


def slow_dance(dir, tiles)
  tiles.index(dir)
end

# tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# p slow_dance('up', tiles_array) # => 0
# p slow_dance('right-down', tiles_array)  # => 3







# Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time.

# fast_dance("up", new_tiles_data_structure)
# > 0

# fast_dance("right-down", new_tiles_data_structure)
# > 3


def constant_dance(dir, ds)
  ds[dir]
end

tiles_hash = {
  'up' => 0,
  'right-up' => 1,
  'right' => 2,
  'right-down' => 3,
  'down' => 4,
  'left-down' => 5,
  'left' => 6,
  'left-up' => 7
}
# p constant_dance('up', tiles_hash) # => 0
# p constant_dance('right-down', tiles_hash) # => 3