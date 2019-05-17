class Map
  def initialize
    @map = []
  end

  def set(key, val)
    @map.each do |pair|
      if pair.first == key
        idx = @map.index(pair)
        @map[idx] = [key, val]
        return @map[idx]
      end
    end
    @map << [key, val]
  end

  def get(key)
    @map.each do |pair|
      if pair.first == key
        return pair
        break
      end
    end
    nil
  end

  def delete(key)
    pair = get(key)
    pair ? @map.delete(pair) : nil
  end

  def show
    @map
  end
end


m = Map.new
m.set('hello', 'world')
m.set('hello', 'World')