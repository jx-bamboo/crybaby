class Rune < ApplicationRecord
  validates :social, :username, :principal, presence: true
end
