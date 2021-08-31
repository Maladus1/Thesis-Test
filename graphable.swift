//
//  graphable.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/23/21.
//

import Foundation

protocol Graphable {
  associatedtype Element: Hashable
  var description: CustomStringConvertible { get }
  
  func createVertex(data: Element) -> Vertex<Element>
  func add(_ type: EdgeType, from source: Vertex<Element>, to destination: Vertex<Element>, weight: Double?) // 4
  func weight(from source: Vertex<Element>, to destination: Vertex<Element>) -> Double?
  func edges(from source: Vertex<Element>) -> [Edge<Element>]? // 6
}
