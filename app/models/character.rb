class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
      binding.pry
      arr =[]
      arr << "#{self.name} always says: #{self.catchphrase}"
      arr
      binding.pry

  end
end
