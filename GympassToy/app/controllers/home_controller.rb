class HomeController < ApplicationController
    #Limits the number of gyms to be displayed on the home screen
    def index
		@gyms =Gym.take(4)
	end
  
end
