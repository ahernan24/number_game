class Game < ActiveRecord::Base
  
  before_create :update_answer
  
  def update_answer
    self.answer = rand(0...10)
  end
  
end
