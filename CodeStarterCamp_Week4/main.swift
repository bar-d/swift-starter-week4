//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드.
//  Copyright © yagom academy. All rights reserved.
//

let myBodyCondition = BodyCondition(upperBodyStrength: 0, lowerBodyStrength: 0, muscularEndurance: 0, fatigue: 0)
let myRoutine: Routine = Routine(name: "helloRoutine", exerciseArray: [윗몸일으키기, 윗몸일으키기, 동적휴식, 스쿼트, 스쿼트, 동적휴식, 오래달리기, 오래달리기])

myRoutine.playMyRoutine(condition: myBodyCondition)

