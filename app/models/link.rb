class Link < ApplicationRecord
  validates_presence_of :url

  def self.hot_links
    Link.select('links.url, count(links.url) as total')
      .where('created_at > ?', 24.hours.ago)
      .group('links.url')
      .order('total desc')
      .limit(10)
  end
end
