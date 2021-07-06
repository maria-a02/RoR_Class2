class Card
    attr_accessor :number, :kind
    def initialize(number, kind)
        if (number >= 1 || number <= 13) && ["C", "D", "T", "E"].include?(kind)
        
            @number = number
            @kind = kind
        else
            raise "Incorrect."
        end
    end
    
    def to_s
        "Number #{self.number}, Kind #{self.kind}"
    end
end

# results = []
# 5.times { |i| results.push Card.new(rand(1..13), ["C", "D", "T", "E"].sample)}
# puts results