class Preferences 
	attr_accessor :books, :music, :workouts, :calendar

	def initialize 
		@books, @music, @workouts = books, music, workouts
		#Hashes where key is like and value is what is liked and dislike is where you dont like it 
	end

	def like(item)
		case 
		when Book 
		@books << item
		when Music
		@music << item
		when Workout
		@Workout << item  
		when Calendar
		@calendar << item	
	end
	def dislike(item)
		case 
		when Book 
		@books << item
		when Music
		@music << item
		when Workout
		@Workout << item 
		when Calendar
		@calendar << item 
		end 
	end
end


