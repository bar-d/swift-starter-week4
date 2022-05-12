//
//  BodyCondition.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/12.
//

//프로퍼티
//상체근력
//하체근력
//근지구력
//피로도

//운동을 진행하면 BodyCondition 인스턴스의 프로퍼티에 할당된 값이 변화합니다.

class BodyCondition {
    var upperBodyStrength: Int
    var lowerBodyStrength: Int
    var muscularEndurance: Int
    var fatigue: Int
    
    init(upperBodyStrength: Int,lowerBodyStrength: Int, muscularEndurance: Int,  fatigue: Int) {
        self.upperBodyStrength = upperBodyStrength
        self.lowerBodyStrength = lowerBodyStrength
        self.muscularEndurance = muscularEndurance
        self.fatigue = fatigue
    }
    
    func currentBodyCondition() {
        print("""
            --------------
            현재의 컨디션은 다음과 같습니다.
            상체근력: \(upperBodyStrength)
            하체근력: \(lowerBodyStrength)
            근지구력: \(fatigue)
            피로도: \(fatigue)
            """)
    }
}
