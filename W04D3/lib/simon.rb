class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq, :difficulty

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
    @difficulty = 1
  end

  def set_difficulty
    begin
      puts "Enter difficulty. 1 = Normal. 4 = Hard."
      input = gets.chomp
      a = *(1..4)
      a.map! {|i|i.to_s.ord}
      raise StandardError if !a.include?(input.ord)
    rescue
      puts "Must be an integer from 1 to 4"
      retry
    end
    @difficulty = input.to_i
    system("clear")
  end

  def play
    set_difficulty
    until @game_over == true
      take_turn
    end
    game_over_message
    #reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message if @game_over == false
    @sequence_length += 1 if @game_over == false
  end

  def show_sequence
    add_random_color
    show_seq = seq.dup
    until show_seq.empty?
      display = @difficulty**2
      x = "x" * show_seq.first.length
      arr = Array.new(display){Array.new(display,x)}
      a = *(0...display)
      arr[a.sample][a.sample] = show_seq.shift
      system("clear")
      arr.each {|row|p row}
      sleep 1
      system("clear")
    end
  end

  def require_sequence
    p "Difficulty: " + @difficulty.to_s + "." if @difficulty > 1
    p "Round #" + sequence_length.to_s    
    round_seq = seq.dup
    correct_seq = seq.dup
    until round_seq.empty?
      round_color = round_seq.shift
      input = gets.chomp
      if input != round_color
        round_seq.clear
        p "The correct sequence was: " + correct_seq.join(" ")
        @game_over = true
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "Great job!"
    sleep 1
  end

  def game_over_message
    p "GAME OVER"
  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end

s = Simon.new
s.play