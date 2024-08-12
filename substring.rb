dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substring(string, array)
  string_array = string.gsub(/[^A-Za-z0-9\s]/i, ' ').downcase.split(" ")
  result = Array.new
  q = 0

  string_array.each do |word|
    array.each do |compare|
      word.include?(compare) ? result.push(compare) : q += 1
    end
  end

  p result.tally
end

substring("Howdy partner, sit down! How's it going?", dictionary)