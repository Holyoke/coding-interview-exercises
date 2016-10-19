class Node(object):
    def __init__(self, data = None, next_node = None):
        self.data = data
        self.next = next_node

def has_cycle(head):
    probe = head
    i = 0
    while(i < 100):
        probe = head.next
        i += 1
        if not probe:
            return False
    return True

    if not head:
    	return False

    slow = head
    fast = head.next

    if slow == fast:
        return False
    while( slow.next != none ):
        slow = slow.next
        fast = fast.next.next
        if slow == fast:
            return True

    return False
