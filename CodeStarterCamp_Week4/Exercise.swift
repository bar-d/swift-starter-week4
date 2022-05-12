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

let 윗몸일으키기1: Exercise = Exercise(name: "윗몸일으키기", action: {
    BodyCondition().상체근력 += RandomNum.tenToTwenty
    myBodyCondition.근지구력 += RandomNum.tenToTwenty
    myBodyCondition.피로도 += RandomNum.tenToTwenty
})

let 윗몸일으키기: Exercise = Exercise(name: "윗몸일으키기") {
    BodyCondition().근지구력 += RandomNum.tenToTwenty
    BodyCondition().피로도 += RandomNum.tenToTwenty
//    myBodyCondition.근지구력 += RandomNum.tenToTwenty
//    myBodyCondition.피로도 += RandomNum.tenToTwenty
}

let 스쿼트: Exercise = Exercise(name: "스쿼트") {
    BodyCondition().하체근력 += RandomNum.tenToTwenty
    BodyCondition().피로도 += RandomNum.tenToTwenty
    //    myBodyCondition.하체근력 += RandomNum.tenToTwenty
//    myBodyCondition.피로도 += RandomNum.tenToTwenty
}

let 오래달리기: Exercise = Exercise(name: "오래달리기") {
    BodyCondition().근지구력 += RandomNum.twentyToThirty
    BodyCondition().상체근력 += RandomNum.fiveToTen
    BodyCondition().하체근력 += RandomNum.fiveToTen
    BodyCondition().피로도 += RandomNum.twentyToThirty
    //    myBodyCondition.근지구력 += RandomNum.twentyToThirty
//    myBodyCondition.상체근력 += RandomNum.fiveToTen
//    myBodyCondition.하체근력 += RandomNum.fiveToTen
//    myBodyCondition.피로도 += RandomNum.twentyToThirty
}

// 휴식
let 동적휴식: Exercise = Exercise(name: "동적휴식") {
    BodyCondition().피로도 -= RandomNum.fiveToTen
}
