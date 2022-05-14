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
    
    func start(condition: BodyCondition) throws {
        for exercises in exerciseArray {
            guard (center.fitnessCenterMember?.bodyCondition.fatigue ?? -100) <= 100 else { throw FitnessCenterError.overFatigue }
            print("\(exercises.name)")
            exercises.action()
        }
    }
}
