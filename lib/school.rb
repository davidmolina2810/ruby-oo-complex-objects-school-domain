# code here!
require 'pry'

class School

  attr_accessor :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if !@roster[grade]
      @roster[grade] = [student_name] 
    else
      @roster[grade] << student_name
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each_with_object({}) do |(grade, students_arr), hash|
      students_arr.sort!
      hash[grade] = students_arr
    end
  end
end