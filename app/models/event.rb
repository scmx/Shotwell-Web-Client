class Event < ActiveRecord::Base

  self.table_name = 'EventTable'

  has_many :photos

end
