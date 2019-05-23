# LRU Cache implementation

# johnny_cache = LRUCache.new(4)

# johnny_cache.add("I walk the line")
# johnny_cache.add(5)

# johnny_cache.count # => returns 2

# johnny_cache.add([1,2,3])
# johnny_cache.add(5)
# johnny_cache.add(-5)
# johnny_cache.add({a: 1, b: 2, c: 3})
# johnny_cache.add([1,2,3,4])
# johnny_cache.add("I walk the line")
# johnny_cache.add(:ring_of_fire)
# johnny_cache.add("I walk the line")
# johnny_cache.add({a: 1, b: 2, c: 3})


# johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]

class LRUCache
  def initialize(size)
    @size = size
    @cache = []
  end

  def count
    # returns number of elements currently in cache
    @cache.count
  end

  def add(el)
    # adds element to cache according to LRU principle
    # if element is already in the cache, update position
    if @cache.include?(el)
      @cache.delete(el)
      @cache.unshift(el)
      return
    end

    # check if cache is full
    # if cache is not full, simply add the element
    if @cache.count < @size
      @cache.unshift(el)
    else
      # if full, remove an element from the cache before adding the new element
      @cache.pop
      @cache.unshift(el)
    end
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here!

end




johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})

johnny_cache.show