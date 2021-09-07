//
//  List.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 9/7/21.
//

import Foundation


//Creates a Linked List
public struct LinkedList<T>: CustomStringConvertible {
    private var head: Node<T>?
    private var tail: Node<T>?

    public init() { }

    //If empty, let head = nil
    public var isEmpty: Bool {
        return head == nil
    }

    //Gets the node at the head
    public var first: Node<T>? {
        return head
    }

    //Creates a new node with information. If tail node exists assign previous for newnode to tailnode and next for tainode to newnode, to keep the linked list continuous
    public mutating func append(_ value: T) {
        let newNode = Node(value: value)
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        } else {
            head = newNode
        }
        tail = newNode
    }

    //Removes node from the linked list. Assigns pointers to other nodes on linked list, then removes pointers and returns the values
    public mutating func remove(_ node: Node<T>) -> T {
        let prev = node.previous
        let next = node.next

        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev

        if next == nil {
            tail = prev
        }

        node.previous = nil
        node.next = nil

        return node.value
    }

    //Basically how you print out the linked list
    public var description: String {
        var text = "["
        var node = head

        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

//Specifies that a node has a value, a next node, and a previous node
public class Node<T> {
    public var value: T
    public var next: Node<T>?
    public var previous: Node<T>?

    public init(value: T) {
        self.value = value
    }
}
