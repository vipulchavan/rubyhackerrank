str = 'vipul vitthal chavan'
count_hash = Hash.new
str.gsub!(/ /,'').each_char { |chr| count_hash[chr] = str.count(chr)}
