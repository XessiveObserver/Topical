class Topic < ApplicationRecord
    has_many :messages, dependent: :destroy
    broadcasts
    validates :title, presence: true
    validates :content, presence: true
end
