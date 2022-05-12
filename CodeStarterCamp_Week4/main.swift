//
//  main.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드.
//  Copyright © yagom academy. All rights reserved.
//

let yehaRoutine = Routine(name: "hellRoutine",
                        exercisesArray: [윗몸일으키기, 윗몸일으키기, 동적휴식, 스쿼트, 스쿼트, 동적휴식, 오래달리기, 오래달리기])
let yehaFitnessCenter = FitnessCenter(goalOfBodyCondition: .init(상체근력: 50, 하체근력: 50, 근지구력: 50, 피로도: 20),
                                       fitnessCenterMember: newbbie)

yehaRoutine.start()
myBodyCondition.printCurrentCondition()


yehaFitnessCenter.fitnessCenterMember = hellChang
yehaFitnessCenter.programStart()
