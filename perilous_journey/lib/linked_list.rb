require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(surname)
    if empty?
      self.head = new_node(surname)
    else
      last_node(head).next_node = new_node(surname)
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

  def new_node(surname)
    Node.new(surname)
  end
end
