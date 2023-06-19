class Post < ApplicationRecord
    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :image
    has_one_attached :image
    belongs_to :user
    has_many :comments, dependent: :destroy
end
