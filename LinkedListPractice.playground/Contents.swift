//: Playground - noun: a place where people can play

import UIKit


// Double linked list


public class LinkedListNode<T>  {
    var value: T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?

    init(value: T) {
        self.value = value
    }
}


public class LinkedList<T> {
    public typealias Node = LinkedListNode<T>

    private var head: Node?

    public var isEmpty: Bool {
        return head == nil
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
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

}


let list = LinkedList<String>()
list.isEmpty
list.first
list.






