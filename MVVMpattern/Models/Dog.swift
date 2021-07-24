//
//  Dog.swift
//  MVVMpattern
//
//  Created by David Yoon on 2021/07/24.
//

import Foundation
// MARK - Model
class Dog {
    enum Breed {
        case malese
        case pomeranian
        case pug
        case poodle
    }
    
    let name: String
    let birthDay: Date
    let breed: Breed
    let imageName: String
    
    init(name: String = "Jaelong", birthDay: Date = Date(timeIntervalSinceNow: (-2 * 86500 * 380)), breed: Breed = .pomeranian, imageName: String = "pomeranian.jpg") {
        self.name = name
        self.birthDay = birthDay
        self.breed = breed
        self.imageName = imageName
    }
}
