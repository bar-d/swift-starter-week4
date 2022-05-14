//
//  FitnessCenter.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/12.
//

//MARK: - FitnessCenter
class FitnessCenter {
    var goalOfBodyCondition = BodyCondition()
    var fitnessCenterMember: Person?
    var routines: [Routine]
    var name: String = "yeha"
    
    init(goalOfBodyCondition: BodyCondition,
         fitnessCenterMember: Person?,
         routines: [Routine] = [yehaRoutine, ohMyGodRoutine, newbieRoutine],
         name: String = "yeha") {
        self.goalOfBodyCondition = goalOfBodyCondition
        self.fitnessCenterMember = fitnessCenterMember
        self.routines = routines
        self.name = name
    }
    //MARK: - programStart()
    func programStart() {
        do {
            try checkMemberName()
            try setGoalOfBodyCondition()
            try setRoutine()
        } catch {
            center.handle(error as! FitnessCenterError)
        }
    }
    
    //MARK: - checkMemberName() 멤버가 맞는지 확인
    func checkMemberName() throws  {
        // 공백제거 및 빈 문자열 처리
        print("예하하하! 안녕하세요. 예하 피트니스 센터입니다. 회원님의 이름은 무엇인가요?")
        guard let userInput = readLine()?.trimmingCharacters(in: .whitespaces),
                userInput.isEmpty != true else
        { throw FitnessCenterError.unrecognizedInput }
        // 숫자 처리
        if userInput.filter({$0.isNumber}).count != 0 {
            throw FitnessCenterError.unrecognizedInput
        }
        else if userInput != fitnessCenterMember?.name {
            throw FitnessCenterError.noMember
        }
        else if userInput == fitnessCenterMember?.name {
            fitnessCenterMember?.name = userInput
        }
        else {
            throw FitnessCenterError.exeptionError
        }
    }
    
    //MARK: - checkIsInputNumber() 인풋이 숫자인지
    func checkIsInputNumber() throws -> Int{
        guard let userInput = readLine()?.trimmingCharacters(in: .whitespaces), userInput.filter({$0.isNumber}).count != 0 else { throw FitnessCenterError.unrecognizedInput }
        guard let intUserInput = Int(userInput) else { return 0 }
        return intUserInput
    }
    
    //MARK: - setGoalOfBodyCondition()
    func setGoalOfBodyCondition() throws {
        print("예하하하! 운동 목표치를 순서대로 알려주세요. 예시) 상체근력: 130,하체근력:120,근지구력:150")
        print("상체근력 : ", terminator: "")
        goalOfBodyCondition.upperBodyStrength = try checkIsInputNumber()
        print("하체근력 : ", terminator: "")
        goalOfBodyCondition.lowerBodyStrength = try checkIsInputNumber()
        print("근지구력 : ", terminator: "")
        goalOfBodyCondition.muscularEndurance = try checkIsInputNumber()
    }
    
    //MARK: - setRoutine()
    func setRoutine() throws {
        print("""
            예하하하! 몇 번째 루틴으로 운동하시겠어요?
            1. \(routines[0].name)
            2. \(routines[1].name)
            3. \(routines[2].name)
            """)
        let routineChoice  = try checkIsInputNumber()
        guard routineChoice <= (routines.count) else { throw FitnessCenterError.unrecognizedInput }
        let routine = routines[routineChoice - 1]
        
        print("예하하하! 몇 세트 반복하시겠어요?")
        let set = try checkIsInputNumber()
        
        try fitnessCenterMember?.exercise(for: set, routine: routine)
        checkGoal()
    }
    //MARK: - checkHowManyRoutine()
    func checkHowManyRoutine() throws {
        guard let userInput = readLine()?.trimmingCharacters(in: .whitespaces),
              userInput.isEmpty != true else
        { throw FitnessCenterError.unrecognizedInput }
    }
    
    //MARK: - checkGoal()
    func checkGoal() {
        if goalOfBodyCondition.upperBodyStrength <= fitnessCenterMember?.bodyCondition.upperBodyStrength ?? -100,
            goalOfBodyCondition.lowerBodyStrength <= fitnessCenterMember?.bodyCondition.lowerBodyStrength ?? -100,
           goalOfBodyCondition.muscularEndurance <= fitnessCenterMember?.bodyCondition.muscularEndurance ?? -100{
            printSuccess()
        } else {
            printGoalOfBodyConditionFail()
        }
    }
    
    //MARK: - printSuccess()
    func printSuccess() {
        print("""
            --------------
            예하하하! 성공입니다!
            """)
        fitnessCenterMember?.bodyCondition.currentBodyCondition()
    }
    
    //MARK: - printGoalOfBodyConditionFail()
    func printGoalOfBodyConditionFail() {
        print("""
              --------------
              예하하하! 목표치에 도달하지 못했습니다.
              """)
        fitnessCenterMember?.bodyCondition.currentBodyCondition()
    }
  
    //MARK: - handle(error)
    func handle(_ error: FitnessCenterError) {
        switch error {
        case .overFatigue:
            print(FitnessCenterError.overFatigue.localizedDescription)
        case .lackOfExercise:
            print(FitnessCenterError.lackOfExercise.localizedDescription)
        case .unrecognizedInput:
            print(FitnessCenterError.unrecognizedInput.localizedDescription)
        case .noMember:
            print(FitnessCenterError.noMember.localizedDescription)
        case .exeptionError:
            print("예하하하. 뭐라고 하시는거죠?")
        }
    }
}
