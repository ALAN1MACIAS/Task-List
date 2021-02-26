class Sharestorage < ApplicationRecord
  belongs_to :user
  belongs_to :taskstorage
end
