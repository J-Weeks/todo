class Task < ActiveRecord::Base
  belongs_to :list
  has_many :notes
  validates :title, presence: true
end
