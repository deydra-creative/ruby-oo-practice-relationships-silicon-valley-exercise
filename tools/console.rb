require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

s1 = Startup.new("PajamaLesson", "Caroline Starr", "EdTech")
s2 = Startup.new("LunaRocket", "Luna Rose", "SpaceTourism")
s3 = Startup.new("JustBreathe", "Alon Carmeli", "HealthTech")

vc1 = VentureCapitalist.new("Penny Pincher", 1000000000)
vc2 = VentureCapitalist.new("Price Isright", 50000000)
vc3 = VentureCapitalist.new("Rich Quick", 7500000)

fr1 = FundingRound.new(s2, vc3, "Seed", 2500000)
fr2 = FundingRound.new(s2, vc2, "Series_A", 12000000)
fr3 = FundingRound.new(s2, vc1, "Series_B", 30000000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line