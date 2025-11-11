# SimpleChatbot Documentation

**Author:** Alexandros Panagiotakopoulos  
**License:** Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License  
**Website:** alexandrospanag.github.io  
**Date:** 11/11/2025

---

## Overview

SimpleChatbot is a lightweight, pattern-matching chatbot implementation written in Ruby. It provides a basic conversational interface using regex pattern matching and maintains conversation history throughout the session.

---

## Features

- **Pattern-based responses** - Matches user input against predefined regex patterns
- **Randomized responses** - Multiple response variations for natural conversation
- **Conversation history** - Tracks all interactions during the session
- **Interactive CLI** - Simple command-line interface for chatting
- **Extensible design** - Easy to add new patterns and responses

---

## Installation

No external dependencies required. Simply ensure you have Ruby installed:

```bash
ruby --version  # Ruby 2.0 or higher recommended
```

Save the code to a file (e.g., `chatbot.rb`) and run:

```bash
ruby chatbot.rb
```

---

## Usage

### Starting the Chatbot

Run the script directly:

```bash
ruby chatbot.rb
```

You'll see the welcome screen:

```
==================================================
Simple Ruby Chatbot
==================================================
Type 'quit' to exit, 'history' to see conversation
==================================================
```

### Commands

- **quit** - Exit the chatbot
- **history** - Display full conversation history
- **clear** - Clear conversation history
- Regular text - Chat with the bot

### Example Conversation

```
You: hello
RubyBot: Hi there! What's on your mind?

You: what's your name?
RubyBot: I'm RubyBot, nice to meet you!

You: how are you
RubyBot: I'm doing great, thanks for asking!

You: history
--- Conversation History ---
USER: hello
BOT: Hi there! What's on your mind?
USER: what's your name?
BOT: I'm RubyBot, nice to meet you!
USER: how are you
BOT: I'm doing great, thanks for asking!
----------------------------

You: quit
Thanks for chatting! Goodbye!
```

---

## API Reference

### Class: `SimpleChatbot`

#### Constructor

```ruby
SimpleChatbot.new(name = "Bot")
```

**Parameters:**
- `name` (String, optional) - The bot's name (default: "Bot")

**Example:**
```ruby
bot = SimpleChatbot.new("MyBot")
```

---

#### Methods

##### `respond(message)`

Processes user input and returns a response.

**Parameters:**
- `message` (String) - User's input message

**Returns:** String - Bot's response

**Example:**
```ruby
response = bot.respond("Hello!")
puts response  # => "Hello! How can I help you today?"
```

---

##### `generate_default_response(message)`

Generates a fallback response when no pattern matches.

**Parameters:**
- `message` (String) - User's input message

**Returns:** String - Random default response

---

##### `show_history()`

Displays the complete conversation history to console.

**Example:**
```ruby
bot.show_history()
```

**Output:**
```
USER: hello
BOT: Hi there!
USER: how are you?
BOT: I'm doing great!
```

---

##### `clear_history()`

Clears all stored conversation history.

**Example:**
```ruby
bot.clear_history()
# Output: "Conversation history cleared."
```

---

## Pattern Matching

The chatbot uses regex patterns to match user input. Current supported patterns:

| Pattern | Matches | Example Responses |
|---------|---------|-------------------|
| `/\bhello\b\|\bhi\b\|\bhey\b/i` | Greetings | "Hello! How can I help you today?" |
| `/how are you\|how're you/i` | Status inquiry | "I'm doing great, thanks for asking!" |
| `/what(?:'s\| is) your name/i` | Name question | "My name is [BotName]." |
| `/bye\|goodbye\|see you/i` | Farewell | "Goodbye! Have a great day!" |
| `/help/i` | Help request | "I can chat with you! Try saying hello..." |
| `/thank/i` | Gratitude | "You're welcome!" |

---

## Customization

### Adding New Patterns

Edit the `@patterns` hash in the `initialize` method:

```ruby
@patterns = {
  # Existing patterns...
  /weather/i => [
    "I can't check the weather, but I hope it's nice!",
    "Weather chat is beyond my capabilities, sorry!"
  ],
  /joke/i => [
    "Why did the Ruby go to therapy? It had too many issues!",
    "I'm not great at jokes, but I try!"
  ]
}
```

### Changing Default Responses

Modify the `generate_default_response` method:

```ruby
def generate_default_response(message)
  defaults = [
    "That's interesting! Tell me more.",
    "I see what you mean.",
    "Your custom response here!"
  ]
  defaults.sample
end
```

### Creating Custom Bot Names

```ruby
my_bot = SimpleChatbot.new("Alfred")
puts my_bot.respond("what's your name?")
# => "My name is Alfred."
```

---

## Programmatic Usage

You can use the chatbot in your own Ruby programs:

```ruby
require_relative 'chatbot'

# Create a bot instance
bot = SimpleChatbot.new("Assistant")

# Send messages programmatically
response1 = bot.respond("Hello!")
response2 = bot.respond("How are you?")

puts response1
puts response2

# Access conversation history
bot.show_history()
```

---

## Architecture

### Data Structure

The conversation history is stored as an array of hashes:

```ruby
[
  { role: "user", message: "Hello!" },
  { role: "bot", message: "Hi there!" },
  { role: "user", message: "How are you?" },
  { role: "bot", message: "I'm doing great!" }
]
```

### Flow Diagram

```
User Input → Check Patterns → Match Found? 
                                    ↓
                            Yes: Select Random Response
                            No: Generate Default Response
                                    ↓
                            Add to History → Return Response
```

---

## Limitations

- **No AI/Machine Learning** - Uses simple pattern matching, not actual natural language understanding
- **Limited Context** - Doesn't understand conversation context or follow-up questions
- **Pattern-dependent** - Only responds intelligently to predefined patterns
- **No persistence** - Conversation history is lost when the program exits
- **Single-session** - No long-term memory between runs

---

## Future Enhancements

Potential improvements you could add:

1. **JSON persistence** - Save/load conversation history
2. **Sentiment analysis** - Detect user mood and adjust responses
3. **Learning capability** - Add new patterns based on usage
4. **Web interface** - Create a Sinatra/Rails frontend
5. **API integration** - Connect to external services (weather, news, etc.)
6. **Multi-user support** - Handle multiple concurrent conversations

---

## License

This project is licensed under the **Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License**.

**You are free to:**
- Share — copy and redistribute the material
- Adapt — remix, transform, and build upon the material

**Under the following terms:**
- **Attribution** — Give appropriate credit to Alexandros Panagiotakopoulos
- **NonCommercial** — Not for commercial use
- **ShareAlike** — Distribute contributions under the same license

---

## Contributing

This is a simple educational project. Feel free to fork and modify for your own learning purposes while respecting the license terms.

---

## Contact

- **Website:** [alexandrospanag.github.io](https://alexandrospanag.github.io)
- **Author:** Alexandros Panagiotakopoulos

---

## Changelog

**Version 1.0.0** (11/11/2025)
- Initial release
- Basic pattern matching
- Conversation history
- Interactive CLI
- Command support (quit, history, clear)
