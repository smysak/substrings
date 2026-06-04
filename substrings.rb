DICTIONARIES = {
    adjectives: %w[ white black red yellow blue open shut large small cute furry friendly scary ],
    nouns: %w[ door monster sword chest treasure wall window room pit me myself enemy ],
    verbs: %w[ look try attack open close enter take get give kill hit pat poke peek ]
}


def substrings(words, dictionary)
    puts DICTIONARIES[dictionary]
end


def get_words
    puts "\nEnter the string:"
    words = gets.strip.downcase
end


def choose_dictionary
    puts "\nEnter the dictionary:"
    dictionary = gets.strip.downcase

    if dictionary.match?(/^(?:adjectives|nouns|verbs)$/)
        dictionary = dictionary.to_sym
    else
        puts "'#{dictionary}' is not a valid dictionary."
        exit(1)
    end

    dictionary
end


substrings(get_words, choose_dictionary)