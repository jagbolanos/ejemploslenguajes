puts "Ingrese x: "
x = gets.to_i

y = if x > 5 then "Es mayor que 5" else false end

puts y

z = x.times do  end

puts z

w = for x in (5..13) do puts x end

puts w

w = 99

puts w

l = lambda {|x| x * x}

puts l.call(12)
