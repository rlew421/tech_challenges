require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(surname)
    node = Node.new(surname)
    if empty?
      self.head = node
    else
      last_node(head).next_node = node
    end
  end

  def count
    if head.nil?
      0
    else
      1
    end
  end

  def to_string
    "The #{head.surname} family"
  end

  def last_node(node)
    return node if node.tail?
    last_node(node.next_node)
  end

  def empty?
    head.nil?
  end
end
