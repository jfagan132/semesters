require "./semester.rb"
require "minitest/autorun"

class TestSemester < Minitest::Test 
    def test_next_semesters
        assert_equal("Summer2015", Semester.new.next_semesters("Spring2015",1))
        assert_equal("Fall2016", Semester.new.next_semesters("Fall2015",3))
        assert_equal("Fall2015", Semester.new.next_semesters("Summer2015",1))
        assert_equal("Spring2026", Semester.new.next_semesters("Fall2015",31))
    end
end