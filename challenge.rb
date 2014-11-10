require_relative "lib/jason_prime"

def formatted_print(item)
  printf("%5d", "#{item}")
end

nth_prime = 10

first_ten_primes = JasonPrime.new.primes_to_nth_prime(nth_prime)

print "     "
first_ten_primes.each { |prime| formatted_print(prime) }
puts

first_ten_primes.each do |prime|
  formatted_print(prime)
  first_ten_primes.each { |multiplier| formatted_print(prime * multiplier) }
  puts
end

