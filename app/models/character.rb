class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    # should return the actor instance this character belongs to
    def actor
        self.actor
    end

    # should return the show instance this character belongs to
    def show
        self.show
    end

    def say_that_thing_you_say
        self.catchphrase
    end

end