class Quiz
  def self.prompt
    puts "what is the capital of france?"
  end

  def self.receive
    input = gets.chomp
    return input
  end

  def self.run
    Quiz.prompt
    input = Quiz.receive.downcase
    correct_answer = 'paris'
    if input == correct_answer
      puts "CORRECT!"
    else
      puts "WRONG!"
    end

  end
end

Quiz.run if __FILE__ == $PROGRAM_NAME