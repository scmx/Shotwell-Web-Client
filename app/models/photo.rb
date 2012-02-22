class Photo < ActiveRecord::Base

  self.table_name = 'PhotoTable'

  belongs_to :event

  def thumb_path
    Pathname.new('thumbs/' + self.id.to_s + '.jpg')
  end

end
