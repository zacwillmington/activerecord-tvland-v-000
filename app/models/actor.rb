class Actor < ActiveRecord::Base
  belongs_to :shows
  has_many :characters

  def full_name
        "#{self.first_name} #{self.last_name}"
  end

  def list_roles
    #   binding.pry
    #   id = self.show_id
    #   binding.pry
    #   show_name = Show.find_by(id).name
    #   "#{self.characters.name} - #{show_name}"
    #   binding.pry
    role = []
      self.characters.all.each do |char|
          binding.pry
          role << "#{char.name} - #{Show.find_by(char.show_id)}"
      end
      role
      binding.pry
  end
end
