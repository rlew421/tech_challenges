require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list.rb'
require 'pry'

class LinkedListTest < Minitest::Test
  def test_new_returns_a_linked_list
    subject = LinkedList.new
    assert_instance_of LinkedList, subject
  end

  def test_head_returns_nil_when_first_initialized
    subject = LinkedList.new
    assert_nil subject.head
  end

  def test_append_adds_new_node_to_end_of_list
    subject = LinkedList.new

    result = subject.append('West')

    assert_instance_of Node, result
    assert_equal 'West', result.surname
    assert_equal result, subject.head
  end

  def test_count_returns_zero_for_empty_list
    subject = LinkedList.new
    assert_equal 0, subject.count
  end

  def test_count_returns_one_for_list_with_one_node
    subject = LinkedList.new
    subject.append('West')

    assert_equal 1, subject.count
  end

  def test_to_string_returns_correct_sentence_when_one_node_present
    subject = LinkedList.new
    subject.append('West')

    result = subject.to_string

    assert_equal 'The West family', result
  end

  def test_append_two_nodes
    subject = LinkedList.new
    subject.append('Rhodes')
    subject.append('Hardy')

    result = subject.head.next_node.surname

    assert_equal 'Hardy', result
  end

  def test_last_node_returns_the_tail
    subject = LinkedList.new
    subject.append('Rhodes')

    result = subject.last_node(subject.head)
    assert_equal 'Rhodes', result.surname
  end

  def test_empty_returns_true_when_head_is_nil
    subject = LinkedList.new
    assert_equal true, subject.empty?
  end

  def test_empty_returns_false_when_head_is_not_nil
    subject = LinkedList.new
    subject.append('Rhodes')

    assert_equal false, subject.empty?
  end

  def test_new_node_returns_a_new_node
    subject = LinkedList.new

    result = subject.new_node('Rhodes')

    assert_instance_of Node, result
    assert_equal 'Rhodes', result.surname
  end
end
