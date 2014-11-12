class PrimePrinter
  def self.print_multiplication_table(primes_list)
    print "     "
    primes_list.each { |prime| print_cell(prime) }
    puts

    primes_list.each do |prime|
      print_cell(prime)
      primes_list.each { |prime_multiplier| print_cell(prime * prime_multiplier) }
      puts
    end
  end

  def self.print_cell(data)
    printf("%5d", "#{data}")
  end
end
