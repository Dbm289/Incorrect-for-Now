class Court < ActiveRecord::Base

    belongs_to :teams
    has_many :users, through: :teams

end