//
//  Traverser.swift
//  Thesis-Test
//
//  Created by Brandan Gianni on 8/24/21.
//

import Foundation

var check = entrance
var nvert: Vertex<String> = null
var str: String = ""
var newstr: String = ""

func FindStartVertex(start: String, vertex: Vertex<String>) -> Vertex<String>
{
    if (start == check.data)
    {
        return check
    }
    else
    {
        check.hit = true
        if let starter = NorthHall.edges(from: check)
        {
            for edge in starter
            {
                if (edge.destination.hit == false)
                {
                    return FindStartVertex(start: start, vertex: edge.destination)
                }
                else
                {
                    return null
                }
            }
        }
    }
    return null
}

func ClearGraph(start: Vertex<String>)
{
    if (start == null)
    {
        print("Null")
    }
    else if (start == entrance)
    {
        if let starter = NorthHall.edges(from:entrance)
        {
            for edge in starter
            {
                if (edge.source.hit == true)
                {
                    var edgey = edge.source
                    edgey.hit = false
                }
                else
                {
                    print("Done")
                }
                ClearGraph(start: edge.destination)
            }
        }
    }
    else
    {
        if let starter = NorthHall.edges(from: start)
        {
            for edge in starter
            {
                if (edge.source.hit == true)
                {
                    var edgey = edge.source
                    edgey.hit = false
                    ClearGraph(start: edge.destination)
                }
                else
                {
                    return
                }
            }
        }
    }
}

func Pathfinder(start: Vertex<String>, end: String) -> String
{
    var edgey: Vertex<String> = start
    str = newstr
    if (edgey == null)
    {
        return "null"
    }
    else if (edgey.data == end)
    {
        return str
    }
    else if (edgey == entrance)
    {
        if(edgey.hit == false)
        {
            edgey.hit = true
            newstr = str + "\(edgey.data)"
        }
        if let starter = NorthHall.edges(from: entrance)
        {
            for edge in starter
            {
                if(edgey.hit == false)
                {
                    edgey.hit = true
                    newstr = str + " \(Pathfinder(start: edge.destination, end: end))"
                }
            }
        }
    }
    else
    {
        if let starter = NorthHall.edges(from: start)
        {
            for edge in starter
            {
                if(edgey.hit == false)
                {
                    edgey.hit = true
                    nvert = edge.destination
                    newstr = str + " \(Pathfinder(start: nvert, end: end))"
                }
            }
        }
    }
    ClearGraph(start: edgey)
    return newstr
}
