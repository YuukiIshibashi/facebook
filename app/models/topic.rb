class Topic < ApplicationRecord
	validates :content,presence: true
  belongs_to :user
	has_many :pictures, dependent: :destroy
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :pictures, allow_destroy: true
end
