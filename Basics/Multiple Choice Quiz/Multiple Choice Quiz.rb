#Alexandros Panagiotakopoulos - alexandrospanag.github.io

# class Question
class Question
  attr_accessor :prompt, :answer
  def initialize(prompt, answer) #initialize is a special method that is called when you create a new object
    @prompt = prompt
    @answer = answer
  end
end

#create questions
q1 = "What color are strawberries?\n(a)red\n(b)purple\n(c)orange"
q2 = "What color are lemons?\n(a)pink\n(b)red\n(c)yellow"
q3 = "What color are pears?\n(a)yellow\n(b)green\n(c)orange"

#create an array of questions
questions = [
  Question.new(q1, "a"),
  Question.new(q2, "c"),
  Question.new(q3, "b")
]

#method to run the test
def run_test(questions)
  answer = ""
  score = 0
  for question in questions
    puts question.prompt
    answer = gets.chomp()
    if answer == question.answer
      score += 1
    end
  end
  puts ("You got " + score.to_s + "/" + questions.length().to_s)
end
