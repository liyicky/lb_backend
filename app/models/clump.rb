class Clump < ActiveRecord::Base
  validates :url, presence: true
  validates :url, :format => URI::regexp(%w(http https))
end
