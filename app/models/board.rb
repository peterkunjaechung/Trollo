class Board < ApplicationRecord
    has_many :tasks, dependent: :destroy
    has_many :lists, through: :tasks
end
