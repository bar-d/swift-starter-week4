//
//  Routine.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/12.
//

//MARK: - Routine
struct Routine {
     let name: String
     let exerciseArray: [Exercise]

    //MARK: - playMyRoutine(condition:)
    func playMyRoutine(condition: BodyCondition) {
         print("""
            --------------
            \(name)을 시작합니다.
            """)
         for exercises in exerciseArray {
             print("\(exercises.name)")
             exercises.action()
         }
         condition.currentBodyCondition()
     }
 }
