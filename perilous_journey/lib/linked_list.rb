require './lib/node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(surname)
    empty? ? set_head(surname) : set_tail(surname)
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

  private

  def set_head(surname)
    self.head = new_node(surname)
  end

  def set_tail(surname)
    last_node(head).next_node = new_node(surname)
  end
end
