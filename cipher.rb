
def cipher(key)
  puts "What is the message to code Sir?"
  sentence = gets.chomp
  string_to_number = sentence.bytes
  
  new_number = []
  string_to_number.each {|letter| new_number.push(letter + key)}
  resolving_space = new_number.map { |num| num == (32+key) ? 32 : num }
  resolving_space
  
  coded_sentence = []
  resolving_space.each { |num| coded_sentence.push(num.chr) }
  
  puts coded_sentence.join
end

cipher(6)








