class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters

    belongs_to :network

    def actors_list
        cast = self.characters
        cast.map{|c| "#{c.actor.first_name} #{c.actor.last_name}" }
        #characters.map{|c| "#{c.actor.full_name}"}
    end
end