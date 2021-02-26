class User < ActiveRecord::Base

    belongs_to :team
    has_many :courts, through teams

    attr_accessor :name, skill_level, coach_skill_level, position, alt_position

    @@all = []

    def initialize(params)
        @name = params[:name]
        @skill_level = params[:skill_level]
        @coach_skill_level  = params[:coach_skill_level]
        @position = params[:position]
        @alt_position = params[:alt_position]
        @@all << self
    end

    def self.all
        @@all
    end



end