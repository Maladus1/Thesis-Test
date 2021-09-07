//
//  Queue.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 9/7/21.
//

import Foundation

public struct Queue<T> {
    
    fileprivate var list = LinkedList<T>()
    
    public init() {}
    
    //Checks to see if the queue is empty
    public var isEmpty: Bool {
        return list.isEmpty
    }
    
    //Puts an item into the queue
    public mutating func enqueue(_ element: T) {
        list.append(element)
    }
    
    //Removes an item from the queue
    public mutating func dequeue() -> T? {
        guard !list.isEmpty, let element = list.first else { return nil }
        
        _ = list.remove(element)
        
        return element.value
    }
    
    //Allows you to peek at thef irst element in the queue
    public func peek() -> T? {
        return list.first?.value
    }
}

//Prints out string
extension Queue: CustomStringConvertible {
    public var description: String {
        return list.description
    }
}
