class Court < ActiveRecord::Base

    has_many :teams
    has_many :users, through :teams

    attr_accessor :quality



end