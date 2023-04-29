class Message < ApplicationRecord
  belongs_to :topic
  broadcasts_to :topic
  
end
