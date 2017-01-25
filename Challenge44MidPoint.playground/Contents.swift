import UIKit


public class LinkedListNode<T> {

    var next: LinkedListNode?
    var value: T
    weak var previousNode: LinkedListNode?

    public init(value: T) {
        self.value = value
    }

}


public class LinkedList<T> {

    public typealias Node = LinkedListNode<T>

    public var head: Node?

    public var isEmpty: Bool {
        return head == nil
    }

    public var count = 0

    public var centerNode: LinkedListNode<T>? {
        var slow = head
        var fast = head

        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }

    public var first: Node? {
        return head
    }

    public var last: Node? {
        if var node = head {
            while case let next? = node.next {
                node = next
            }
            return node
        } else {
            return nil
        }
    }

    public func append(value: T) {
        let newNode = Node(value: value)
        if let lastNode = last {
            newNode.previousNode = lastNode
            last?.next = newNode
        } else {
            head = newNode
            count += 1
        }
    }

    public func printNodes() {
        var currentNode = head

        while let node = currentNode {
            print(node.value)
            currentNode = node.next
        }
    }


}


