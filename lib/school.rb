# code here!

class School
  attr_reader :roster

  def initialize(roster)
    roster = {}
    @roster = roster
  end

  def add_student(student, grade)   
    @roster[grade]||= @roster[grade] = []
    @roster[grade] << student

    #if @roster.has_key?(grade)
    #  @roster[grade] << student
    #else @roster[grade] = [student]
    #end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    Hash[@roster.sort]
    @roster.each {|key, value_array|
    value_array.sort!
    }
  end
  end
