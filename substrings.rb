# encoding: utf-8

DICTIONARIES = {
  adjectives: %w[ white black red yellow blue open shut large small cute furry friendly scary ],
  nouns: %w[ door monster sword chest treasure wall window room pit me myself enemy ],
  verbs: %w[ look try attack open close enter take get give kill hit pat poke peek ],
}

def substrings(string, dictionary)
  puts "\nYou have chosen to search in '#{dictionary}'."
  result = Hash.new(0)
  DICTIONARIES[dictionary].each do |word|
    matches = string.scan(word).length
    if matches > 0
      result[word] = matches
    end
  end
  puts "\n" + "=" * 37
  puts "RESULTS"
  puts "=" * 37
  if result.empty?
    puts "\nYou have found no matches in '#{dictionary}'."
  else
    puts "\nYou have found the following matches:"
    result.each do |word, matches|
      puts "  ‣ #{word.capitalize} X #{matches}"
    end
  end
  puts "\n" + "=" * 37
end

def get_string
  puts "\nEnter the string:"
  string = gets.strip.downcase
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
end

substrings(get_string, choose_dictionary)
