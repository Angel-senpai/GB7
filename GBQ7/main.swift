//
//  main.swift
//  GBQ7
//
//  Created by Даниил Мурыгин on 28.10.2019.
//

import Foundation


struct Idea {
    let description: String
    let logic: Bool
}

enum BrainErrors:Error{
    case fail
}

class Brain {
    private var ideas: [Idea]
    
    init(idea: [Idea]) {
        ideas = idea
    }
    
    func pop() throws -> Idea? {
        
        if ideas.count == 0{
            throw BrainErrors.fail
        }
        return ideas.removeLast()
    }
    
    func push(newIdea: Idea) {
        ideas.append(newIdea)
    }
}

var B = Brain(idea: [Idea(description: "test", logic: true)] )


do{
    try B.pop()
    try B.pop()
}catch BrainErrors.fail{
    print("Критическая логическая ошибка")
}

