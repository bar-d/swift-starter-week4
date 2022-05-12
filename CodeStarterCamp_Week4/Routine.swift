//
//  Routine.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/12.
//

struct Routine {
    var name: String
    var exercisesArray: [Exercise]
    
    func start() {
        print("--------------\n\(self.name)을 시작합니다.")
        for elements in exercisesArray {
            print("\(elements.name)")
            elements.action()
        }
        print("--------------")
        
    }
}


