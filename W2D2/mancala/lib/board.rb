class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    @player1 = name1
    @player2 = name2
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    4.times do
      (0...@cups.length).each do |i|
        @cups[i] << :stone unless i == 6 || i == 13
      end
    end
    
  end

  def valid_move?(start_pos)
    raise 'Invalid starting cup' if start_pos < 0 || start_pos > 13
    raise 'Starting cup is empty' if @cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    
    # start_pos -= 1  if start_pos >= 1 && start_pos <= 6

    store = @cups[start_pos]
    @cups[start_pos] = []

    i = start_pos
    until store.empty?
      i = (i + 1) % 14
      if current_player_name == @player1
        @cups[i] << store.shift unless i == 13
      else
        @cups[i] << store.shift unless i == 6
      end
    end
    
    self.render
    self.next_turn(i)
    if i == 13 && current_player_name == @player2
      return :prompt
    elsif i == 6 && current_player_name == @player1
      return :prompt
    elsif @cups[i].length == 1
      return :switch
    else
      return i
    end
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx

  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side1 = @cups[0..5]
    side2 = @cups[7..12]

    side1_empty = side1.all? {|cup| cup.empty?}
    side2_empty = side2.all? {|cup| cup.empty?}

    return true if side1_empty || side2_empty
    false
  end

  def winner
    side1_store = @cups[6].length
    side2_store = @cups[13].length

    return :draw if side1_store == side2_store
    side1_store > side2_store ? @player1 : @player2
  end
end
