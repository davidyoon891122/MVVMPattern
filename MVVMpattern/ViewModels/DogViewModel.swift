//
//  DogViewModel.swift
//  MVVMpattern
//
//  Created by David Yoon on 2021/07/24.
//

import Foundation

// MARK - ViewModel
class DogViewModel {
    let dog: Dog
    let calender: Calendar
    
    init() {
        self.dog = Dog()
        self.calender = Calendar(identifier: .gregorian)
    }
    
    var name: String {
        return dog.name
    }
    
    var imageName: String {
        return dog.imageName
    }
    
    var ageText: String {
        let today = calender.startOfDay(for: Date())
        let birthDay = calender.startOfDay(for: dog.birthDay)
        let components = calender.dateComponents([.year], from: birthDay, to: today)
        let age = components.year == nil ? 0 : components.year!
        
        return "\(age) years old"
    }
    
    var adoptionFeeText: String {
        switch dog.breed {
        case .pomeranian:
            return "200000"
        case .malese:
            return "500000"
        case .poodle:
            return "600000"
        case .pug:
            return "400000"
        }
    }
    
    
}

