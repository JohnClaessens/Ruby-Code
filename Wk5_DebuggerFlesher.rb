#====================================
# Wk5 - Debug
# T. J. Flesher
# Football Predictions Big 10 (2017)
# Looping over a Hash
#====================================

conf = {
	"Big 10" = {
		"first" => "Ohio State",
		"second" => "Michigan",
		"third" => "Penn State",
		"fourth" => "Wisconsin",
		"fifth" => "Iowa",
		"sixth" => "Nebraska",
		"seventh" => "Northwestern",
		"eighth" => "Minnesota",
		"ninth" => "Michigan State",
		"tenth" => "Maryland"
		"eleventh" => "Indiana",
		"twelth" => "Purdue",
		"thirteenth" => "Illinois",
		"fourteenth" => "Rutgers"
	}
}

conf.each do |conf school|
	puts "\n" + conf + " Conference\n\n"
	school.each  |rank, teams
		puts "    #{teams} is predicated to be ranked #{rank}.\n\n"   #<<-- String Interpolation Bonus!
	end
end
puts "\nURL: http://www.scout.com/story/1745240-way-too-early-big-ten-football-power-rankings\n\n"