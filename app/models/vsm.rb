class Vsm < ActiveRecord::Base
	belongs_to :user
	validates :user_id, presence: true

	validates :file_name, presence: true, length: {minimum: 3, maximum: 20}

	validates :inventory1, presence: true
	validates :processA, presence: true
	validates :resourceA, presence: true
	validates :dataA1, presence: true
	validates :dataA2, presence: true

	validates :dataA3, presence: true
	validates :inventory2, presence: true
	validates :processB, presence: true
	validates :resourceB, presence: true
	validates :dataB1, presence: true

	validates :dataB2, presence: true
	validates :dataB3, presence: true
	validates :inventory3, presence: true
	validates :processC, presence: true
	validates :resourceC, presence: true

	validates :dataC1, presence: true
	validates :dataC2, presence: true
	validates :dataC3, presence: true
	validates :inventory4, presence: true
	validates :processD, presence: true

	validates :resourceD, presence: true
	validates :dataD1, presence: true
	validates :dataD2, presence: true
	validates :dataD3, presence: true
	validates :PLT1, presence: true

	validates :PLT2, presence: true
	validates :PLT3, presence: true
	validates :PLT4, presence: true
	validates :PT1, presence: true
	validates :PT2, presence: true

	validates :PT3, presence: true
end