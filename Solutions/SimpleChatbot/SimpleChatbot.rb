# Copyright - Alexandros Panagiotakopoulos 
# Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
# alexandrospanag.github.io
# Date: 11/11/2025

require 'json'

class SimpleChatbot
  def initialize(name = "Bot")
    @name = name
    @conversation_history = []
    @patterns = {
      /\bhello\b|\bhi\b|\bhey\b/i => [
        "Hello! How can I help you today?",
        "Hi there! What's on your mind?",
        "Hey! Nice to meet you!"
      ],
      /how are you|how're you/i => [
        "I'm doing great, thanks for asking!",
        "I'm just a program, but I'm functioning well!",
        "All systems operational! How are you?"
      ],
      /what(?:'s| is) your name/i => [
        "My name is #{@name}.",
        "I'm #{@name}, nice to meet you!"
      ],
      /bye|goodbye|see you/i => [
        "Goodbye! Have a great day!",
        "See you later!",
        "Bye! Come back anytime!"
      ],
      /help/i => [
        "I can chat with you! Try saying hello, asking how I am, or just talk to me.",
        "Just start chatting! I understand greetings, questions, and general conversation."
      ],
      /thank/i => [
        "You're welcome!",
        "Happy to help!",
        "Anytime!"
      ]
    }
  end

  def respond(message)
    @conversation_history << { role: "user", message: message }
    
    # Check for pattern matches
    response = nil
    @patterns.each do |pattern, responses|
      if message.match?(pattern)
        response = responses.sample
        break
      end
    end
    
    # Default response if no pattern matched
    response ||= generate_default_response(message)
    
    @conversation_history << { role: "bot", message: response }
    response
  end

  def generate_default_response(message)
    defaults = [
      "That's interesting! Tell me more.",
      "I see. Can you elaborate on that?",
      "Hmm, I'm not sure I fully understand. Could you rephrase?",
      "Thanks for sharing that with me!",
      "That's a good point. What else would you like to talk about?"
    ]
    defaults.sample
  end

  def show_history
    @conversation_history.each do |entry|
      puts "#{entry[:role].upcase}: #{entry[:message]}"
    end
  end

  def clear_history
    @conversation_history = []
    puts "Conversation history cleared."
  end
end

# Interactive chat loop
def start_chat
  bot = SimpleChatbot.new("RubyBot")
  
  puts "=" * 50
  puts "Simple Ruby Chatbot"
  puts "=" * 50
  puts "Type 'quit' to exit, 'history' to see conversation"
  puts "=" * 50
  puts
  
  loop do
    print "You: "
    input = gets.chomp
    
    break if input.downcase == 'quit'
    
    if input.downcase == 'history'
      puts "\n--- Conversation History ---"
      bot.show_history
      puts "----------------------------\n"
      next
    end
    
    if input.downcase == 'clear'
      bot.clear_history
      next
    end
    
    next if input.strip.empty?
    
    response = bot.respond(input)
    puts "#{bot.instance_variable_get(:@name)}: #{response}\n\n"
  end
  
  puts "\nThanks for chatting! Goodbye!"
end

# Run the chatbot
if __FILE__ == $0
  start_chat
endrequire 'json'

class SimpleChatbot
  def initialize(name = "Bot")
    @name = name
    @conversation_history = []
    @patterns = {
      /\bhello\b|\bhi\b|\bhey\b/i => [
        "Hello! How can I help you today?",
        "Hi there! What's on your mind?",
        "Hey! Nice to meet you!"
      ],
      /how are you|how're you/i => [
        "I'm doing great, thanks for asking!",
        "I'm just a program, but I'm functioning well!",
        "All systems operational! How are you?"
      ],
      /what(?:'s| is) your name/i => [
        "My name is #{@name}.",
        "I'm #{@name}, nice to meet you!"
      ],
      /bye|goodbye|see you/i => [
        "Goodbye! Have a great day!",
        "See you later!",
        "Bye! Come back anytime!"
      ],
      /help/i => [
        "I can chat with you! Try saying hello, asking how I am, or just talk to me.",
        "Just start chatting! I understand greetings, questions, and general conversation."
      ],
      /thank/i => [
        "You're welcome!",
        "Happy to help!",
        "Anytime!"
      ]
    }
  end

  def respond(message)
    @conversation_history << { role: "user", message: message }
    
    # Check for pattern matches
    response = nil
    @patterns.each do |pattern, responses|
      if message.match?(pattern)
        response = responses.sample
        break
      end
    end
    
    # Default response if no pattern matched
    response ||= generate_default_response(message)
    
    @conversation_history << { role: "bot", message: response }
    response
  end

  def generate_default_response(message)
    defaults = [
      "That's interesting! Tell me more.",
      "I see. Can you elaborate on that?",
      "Hmm, I'm not sure I fully understand. Could you rephrase?",
      "Thanks for sharing that with me!",
      "That's a good point. What else would you like to talk about?"
    ]
    defaults.sample
  end

  def show_history
    @conversation_history.each do |entry|
      puts "#{entry[:role].upcase}: #{entry[:message]}"
    end
  end

  def clear_history
    @conversation_history = []
    puts "Conversation history cleared."
  end
end

# Interactive chat loop
def start_chat
  bot = SimpleChatbot.new("RubyBot")
  
  puts "=" * 50
  puts "Simple Ruby Chatbot"
  puts "=" * 50
  puts "Type 'quit' to exit, 'history' to see conversation"
  puts "=" * 50
  puts
  
  loop do
    print "You: "
    input = gets.chomp
    
    break if input.downcase == 'quit'
    
    if input.downcase == 'history'
      puts "\n--- Conversation History ---"
      bot.show_history
      puts "----------------------------\n"
      next
    end
    
    if input.downcase == 'clear'
      bot.clear_history
      next
    end
    
    next if input.strip.empty?
    
    response = bot.respond(input)
    puts "#{bot.instance_variable_get(:@name)}: #{response}\n\n"
  end
  
  puts "\nThanks for chatting! Goodbye!"
end

# Run the chatbot
if __FILE__ == $0
  start_chat
end
