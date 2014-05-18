class Item < ActiveRecord::Base

  validates :source, :category, :location, presence: true

  searchable do
    text :category, boost: 5.0
    text :location
    text :source
    latlon(:location) { Sunspot::Util::Coordinates.new(lat, lon) }
  end


  # def self.search(search)
  #   if search
  #     where 'source LIKE :search OR category LIKE :search OR location LIKE:search OR updated_at LIKE :Search', :search => "%#{search}%"
  #   else
  #     scoped
  #   end
  # end
end

