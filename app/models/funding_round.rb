class FundingRound
attr_reader :startup, :vc, :round, :round_size

@@all=[]

def initialize(startup, vc, round, round_size)
    @startup=startup
    @vc=vc
    @round=round
    @round_size=round_size

    @@all << self
end 
end
