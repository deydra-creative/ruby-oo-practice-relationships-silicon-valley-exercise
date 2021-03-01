class Startup
    attr_accessor :startup, :vertical
    attr_reader :founder
    
    @@all=[]

    def initialize(startup, founder, vertical)
        @startup=startup
        @founder=founder
        @vertical=vertical

        @@all << self 
    end

    def self.all
        @all
    end

    def self.find_by_founder (founder_name)
       self.all.find{|f| f.founder == founder_name}
    end 

    def startup_pivot
        self.vertical=vertical
        self.name=name
    end

def sign_contract
    FundingRound.new(startup, self, round, round_size)
end

def num_funding_rounds
    FundingRounds.count
end 

def total_funds
    FundingRound.collect{|f| f.round_size}.sum
end 

def startup_investors
    result=[]
    Venture_Capitalist.map do |startups|
        result << name
    end
    result.uniq
end

def big_investors
    investors.select{
        |i| i.include?(VentureCapitalist.billionaire_club)}
end 
end