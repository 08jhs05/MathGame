class Game

  def initialize(p1, p2, questions)
    @p1 = p1
    @p2 = p2
    @questions = questions
    @questionnumber = 0
    @turn = true  # player 1 if true, p2 if false
  end

  def run
    puts "GAME START!"
    while @p1.isalive && @p2.isalive
      puts "----- NEW TURN -----"
      if @turn
        puts "#{@p1.name}: #{@questions[@questionnumber][:question]}"
        if gets.chomp.to_i != @questions[@questionnumber][:answer]
          puts "#{@p1.name}: Seriously? NO!!!"
          @p1.loselife
        else
          puts "#{@p1.name}: YES! You are correct!!"
        end
      else
        puts "#{@p2.name}: #{@questions[@questionnumber][:question]}"
        if gets.chomp.to_i != @questions[@questionnumber][:answer]
          puts "#{@p2.name}: Seriously? NO!!!"
          @p2.loselife
        else
          puts "#{@p2.name}: YES! You are correct!!"
        end
      end
      puts "P1: #{@p1.life}/3 vs P2: #{@p2.life}/3"
      @turn = @turn ^ true
      @questionnumber = (@questionnumber + 1) % @questions.length     # repeats questions from index 0 again
    end
    if @turn
      puts "#{@p1.name} wins with a score of #{@p1.life}/3"
    else
      puts "#{@p2.name} wins with a score of #{@p2.life}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end

end