class Topic < ApplicationRecord
  belongs_to :user
	has_many :pictures, dependent: :destroy
	has_many :comments, dependent: :destroy
	accepts_nested_attributes_for :pictures
end
