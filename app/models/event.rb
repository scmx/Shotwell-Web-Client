class Event < ActiveRecord::Base

  self.table_name = 'EventTable'

  has_many :photos

  def created_at
    Time.at(time_created)
  end

  def title
    name || created_at.strftime('%Y-%m-%d')
  end

end
