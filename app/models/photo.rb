class Photo < ActiveRecord::Base

  self.table_name = 'PhotoTable'

  belongs_to :event

end
