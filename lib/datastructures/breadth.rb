module Search
  class Breadthfirst
    def initialize()

    end
    def breadth()

    end
  end
end

module Datastructures
  class Graph
    def initialize(value, parents = [], children = [] )
      @value = value
      @parents = parents
      @children = children
    end

    def to_s
      @value
    end

    # Getters
    def getValue()
      @value
    end

    def getParents()
      @parents
    end

    def getChildren()
      @children
    end

    # Setters

    ##Parents Methods
    def addParent(parent)
      if !@parents
        @parents = []
      end
      @parents << parent
    end

    def addParents(parents)
      if !@parents
        @parents = []
      end
      @parents + parents
    end

    def setParents(parents)
      if !@parents
        @parents = []
      end
      @parents + parents
    end

    ##Children Methods
    def addChild(child)
      if !@children
        @children = []
      end
      @children << child
    end

    def addChildren(children)
      if !@children
        @children = []
      end
      @children + children
    end

    def setChildren(children)
      @children = []
      @children + children
    end

  end
end
b = Search::Breadthfirst.new()
