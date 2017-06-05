class Link < ApplicationRecord
  validates_presence_of :url

  def self.hot_links
    Link.select('links.url, count(links.url) as total')
      .group('links.url')
      .order('total desc')
      .limit(10)
  end
end
