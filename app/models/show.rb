class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def self.characters 
    self.characters.all
  end

  # def network
  #   self.network
  # end

  def actors_list
    self.actors.where(first_name: "Andrew").first.first_name + " " + self.actors.where(last_name: "Lincoln").first.last_name
  end 


end