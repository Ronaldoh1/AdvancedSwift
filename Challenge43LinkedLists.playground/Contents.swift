//: Playground - noun: a place where people can play

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



let list = LinkedList<String>()

list.isEmpty
list.first

let characters = NSCharacterSet.letters

for letter in "abcdefghijklmnopqrstuvwxyz".characters {
    list.append(value: String(letter))
}

list.printNodes()

