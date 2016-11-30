class Anagram
	attr_reader :word

	def initialize(word)
		@word = word
	end

	def match(words)
		words.select do |w|
			sort_word(word) == sort_word(w)
		end
	end

	def sort_word(word)
		word.split("").sort.join("")
	end

end