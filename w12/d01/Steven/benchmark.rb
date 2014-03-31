require 'benchmark'

###############
### Setup!
###############

def linear(n)
  return n + 1
end

###############
### Thunderdome
###############
puts "Ready, steady, Go!"
# http://www.ruby-doc.org/stdlib-1.9.3/libdoc/benchmark/rdoc/Benchmark.html
# http://rubylearning.com/blog/2013/06/19/how-do-i-benchmark-ruby-code/

iterations = 10 # Run the test mutliple iterations to make sure we get a meaningful number.
n = 1000

# (10) is padding for headers so we get nice looking output
Benchmark.bmbm(10) do |bm|
  # The times for some benchmarks depend on the order in which items are run. 
  # These differences are due to the cost of memory allocation and garbage collection.
  # To avoid these discrepancies, the bmbm method is provided. 
  # `bmbm` first runs the code as a 'rehearsal' to force any initialization that needs to happen and 
  # and ensure that the system is fully initialized and the benchmark is fair.

  bm.report("Linear") do
    iterations.times do
      linear(n)
    end
  end

end