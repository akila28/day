class No < ActiveRecord::Base

before_save :calculate_total 
def calculate_total
  self.total = ( Date.today - opening_date ).to_i
end


end
