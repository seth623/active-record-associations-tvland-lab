class Actor < ActiveRecord::Base
    has_many :characters 
    has_many :shows, through: :characters 

    def full_name 
        "#{self.first_name}" + " #{self.last_name}"
    end 
    
    def list_roles
        
        roles = []

        self.characters.map do |c|
            role = "#{c.name} - #{c.show.name}"
            roles << role 
        end

        roles 

    end 
  
end