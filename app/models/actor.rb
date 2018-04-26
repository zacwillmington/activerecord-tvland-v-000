class Actor < ActiveRecord::Base
  belongs_to :show
  has_many :characters

  def full_name
        "#{self.first_name} #{self.last_name}"
  end

  def list_roles
      binding.pry
      
      id = self.characters.show_id
      "#{self.characters.name} - #{Show.find(id)}"
      binding.pry
  end
end
