class Array
  puts "****************************************"
  puts "inserte número a buscar"
  target = gets.to_i
  puts "Ingrese array de números separado por espacios"
  new_array = gets.chomp
  #string to array to_i
  new_array = new_array.split(' ').map(&:to_i)
  #summing and compare with target
  final_array = new_array.combination(2).find_all{|a,b| a + b == target}.flatten
  first = final_array.first
  last = final_array.last
  #adding index
  index1 = new_array.index(first)
  index2 = new_array.index(last)
  if new_array.include?(first) and new_array.include?(last)
    puts "número #{first} con index #{index1}"
    puts "****************************************"
    puts "número #{last} con index #{index2}"
    puts "****************************************"
  else
    puts "****************************************"
    puts "No se puede realizar la suma, no coinciden los datos"
    puts "****************************************"
  end
end

#Lo hice de manera diferente, tratando de usar los métodos que provee array. Saludos!
