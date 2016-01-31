class Library < ActiveRecord::Base

  has_many :books, dependent: :destroy

  validates :name, presence: true, length: {minimum: 4}, uniqueness: true
  validates :late_fee, numericality: { only_integer: true}
  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 1000 }

  # before_update :late_book




  # protected




  # def late_book
  #     lends = Lend.all
  #     self.joins(:lends).where(overdue_lend: true)
  #     revenue = 0
  #     lends.each do |lend|
  #     revenue + fee
  #   end
  #     return revenue
  # end

end
