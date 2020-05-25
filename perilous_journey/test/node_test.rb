require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
  def test_new_returns_a_node
    subject = Node.new('Burke')
    assert_instance_of Node, subject
  end

  def test_surname_returns_name
    subject = Node.new('Burke')
    assert_equal 'Burke', subject.surname
  end

  def test_next_node_returns_nil
    subject = Node.new('Burke')
    assert_nil subject.next_node
  end
end
