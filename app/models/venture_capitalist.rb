class Venture_Capitalist
    attr_accessor :networth
    attr_reader :name 

    @@all=[]

def initialize (name, networth)
    @name=name
    @networth=networth

    @@all << self 
end 

def self.all
    @@all
end

def billionaire_club
    @@all.map{|b| puts b.name if  b.networth >= 1000000000}
end 

def offer_contract
    FundingRound.new(startup, self, round, round_size)
end 

def funding_rounds
    @@all.collect{|f| f.rounds == rounds}
end

def portfolio
    result=[]
    Startups.map do |startups|
        result << portfolio
    end
    result.uniq
end

def biggest_investment
    @@all.select{|r| r.round_size == round_size.max}
end

def vc_verticals (vc_verticals)
    sum = 0
round.map{|r| r.startup.vertical = vc_verticals}.each 
    do |r|.sum += round.round_size 
    end
   return sum
end
end