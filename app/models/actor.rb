class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def self.characters
    self.actors.all
  end

  def self.shows
    self.shows.all
  end

  def full_name
    self.first_name + " " + self.last_name
    # self.actors.last_name
  end

  def list_roles
    self.characters.first.name + " - " + self.shows.first.name
  end 


end