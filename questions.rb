class Questions 
  attr_reader :rand1, :rand2, :solution

  def initialize
    @rand1 = rand(1..20)
    @rand2 = rand(1..20)
    @solution = @rand1 + @rand2
  end 

  def ask_question
    puts "What is #{@rand1} + #{@rand2}"
  end 

  def check_answer(answer)
    @solution == answer.to_i
  end

end