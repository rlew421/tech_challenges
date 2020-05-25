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
    return 0 if empty?
    count_node(head, 1)
  end

  def to_string
    return "" if empty?
    return sentence_starter if head.tail?
    stringify_node(head.next_node, sentence_starter)
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

  def count_node(node, counter)
    return counter if node.tail?
    count_node(node.next_node, counter += 1)
  end

  def concat(sentence, node)
    "#{sentence}, followed by the #{node.surname} family"
  end

  def stringify_node(node, sentence)
    return concat(sentence, node) if node.tail?
    stringify_node(node.next_node, concat(sentence, node))
  end

  def sentence_starter
    "The #{head.surname} family"
  end
end
