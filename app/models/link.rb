class Link < ApplicationRecord
  validates_presence_of :url

  def self.hot_links
    Link.all.limit(10)
  end
end
