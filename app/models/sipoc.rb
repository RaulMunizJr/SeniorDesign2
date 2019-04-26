class Sipoc < ApplicationRecord
    belongs_to :user
	validates :user_id, presence: true
	validates :file_name, presence: true, length: {minimum: 3, maximum: 20}
end
