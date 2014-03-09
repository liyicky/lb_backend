class Clump < ActiveRecord::Base
  validates :url, :shit, presence: true
  validates :url, :format => URI::regexp(%w(http https))
end
