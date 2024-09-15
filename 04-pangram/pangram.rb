class Pangram
    def self.is_pangram?(sentence)
      alphabet = ('a'..'z').to_a
      sentence.downcase.chars.each do |char|
        alphabet.delete(char) if alphabet.include?(char)
      end
      alphabet.empty?
    end
  end
  