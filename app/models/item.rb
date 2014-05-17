class Item < ActiveRecord::Base

  def self.search(search)
    if search
      where 'source LIKE :search OR category LIKE :search OR location LIKE:search OR updated_at LIKE :Search', :search => "%#{search}%"
    else
      scoped
    end
  end
end

