class Actor < ActiveRecord::Base
  belongs_to :show
  has_many :characters

  def full_name
        "#{self.first_name} #{self.last_name}"
  end

  def list_roles
      id = self.characters.first.show_id
      "#{self.characters.name} - #{Show.find(id)}"
  end
  binding.prys
end
