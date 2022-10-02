# frozen_string_literal: true

class SpaceX < ApplicationRecord 
    
    def stats 
        puts fetch_data.count
    end 

    def general_info
             @general_info ||= begin 
            puts "Fetching stats from SpaceX API"
            JSON.parse(RestClient.get("https://api.spacexdata.com/v3/info"))
        end 
    end

    private 

    def fetch_data 
        puts "Fetching data from SpaceX API"
        sleep 3 
        data = JSON.parse(RestClient.get("https://api.spacexdata.com/v3/launches/latest")) 
        puts "Fetched data from SpaceX API completed"
        return data
    end
end 

launch_stats = SpaceX.new
launch_stats.stats
