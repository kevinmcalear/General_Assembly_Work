class Trailer < ActiveRecord::Base
  belongs_to :movie
  validates :embed_url, presence: true
end