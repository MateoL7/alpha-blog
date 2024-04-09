class Article < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum:15}
  validates :description, presence: true, length: {minimum: 10, maximum:35}
end