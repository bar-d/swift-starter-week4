//
//  FitnessCenter.swift
//  CodeStarterCamp_Week4
//
//  Created by 바드 on 2022/05/12.
//

//FitnessCenter 타입은 다음과 같은 프로퍼티를 갖습니다.
//목표 바디 컨디션
//회원(Optional로 설정합니다.)
//최소 2개 이상의 루틴 목록 (Collection타입)

import Foundation

class FitnessCenter {
    var goalOfBodyCondition: BodyCondition
    var fitnessCenterMember: Person?
    var hellRoutine: Routine
    var ohMyGodRoutine: Routine
    
    init(goalOfBodyCondition: BodyCondition,
         fitnessCenterMember: Person?,
         hellRoutine: Routine = Routine.init(name: "hellRoutine", exercisesArray: [윗몸일으키기, 윗몸일으키기, 동적휴식, 스쿼트, 스쿼트, 동적휴식, 오래달리기, 오래달리기]) ,
         ohMyGodRoutine: Routine = Routine.init(name: "ohMyGodToutine", exercisesArray: [윗몸일으키기, 윗몸일으키기, 윗몸일으키기, 스쿼트, 스쿼트, 스쿼트, 동적휴식, 윗몸일으키기, 윗몸일으키기, 윗몸일으키기, 스쿼트, 스쿼트, 스쿼트, 동적휴식]) ) {
        self.goalOfBodyCondition = goalOfBodyCondition
        self.fitnessCenterMember = fitnessCenterMember
        self.hellRoutine = hellRoutine
        self.ohMyGodRoutine = ohMyGodRoutine
    }
    
    func readUserInput() {
        guard let readLine = readLine() else { return }
    }
    
    func programStart() {
        do {
            try askName()
            try askGoalOfFitnessAndFatigueLimit()
            try askChooseRoutineandrounds()
            checkBodyCondition()
        } catch {
            print(FitnessCenterError.exeptionError.localizedDescription)
        }
    }
    
    func checkBodyCondition() {
        if self.goalOfBodyCondition.상체근력 > (fitnessCenterMember?.bodyCondition.상체근력) ?? -100 ||
            self.goalOfBodyCondition.하체근력 > (fitnessCenterMember?.bodyCondition.하체근력) ?? -100 ||
            self.goalOfBodyCondition.근지구력 > (fitnessCenterMember?.bodyCondition.근지구력) ?? -100 {
            print("예하하하! 목표치에 도달하지 못했습니다. ", terminator: "")
            printCurrentCondition()
        } else {
            print("예하하하! 성공입니다! ", terminator: "")
            printCurrentCondition()
        }
    }
    
    // error handling
    func error(_ error: FitnessCenterError) {
        switch error {
        case FitnessCenterError.overFatigue:
            print(FitnessCenterError.overFatigue.localizedDescription)
        case FitnessCenterError.lackOfExercise:
            print(FitnessCenterError.lackOfExercise.localizedDescription)
        case FitnessCenterError.unrecognizedInput:
            print(FitnessCenterError.unrecognizedInput.localizedDescription)
        case .noMember:
            print(FitnessCenterError.noMember.localizedDescription)
        default:
            print("예하하하. 뭐라고 하시는거죠?")
        }
    }
    
    // 이름물어보기
    func askName() throws {
        print("안녕하세요. 야곰 피트니스 센터입니다. 회원님의 이름은 무엇인가요? 이름 : ", terminator: "")
        guard let userInput = readLine() else { throw FitnessCenterError.exeptionError
        }
        if userInput == "" {
            throw FitnessCenterError.unrecognizedInput
        } else if Int(userInput) != nil {
            throw FitnessCenterError.unrecognizedInput
        } else if userInput == fitnessCenterMember?.name {
            fitnessCenterMember?.name = userInput
        }
        
        
//        guard let userInput = readLine(), userInput.isEmpty == false  else { throw FitnessCenterError.unrecognizedInput
//        }
//        if Int(userInput) != nil {
//            throw FitnessCenterError.unrecognizedInput
//        } else {
//            fitnessCenterMember?.name = userInput
//        }
//        if userInput != fitnessCenterMember?.name {
//            throw FitnessCenterError.noMember
//        }
        
        //        guard let nameUserInput = Int(userInput) else { return }
//        fitnessCenterMember?.name = userInput
    }
    
