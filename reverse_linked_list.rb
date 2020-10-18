# Reverse a singly linked list.
#
# Example:
#
# Input: 1->2->3->4->5->NULL
# Output: 5->4->3->2->1->NULL

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}

# in a singly linked list, each node points to the node next to it
# a linked list starts at the head and ends at the node that points to null (there is no node following it)
# we need a variable to keep track of the current node
# we also need a variable to keep track of the previous node that points to the current node

# we could iterate through the original list starting at the first node
# we know we've finished reversing the linked list when head is nil

# Ex input: 1 -> 2 -> 3 -> 4 -> 5 -> nil
def reverse_list(head)
    # we need a variable called previous_node to keep track of the node that came before the current node. since there is no node before 1, we set the previous_node to nil
    previous_node = nil

    while (head != nil)
        # first, we set the head's next node equal to the previous node. this means 1 will point to nil instead of 2.
        next_node = head.next
        # then, we set head.next equal to the previous node
        head.next = previous_node
        # then, we reassign previous_node and head to set up the next loop
        previous_node = head
        head = next_node
    end
    # since head is nil, we have to return the node to the left of head, which is previous_node
    previous_node
end
