class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end

    game_over_message
    reset_game    
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    print "Enter the sequence:\n"
    input = gets.chomp.split(' ')
    unless input == @seq
      @game_over = true
    end
  end

  def add_random_color
    random_color = COLORS.sample
    @seq << random_color    
    print @seq
    print '...'
    sleep(2)
    system('clear')
  end

  def round_success_message
    p 'Congrats, round success!'
    sleep(1)
    system('clear')
  end

  def game_over_message
    p 'Game over!'
  end

  def reset_game
    @sequence_length = 1
    @seq = []
    @game_over = false
  end
end

s = Simon.new
s.play
