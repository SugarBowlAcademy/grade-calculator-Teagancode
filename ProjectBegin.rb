=begin
in this project you will be creating a program that tells people what grade they will need on a test to get a particular overall grade in the class. Look at the pseudocode below as an example of how the the UI is and how the calculation works
=end

#Example 1

#My current overall grade is 80/100
# my next test is worth 20 points
# I want to know what grade I will need on the test in order to keep a C in the class
# I know that the overall points in the class will be 120
# and that 120*.7 is 84 so I will need a 4/20, or 20% on the next test to maintain a 70% in the class.


#Example 2

# my current grade is 45/50, a 90%
# I want to know how to move to a 95% if my next test is worth 25 points
# I know that my overall grade will be out of 75 points, and .95 of 75 is 71.25
# so the person will need 71.25-45=26.5 points on the next test or 106% to get a 95%


puts "What is the total amount of points in your class?" #this asks how many points are in the class
class_total=gets.to_f #this stores the answer


puts "How many points do you currently have in this class?" #this asks how many points the student has in the class
student_total=gets.to_f #stores the answer again
your_grade=(student_total / class_total)*100 #this is the percentage they have in the class

puts "How many points is this assignment out of?" #This asks you how many points the upcoming assignment is out of
test_points=gets.to_f #this stores the answer

new_class_total=test_points + class_total #this gets you the new class total, how many points will be in the class after the test
puts "What grade percentage would you like to have or maintain after this test?"#this asks them what grade they would like after the test
after_test=gets.to_f #this stores the answer

after_test=after_test/100 #this makes the numbers into decimals to make it easier to get a percentage
after_test=(after_test * new_class_total)#this tells you what you need to get on the test to get the certain percentage

test_grade = after_test-student_total #this gets you the percentage you need for the test
puts "You need to get a #{test_grade}% on the test. Good luck!" #this tells you the percantage you need and tells you good luck
