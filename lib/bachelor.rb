require 'pry'
def get_first_name_of_season_winner(data, season)
d, b = [], []

data.keys.collect do |season|
 contestants = data[season]
 contestants.each do |person|
      d << [season, person]
      #[person, data[person][:season]]
      end
      end
  d.each do |person|
    if person[0] == season
    b << person
    end
  end
  b
c =[]
      b.each do |i|
        if i[1]["status"] == "Winner"
        c << i
        end
    end

c.flatten[1]["name"].split.first

    # data[season].each do |people|
    #
    #   people.each do |k,v|
    #     if v == "Winner"
    #         full_name = people["name"]
    #         return full_name.split(' ').first
    #     end
    #   end
    # end
end



def get_contestant_name(data, occupation)

  data.each do |season, array|
    array.each do |people|
      people.each do |k,v|
        if v == occupation
          return people["name"]
        end
      end
    end
  end
  # code here
end




def count_contestants_by_hometown(data, hometown)
  keys = data.keys
  contestants = ""
  counter = []
            keys.each do |season|
              contestants = data[season]
                contestants.each do |person|
              counter << person["hometown"]
              end
              end
  locations = counter.sort_by{|i|i}

  d = []
  i = 0
        while i < locations.length
          d << locations[i]#[0..(locations[i].index(",").to_i-1)]
            i+=1
        end

  counts = Hash.new(0)
  d.each do |i|
    counts [i]+=1
    end

  counts[hometown]

end




def get_occupation(data, town)
  keys = data.keys

    d = []
    keys.each do |season|
      contestants = data[season]
      contestants.each do |person|

            if person["hometown"] == town

              d << person["occupation"]
                break
              end
      end
    end
d.join
end



def get_average_age_for_season(data, season)
###NEED TO ITERATE AND GIVE AVERAGE AGE OF CONTESTANTS/SEASON
j = []

       data[season].collect do |i|
        i.collect do |k,v|

        if k == "age"
               j << v
    end
  end
end
t =""
t = j.flatten.compact.size
# a = j.reduce(:+)

            c = []
                    j.collect do |i|
                    c << i.to_i
            end

c = c.reduce(:+)
c/t.to_i

end
