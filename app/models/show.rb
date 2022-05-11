class Show < ActiveRecord::Base
    has_many :actors 
    has_many :characters 
    has_many :actors, through: :characters 
    belongs_to :network 

    def actors_list
        
        actors = []

        self.actors.map do |a|
            actor_name = a.full_name 
            actors << actor_name 
        end 

        actors 

    end 
  
end