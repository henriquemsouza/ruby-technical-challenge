class Gym < ApplicationRecord
   validates_uniqueness_of  :gym_name 
   #,:gym_manager
  
   validates_presence_of :gym_name 
   
end
