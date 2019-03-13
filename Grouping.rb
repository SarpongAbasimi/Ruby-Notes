
players = [
    { :name => "Sam", :sport => "tennis" },
    { :name => "Mary", :sport => "squash" },
    { :name => "Ed", :sport => "tennis" },
    { :name => "Mark", :sport => "football" }
]

#get the key value pairs

sorted_players = Hash.new

players.each do |each_player|
    if sorted_players[each_player[:sport]] == nil
        sorted_players[each_player[:sport]] = [ each_player[:name]]
    else
        sorted_players[each_player[:sport]].push(each_player[:name])    
    end
end

puts sorted_players
