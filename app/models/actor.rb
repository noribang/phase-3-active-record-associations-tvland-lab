class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def characters 
        self.characters
    end
  
    def shows
        self.shows
    end

    def full_name
        first = self.first_name
        last = self.last_name
        fullname = first + " " + last
        # "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        self.characters.map do |character|
            "#{character.name} - #{character.show.name}"
        end
    end
end