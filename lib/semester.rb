class Semester
  
  def next_semesters(current,num)  
    sem_season = current[0..(current.length-5)]
    sem_year = current[(current.length-4)..(current.length-1)].to_i
    #sem_set = Array.new
    num.times do
      if sem_season == "Spring"
        sem_season = "Summer"
      elsif sem_season == "Summer"
        sem_season = "Fall"
      elsif sem_season == "Fall"
        sem_season = "Spring"
        sem_year += 1
      #sem_set.push(sem_season + sem_year)
      end
    end
    return sem_season + sem_year.to_s
    #return sem_set
  end
    
end