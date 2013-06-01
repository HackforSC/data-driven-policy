extend SeedFunctions

puts "Seeding Production Employee Roles"
if (EmployeeRole.find_by_name("Administrator").nil?)
  role = create_employee_role({:name => "Administrator"})
  unless role.nil?
    puts "-- created Employee Role #{role.name}"
  end  
end
