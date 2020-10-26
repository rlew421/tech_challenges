# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}

# if the two linked lists were equal in length, we could compare a pointer starting at the head of each list. if p1 and p2 are different, they haven't interseected yet. once p2 and p2 are the same, we've reached the intersection
# the problem is that the linked lists are of different lengths.
# once p1 and p2 have gotten to the end of their respective lists, they'll be reset at the head of the other linked list
# we keep advancing p1 and p2 (on the opposite linked list they were originally on) until they intersect at the intersection node

def getIntersectionNode(headA, headB)
    # need to get edge case out of the way in case either head is nil
    return nil if headA == nil || headB == nil

    # each pointer points to the head of their linked list
    pointer1 = headA
    pointer2 = headB

    # while pointer1 is not equal to pointer 2
    while pointer1 != pointer2
     pointer1 = pointer1.next
     pointer2 = pointer2.next

     # if pointer1 and pointer2 are the same
     return pointer1 if pointer1 == pointer2

     # if pointer1 is nil, we have to reassign it to the head of the other linked list (where pointer2 originally was)
     if pointer1 == nil
         pointer1 = headB
     end

     # if pointer2 is nil, we have to reassign it to the head of the other linked list (where pointer1 originally was)
     if pointer2 == nil
         pointer2 = headA
     end
    end

    # we return pointer1 at the end, though we can return either pointer1 or pointer2 since both pointer1 and pointer2 will be on the same node
    pointer1
end
