class Project < ApplicationRecord
    has_many :bugs, optional: true
    belongs_to :user, optional: true
    has_many :users, optional: true

end
