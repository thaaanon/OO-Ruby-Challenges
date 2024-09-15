class Grains
    def self.square(n)
      raise ArgumentError, "Square number must be between 1 and 64" unless (1..64).include?(n)
      2**(n - 1)
    end
  
    def self.total
      (1..64).map { |n| square(n) }.reduce(:+)
    end
  end
  