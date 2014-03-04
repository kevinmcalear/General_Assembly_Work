class Dog < ActiveRecord::Base
  validates :author, presence: true
  validates :photo_url, presence: true
  validates :date_validated

  def date_validated
    errors.add(:)
  end


end