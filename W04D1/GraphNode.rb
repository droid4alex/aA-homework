class GraphNode
  attr_reader :value, :children, :parent
  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def isroot?
    @parent == nil
  end

  def parent=(parent_node)

    # if parent_node == nil   WHY IS THIS NEEDED??
    #   @parent = nil
    #   return nil
    # end
    @parent.children.delete(self) if @parent != nil
    parent_node.children << self #if !parent_node.children.include?(self)    WHY IS THIS NEEDED??
    @parent = parent_node
  end
end
n1 = GraphNode.new("root1")
n2 = GraphNode.new("root2")
n3 = GraphNode.new("root3")
# connect n3 to n1
n3.parent = n1
# connect n3 to n2
n3.parent = n2

# this should work
raise "Bad parent=!" unless n3.parent == n2
raise "Bad parent=!" unless n2.children == [n3]

# this probably doesn't
raise "Bad parent=!" unless n1.children == []