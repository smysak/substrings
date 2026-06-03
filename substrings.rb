ADJECTIVES = %w[ white black red yellow blue open shut large small cute furry friendly scary ]
NOUNS = %w[ door monster sword chest treasure wall window room pit me myself enemy ]
VERBS = %w[ look try attack open close enter take get give kill hit pat poke peek ]

def substrings(words dictionary)
    puts "hello. this isn't working yet."
end


def get_words
    puts ""
    puts "Enter the string:"
    words = gets.strip.downcase
end


def choose_dictionary
    puts ""
    puts "Enter the dictionary:"
    dictionary = gets.strip.downcase

    if dictionary.match?(/^(?:adjectives|nouns|verbs)$/)
        puts ""
    else
        puts "'#{dictionary}' is not a valid dictionary."
        exit(1)
    end

    dictionary
end


substrings(get_words choose_dictionary)

