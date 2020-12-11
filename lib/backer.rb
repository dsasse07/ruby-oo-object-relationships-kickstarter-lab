require 'pry'

class Backer
    @@all = []
    attr_reader :name
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all        
    end

    def back_project(project_obj)
        ProjectBacker.new(project_obj, self)
    end

    def backed_projects
        my_projects = ProjectBacker.all.select {|project_backer| project_backer.backer == self}
        my_projects.map(&:project)
    end

end