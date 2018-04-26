class Actor < ActiveRecord::Base
  belongs_to :show

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

  end
end
