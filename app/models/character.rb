class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def catchphrase
      puts "#{self.name} always says: "
  end
end
