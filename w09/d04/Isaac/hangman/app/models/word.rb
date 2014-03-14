class Word < ActiveRecord::Base
  validate :word, presence: true, uniqueness: true
end