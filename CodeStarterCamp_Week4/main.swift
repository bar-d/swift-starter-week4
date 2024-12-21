//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드.
//  Copyright © yagom academy. All rights reserved.
//

//MARK: - Exercise
let 윗몸일으키기: Exercise = Exercise(name: "윗몸일으키기") {
    center.fitnessCenterMember?.bodyCondition.upperBodyStrength += RandomNumber.tenToTwenty
    center.fitnessCenterMember?.bodyCondition.fatigue += RandomNumber.tenToTwenty
}

let 스쿼트: Exercise = Exercise(name: "스쿼트") {
    center.fitnessCenterMember?.bodyCondition.lowerBodyStrength += RandomNumber.twentyToThirty
    center.fitnessCenterMember?.bodyCondition.fatigue += RandomNumber.tenToTwenty
}
    
let 오래달리기: Exercise = Exercise(name: "오래달리기") {
    center.fitnessCenterMember?.bodyCondition.upperBodyStrength += RandomNumber.fiveToTen
    center.fitnessCenterMember?.bodyCondition.lowerBodyStrength += RandomNumber.fiveToTen
    center.fitnessCenterMember?.bodyCondition.muscularEndurance += RandomNumber.twentyToThirty
    center.fitnessCenterMember?.bodyCondition.fatigue += RandomNumber.twentyToThirty
}

let 동적휴식: Exercise = Exercise(name: "동적휴식") {
    center.fitnessCenterMember?.bodyCondition.fatigue -= RandomNumber.fiveToTen
}

//MARK: - Person
let hellChang: Person = Person(name: "hellChang",
                               bodyCondition: .init(upperBodyStrength: 500,
                                                    lowerBodyStrength: 500,
                                                    muscularEndurance: 300,
                                                    fatigue: 0))
let newbie: Person = Person(name: "newbie",
                            bodyCondition: .init(upperBodyStrength: 10,
                                                 lowerBodyStrength: 10,
                                                 muscularEndurance: 10,
                                                 fatigue: 60))
let instagrammer: Person = Person(name: "instagrammer",
                                  bodyCondition: .init(upperBodyStrength: 60,
                                                       lowerBodyStrength: 60,
                                                       muscularEndurance: 60,
                                                       fatigue: 30))
let master: Person = Person(name: "yeha",
                            bodyCondition: .init(upperBodyStrength: 5000,
                                                 lowerBodyStrength: 5000,
                                                 muscularEndurance: 5000,
                                                 fatigue: 0))

//MARK: - Routine
let yehaRoutine: Routine = Routine(name: "yehaRoutine",
                                   exerciseArray:
                                    [윗몸일으키기, 윗몸일으키기, 동적휴식, 스쿼트, 스쿼트, 동적휴식, 오래달리기, 오래달리기])
let ohMyGodRoutine: Routine = Routine(name: "ohMyGodToutine",
                                      exerciseArray:
                                        [윗몸일으키기, 윗몸일으키기, 윗몸일으키기, 스쿼트, 스쿼트, 스쿼트, 동적휴식, 윗몸일으키기, 윗몸일으키기, 윗몸일으키기, 스쿼트, 스쿼트, 스쿼트, 동적휴식])
let newbieRoutine: Routine = Routine(name: "newbieRoutine",
                                     exerciseArray:
                                        [윗몸일으키기, 동적휴식, 스쿼트, 동적휴식, 오래달리기, 동적휴식])

//MARK: - FitnessCenter
let center: FitnessCenter = FitnessCenter(goalOfBodyCondition: .init(), fitnessCenterMember: newbie)

//MARK: - progrmStart
center.programStart()
