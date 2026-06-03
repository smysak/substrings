adjectives = [ white, black, red, yellow, blue, open, shut, large, small, cute, furry, friendly, scary ]
nouns = [ door, monster, sword, chest, treasure, wall, window, room, pit, me, myself, enemy ]
verbs = [ look, try, attack, open, close, enter, take, get, give, kill, hit, pat, poke, peek ]

def substrings(words, dictionary)

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
end


substrings(get_words, choose_dictionary)

