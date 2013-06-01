extend SeedFunctions

puts "Seeding BEA Data Variable Distributions"

if (BeaVariableDistribution.count == 0)
  create_bea_variable_distributions
end