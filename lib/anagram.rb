class Anagram
	attr_reader :word

	def initialize(word)
		@word = word
	end

	def match(words)
		words.select do |w|
			word.chars.sort == w.chars.sort
		end
	end
end