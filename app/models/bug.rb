class Bug < ApplicationRecord
  belongs_to :User
  belongs_to :Project
end
