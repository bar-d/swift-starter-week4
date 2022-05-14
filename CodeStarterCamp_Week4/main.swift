//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드.
//  Copyright © yagom academy. All rights reserved.
//

//MARK: - Exercise
let 윗몸일으키기: Exercise = Exercise(name: "윗몸일으키기") {
    myBodyCondition.upperBodyStrength += RandomNum.tenToTwenty
    myBodyCondition.fatigue += RandomNum.tenToTwenty
}

let 스쿼트: Exercise = Exercise(name: "스쿼트") {
    myBodyCondition.lowerBodyStrength += RandomNum.twentyToThirty
    myBodyCondition.fatigue += RandomNum.tenToTwenty
}

let 오래달리기: Exercise = Exercise(name: "오래달리기") {
    myBodyCondition.upperBodyStrength += RandomNum.fiveToTen
    myBodyCondition.lowerBodyStrength += RandomNum.fiveToTen
    myBodyCondition.muscularEndurance += RandomNum.twentyToThirty
    myBodyCondition.fatigue += RandomNum.twentyToThirty
}

let 동적휴식: Exercise = Exercise(name: "동적휴식") {
    myBodyCondition.fatigue -= RandomNum.fiveToTen
}

//MARK: - BodyCondition
let myBodyCondition = BodyCondition(upperBodyStrength: 0,
                                    lowerBodyStrength: 0,
                                    muscularEndurance: 0,
                                    fatigue: 0)
//MARK: - Routine
let myRoutine: Routine = Routine(name: "helloRoutine",
                                 exerciseArray: [윗몸일으키기, 윗몸일으키기, 동적휴식, 스쿼트, 스쿼트, 동적휴식, 오래달리기, 오래달리기])

myRoutine.playMyRoutine(condition: myBodyCondition)
