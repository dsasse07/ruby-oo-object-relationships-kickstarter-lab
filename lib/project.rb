require 'pry'


class Project
    @@all = []
    attr_reader :title
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all        
    end

    def add_backer(backer_obj)
        ProjectBacker.new(self, backer_obj)
    end

    def backers
        my_projects = ProjectBacker.all.select {|project_backer| project_backer.project == self}
        my_projects.map(&:backer)
    end
end