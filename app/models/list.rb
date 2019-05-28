class List < ApplicationRecord
    has_many :tasks, dependent: :destroy
  has_many :boards, through: :tasks
end