    // ⚠️readLine 함수로 빼서 사용하고 싶은데 오또케 오또케
    // 에러처리하면 어떻게 다시 함수돌림?
    func checkNameAvailable() throws {
        guard let userInput = readLine(), userInput.isEmpty  else { throw FitnessCenterError.unrecognizedInput
        }
        if Int(userInput) != nil {
            throw FitnessCenterError.unrecognizedInput
        } else {
            fitnessCenterMember?.name = userInput
        }
    }
    
//    func checkInputNumber() throws {
//        guard let intUserInput = Int(readLine()?.trimmingCharacters(in: .whitespaces) ?? ""), intUserInput != nil else { throw FitnessCenterError.unrecognizedInput }
//    }
    
    func askGoalOfFitnessAndFatigueLimit() throws {
        print("운동 목표치를 순서대로 알려주세요. 예시) 상체근력:130,하체근력:120,근지구력:150")
        print("상체근력 : ", terminator: "")
        guard let intUserInput = Int(readLine()?.trimmingCharacters(in: .whitespaces) ?? "") else { throw FitnessCenterError.unrecognizedInput }
        
        fitnessCenterMember?.bodyCondition.상체근력 = intUserInput
        
        print("하체근력 : ", terminator: "")
        guard let intUserInput = Int(readLine()?.trimmingCharacters(in: .whitespaces) ?? "") else { throw FitnessCenterError.unrecognizedInput }
        
        fitnessCenterMember?.bodyCondition.하체근력 = intUserInput
        
        print("근지구력 : ", terminator: "")
        guard let intUserInput = Int(readLine()?.trimmingCharacters(in: .whitespaces) ?? "") else { throw FitnessCenterError.unrecognizedInput }
        
        fitnessCenterMember?.bodyCondition.근지구력 = intUserInput
        
        print("피로도 : ", terminator: "")
        guard let intUserInput = Int(readLine()?.trimmingCharacters(in: .whitespaces) ?? "") else { throw FitnessCenterError.unrecognizedInput }
        
        fitnessCenterMember?.bodyCondition.피로도 = intUserInput
    }
    
    func askChooseRoutineandrounds() throws {
        print("""
              몇 번째 루틴으로 운동하시겠어요?
              1. hellRoutine
              2. ohMyGodRoutine
              """)
        guard let routineChoice = readLine()?.trimmingCharacters(in: .whitespaces) else { return }
        
        print("몇 세트 반복하시겠어요?")
        guard let set = Int(readLine()?.trimmingCharacters(in: .whitespaces) ?? "") else { throw FitnessCenterError.unrecognizedInput }
        
        if routineChoice == "1" {
            fitnessCenterMember?.exercise(for: set, routine: hellRoutine)
            guard let fatigueNumber = fitnessCenterMember?.bodyCondition.피로도 else { return
            }
            if fatigueNumber > 100 {
                printRun()
            } else {
                fitnessCenterMember?.exercise(for: set, routine: hellRoutine)
                hellRoutine.start()
                printCurrentCondition()
            }
        }
        else if routineChoice == "2" {
            fitnessCenterMember?.exercise(for: set, routine: ohMyGodRoutine)
            guard let fatigueNumber = fitnessCenterMember?.bodyCondition.피로도 else { return
            }
            if fatigueNumber > 100 {
                printRun()
            } else {
                printCurrentCondition()
            }
            
        } else {
            throw FitnessCenterError.unrecognizedInput
        }
    }
    
    func askHowManyRoutine() {
        print("몇 세트 반복하시겠어요?")
    }
    
    func printSucess() {
        print("""
            --------------
            \(hellRoutine)을 \(1)set 시작합니다.
            \(hellRoutine.start())
            """)
    }
    
    func printRun() {
        print("--------------\n\((fitnessCenterMember?.name) ?? "")님의 피로도가 \((fitnessCenterMember?.bodyCondition.피로도) ?? -100)입니다. 회원님이 도망갔습니다.")
    }
    
    func printCurrentCondition() {
        print("""
            현재\((fitnessCenterMember?.name) ?? "")의 컨디션은 다음과 같습니다.
            상체근력: \((fitnessCenterMember?.bodyCondition.상체근력) ?? -100)
            하체근력: \((fitnessCenterMember?.bodyCondition.하체근력) ?? -100)
            근지구력: \((fitnessCenterMember?.bodyCondition.근지구력) ?? -100)
            피로도: \((fitnessCenterMember?.bodyCondition.피로도) ?? -100)
            """)
//        fitnessCenterMember.
    }
}


