class Entry < ActiveRecord::Base
  validates :author, :photo_url, presence: true
  validate :date_check

  def date_check
    if date_taken < Date.new(2010, 10, 1)
      errors.add(:date_check, "must be after Oct 1, 2010")
    end
  end

end