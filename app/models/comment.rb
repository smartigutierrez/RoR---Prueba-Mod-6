class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user
    validates_presence_of :content
    has_one_attached :avatar

end
