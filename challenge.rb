require_relative "helpers/prime_helper"
require_relative "helpers/prime_printer"

nth_prime = 10

first_ten_primes = PrimeHelper.primes_to_nth_prime(nth_prime)
PrimePrinter.print_multiplication_table(first_ten_primes)

