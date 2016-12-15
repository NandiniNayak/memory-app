class MemoryCheck < ActiveRecord::Base
  belongs_to :user
  before_save :check_answers
  
  def check_answers
    test_score = 0
    if self.q1.downcase == "apple"
        test_score = test_score + 1
    end
    if self.q2.downcase == "banana"
        test_score = test_score + 1
    end
    if self.q3.downcase == "carrot"
        test_score = test_score + 1
    end
    if self.q4.downcase == "delicious"
        test_score = test_score + 1
    end
    if self.q5.downcase == "eggplant"
        test_score = test_score + 1
    end
    if self.q6.downcase == "fruit"
        test_score = test_score + 1
    end
    self.score = test_score
  end
end
