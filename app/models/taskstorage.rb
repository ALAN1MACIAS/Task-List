class Taskstorage < ApplicationRecord
  has_many :tasks, dependent: :delete_all
  has_many :sharestorage
  belongs_to :user

  after_create :save_sharetorage

  private
    def save_sharetorage
      Sharestorage.create(user_id: @user, taskstorage_id: self.id)
    end
end
