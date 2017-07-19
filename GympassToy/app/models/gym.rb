class Gym < ApplicationRecord
   #Validate form fields
   validates_uniqueness_of  :gym_name 
   validates_presence_of :gym_name 
   
end
