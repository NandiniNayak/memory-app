class MemoryTest < ActiveRecord::Base
  belongs_to :user
# Before we save to the database we run the check_answers function
  before_save :check_answers
  
# This is a function or method
  def check_answers
    # Create a variable to record the score
    test_score = 0
    
    # Test is each user's answer matches the real answer
    # If they match, we increment the score
    if self.qName == "Jamie"
       test_score = test_score + 1
    end
    
    if self.qBirthday == "19 May"
       test_score = test_score + 1
    end
    
    if self.qSuburb == "Bondi"
       test_score = test_score + 1
    end
    
    if self.qPet == "Jack"
       test_score = test_score + 1
    end
    
    if self.qSchool == "Coder Factory"
       test_score = test_score + 1
    end
    
    if self.qJob == "CEO"
       test_score = test_score + 1
    end
    
    if self.qGrandchildren == "3"
       test_score = test_score + 1
    end
    
    self.score = test_score
  end
end
