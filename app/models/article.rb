class Article < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :article_likes, dependent: :destroy

  validates :title, { presence: true, length: { in: 1..110 } }
  validates :body, { presence: true, length: { maximum: 10000 } }
end
