class Game
   attr_accessor :current_player
  def initialize
    @player1 = Player.new('Player1')
    @player2 = Player.new('Player2')
    @current_player = @player1
    @end_game = true
  end

  def start_game
    puts "Starting new math guessing game"
    
    while @end_game
      question = Questions.new 
      puts "#{@current_player.name} please answer: "
      puts "#{question.ask_question}"
      player_answer = $stdin.gets.chomp
      
      if question.check_answer(player_answer)
        puts " #{player_answer} is the correct answer #{@current_player.name}"
        @current_player.increase_score
        puts "#{@current_player.name} score is #{@current_player.score}"

      else
        puts "Wrong answer #{@current_player.name}"
        @current_player.decrease_life
        puts "#{@current_player.name} you have #{@current_player.lives} lives remaining"
         if @current_player.lives == 0
          @end_game = false
          self.who_won
          break
         end
        switch_player
      end
     
      


    end
  end
  
  def who_won
    if @player1.lives == 0
      puts "#{@player2.name} wins with score of #{@player2.score} and #{@player2.lives} lives remaining"
    elsif @player2.lives == 0
      puts "#{@player1.name} wins with score of #{@player1.score} and #{@player1.lives} lives remaining"
    end
  end 

  def switch_player 
    if @current_player == @player1
      @current_player = @player2
    elsif @current_player == @player2
      @current_player = @player1
    end 
  end

  

end