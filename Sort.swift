//
//  Sort.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 9/7/21.
//

import Foundation

extension Graphable {
    
    //Definits a route as a vertex and a path from that vertex, that returns an array of edges
    public func route(to destination: Vertex<Element>, in tree: [Vertex<Element> : Visit<Element>]) -> [Edge<Element>] {
        
        var vertex = destination
        var path : [Edge<Element>] = []
        
        while let visit = tree[vertex],
            case .edge(let edge) = visit {
                
                path = [edge] + path
                vertex = edge.source
        }
        return path
    }
    
    //By generating a tree from the graph, you can find the shortest path and determine its length
    public func distance(to destination: Vertex<Element>, in tree: [Vertex<Element> : Visit<Element>]) -> Double {
        let path = route(to: destination, in: tree)
        let distances = path.flatMap{ $0.weight }
        return distances.reduce(0.0, { $0 + $1 })
    }
    
    public func dijkstra(from source: Vertex<Element>, to destination: Vertex<Element>) -> [Edge<Element>]? {
        var visits : [Vertex<Element> : Visit<Element>] = [source: .source]
        var priorityQueue = PriorityQueue<Vertex<Element>>(sort: { self.distance(to: $0, in: visits) < self.distance(to: $1, in: visits) })
        priorityQueue.enqueue(source)
        
        //Visited vertex is popped from the queue
        while let visitedVertex = priorityQueue.dequeue()
        {
            //If the vertex is the destination, return the output of function rtoute
            if visitedVertex == destination
            {
                return route(to: destination, in: visits)
            }
            //Grabs all the edges from the vertex
            let neighbourEdges = edges(from: visitedVertex) ?? []
            //Determines to see if the path so far is less than another path, so it can be put into the priority queue. This is used to determine the shortest path.
            for edge in neighbourEdges {
                if let weight = edge.weight {
                    if visits[edge.destination] != nil {
                        if distance(to: visitedVertex, in: visits) + weight < distance(to: edge.destination, in: visits)
                        {
                            visits[edge.destination] = .edge(edge)
                            priorityQueue.enqueue(edge.destination)
                        }
                    }
                    else {
                        visits[edge.destination] = .edge(edge)
                        priorityQueue.enqueue(edge.destination)
                    }
                }
            }
        }
        return nil
    }
}
