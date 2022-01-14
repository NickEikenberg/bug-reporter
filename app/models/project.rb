class Project < ApplicationRecord
    has_many :bugs
    belongs_to :user, optional: true
    has_many :users

end
