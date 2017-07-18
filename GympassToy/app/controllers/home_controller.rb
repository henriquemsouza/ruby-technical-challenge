class HomeController < ApplicationController
    def index
		@gyms =Gym.take(3)
	end
  
end
