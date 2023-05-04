class Topic < ApplicationRecord
    has_many :messages, dependent: :destroy
    belongs_to :user
    broadcasts
    validates :title, presence: true
    validates :content, presence: true
end
