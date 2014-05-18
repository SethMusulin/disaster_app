class Item < ActiveRecord::Base

  belongs_to :person

  validates :source, :category, :location, presence: true

  searchable do
    text :category, boost: 5.0
    text :location
    text :source
    latlon(:location) { Sunspot::Util::Coordinates.new(lat, lon) }
  end

end

