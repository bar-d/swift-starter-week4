//
//  Exercise.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/12.
//

struct Exercise {
    let name: String
    let action: () -> Void
}

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
