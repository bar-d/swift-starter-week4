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

class Person {
    var name: String
    var bodyCondition: BodyCondition
    
    init(name: String, bodycondition: BodyCondition) {
        self.name = name
        self.bodyCondition = bodycondition
    }
    func exercise(for set: Int, routine: Routine) {
        var dumbSet = set
        
        repeat {
            routine.start()
            dumbSet -= 1
        } while dumbSet == 1
    }
}
let newbbie = Person(name: "헬린이", bodycondition: .init(상체근력: 0, 하체근력: 0, 근지구력: 0, 피로도: 0))
//let test = Person

//let newbie = Person(name: "헬린이", bodyCondition: .init(상체근력: 0, 하체근력: 0, 근지구력: 0, 피로도: 50))
let hellChang = Person(name: "3대500", bodycondition: .init(상체근력: 200, 하체근력: 200, 근지구력: 100, 피로도: 0))



//yagomFitnessCenter.askName()
