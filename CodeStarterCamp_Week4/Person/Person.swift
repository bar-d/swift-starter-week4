//
//  Person.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/11.
//

//프로퍼티
//이름
//bodyCondition

//Person 타입은 다음과 같은 메서드를 갖습니다.
//exercise(for set: Int, routine: Routine)

//MARK: - Person
struct Person {
    var name: String
    var bodyCondition: BodyCondition
    
    //MARK: - exercise(for set:, routine:)
    func exercise(for set: Int, routine: Routine) throws {
        print("""
            --------------
            예하하하! \(routine.name)을 \(set)set 시작합니다.
            """)
        var setCount = 0
        while (center.fitnessCenterMember?.bodyCondition.fatigue ?? -100) <= 100,
                setCount != set {
            for set in 1...set {
                try routine.start(condition: self.bodyCondition)
                setCount += 1
            }
        }
    }
}
