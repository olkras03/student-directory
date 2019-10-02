def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice."

    students = [] 

    name = gets.chomp 
    while !name.empty? do 
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students"
        name = gets.chomp 
    end 
    students
end 



def print_header
    puts "The students of Villains Academy"
    puts "--------------"
end 

def select_names_starting_with(students)
    students.each_with_index do |student, index| 
        if student[:name].chars.first == "S"
        puts "#{index + 1} #{student[:name]} (#{student[:cohort]} cohort)"
        end 
    end 
end

def print_footer(names)
    puts "Overall we have #{names.count} great students"
end

students = input_students
print_header
select_names_starting_with(students)
print_footer(students)

