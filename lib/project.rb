class Project
  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    Backer.new(self) unless backer.backed_projects.include?(self)
    end
end
