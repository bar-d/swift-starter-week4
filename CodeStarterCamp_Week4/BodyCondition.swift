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
    var 상체근력: Int
    var 하체근력: Int
    var 근지구력: Int
    var 피로도: Int
    
    init(상체근력: Int = 0, 하체근력: Int = 0, 근지구력: Int = 0, 피로도: Int = 0) {
        self.상체근력 = 상체근력
        self.하체근력 = 하체근력
        self.근지구력 = 근지구력
        self.피로도 = 피로도
    }
    
    func printCurrentCondition() {
        print("""
            현재의 컨디션은 다음과 같습니다.
            상체근력: \(상체근력)
            하체근력: \(하체근력)
            근지구력: \(근지구력)
            피로도: \(피로도)
            """)
    }

}

var myBodyCondition = BodyCondition()
