//: Playground - noun: a place where people can play

import UIKit

//Create a Node Class
public class LinkedListNode<T> {

    var value: T
    var next: LinkedListNode?
    weak var previous: LinkedListNode?

    public init(value: T) {
        self.value = value
    }

}


// Create the list class // a list contains a pointer to the head, isEmpty, append to add value

public class linkedList<T> {

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
            newNode.previous = last
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

    public func printList() {
        var currentNode = head

        while let node = currentNode {

            print(node.value)
            currentNode = currentNode?.next
        }

    }
}



let list = linkedList<String>()
list.isEmpty // should print true.
list.first //should print nil


// we need to add the letters to the list.

for letter in "abcdefghijklmnopqrstuvwxyz".characters {

    list.append(value: String(letter))
    
}


list.printList()





















