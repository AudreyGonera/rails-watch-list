class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie

  validates :comment, length: { minimum: 6, too_short: "min 6 characters" }
  validates :list_id, :movie_id, presence: true
  validates :movie_id, uniqueness: { scope: :list_id }
end
