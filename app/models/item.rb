class Item < ActiveRecord::Base

  def self.search(search)
    where('location like ? OR  source like ? OR category like ?', "%#{search}%","%#{search}%","%#{search}%",)
  end
end