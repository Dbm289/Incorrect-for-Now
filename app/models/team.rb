class Team < ActiveRecord::Base

    has_many :users
    has_many :courts


    attr_accessor :team_name

    @@all = []

    def initialize(params)
        @team_name = params[:team_name]

    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end



end