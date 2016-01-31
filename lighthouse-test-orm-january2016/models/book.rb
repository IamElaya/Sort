class Book < ActiveRecord::Base

  belongs_to :library

  validates :library, presence: true, allow_nil: true
  validates :title, presence: true, length: {maximum: 500}
  validates :author, presence: true, length: {minimum: 5, maximum: 100}
  validates :pages, numericality: {only_integer: true, greater_than_or_equal_to: 4}
  validates :isbn, format: {with: /\A\d{9}[-][\d||X]\z/, message: 'is not a valid ISBN' }

  
end
