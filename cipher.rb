# This is the better way proposed by Mistral.ai
# def cipher(key)
#   puts "What is the message to code Sir?"
#   sentence = gets.chomp

#   new_sentence = sentence.each_char.map do |char|
#     char_code = char.ord
#     shift = (char_code + key - (char =~ /[a-z]/i ? 97 : 65)) % 26 + (char =~ /[a-z]/i ? 97 : 65)
#     shift.chr
#   end

#   puts new_sentence.join
# end

def cipher(key)
  puts "What is the message to code Sir?"
  sentence = gets.chomp
  string_to_number = sentence.bytes
  
  new_number = []
  string_to_number.each do |letter|
    new_letter = letter
      case letter

        when 65..90
          if letter + key > 90
            new_letter = letter + key - 25
          elsif letter + key < 65
            new_letter = letter + key + 25      
          else
            new_letter = letter + key
          end
          
        when 97..122
          if letter + key > 122
              new_letter = letter + key - 25
          elsif letter + key < 97
              new_letter = letter + key + 25      
          else
              new_letter = letter + key
          end
      end
    new_number.push(new_letter)
  end 
  resolving_space = new_number.map { |num| num == (32+key) ? 32 : num }
  resolving_space
  
  coded_sentence = []
  resolving_space.each { |num| coded_sentence.push(num.chr) }
  
  puts coded_sentence.join
end

def get_key
  puts "What is the key number Sir? (between -25 and 25)"
  key = gets.chomp.to_i
  if key > -25 or key < 25
    return key
  else puts "That is not possible!"
  end
end


cipher(get_key)