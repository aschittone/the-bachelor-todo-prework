
# iterate through arrays of season to get each individual season
# iterate through each season to get data of each contestant

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash["status"].downcase == "winner"
      first_name = hash["name"].split(" ")
      return first_name[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  sum_of_ages = 0
  data[season].each do |hash|
    sum_of_ages += hash["age"].to_f
    counter += 1
  end
  return (sum_of_ages / counter).round
end
