//
//  FitnessCenterError.swift
//  CodeStarterCamp_Week4
//
//  Created by 김동용 on 2022/05/12.
//

import Foundation

//MARK: - FitnessCenterError
enum FitnessCenterError: LocalizedError {
    case overFatigue
    case lackOfExercise
    case unrecognizedInput
    case noMember
    case exeptionError
}

extension FitnessCenterError {
    public var errorDescription: String? {
        switch self {
        case .overFatigue:
            return NSLocalizedString("""
                                    --------------
                                    예하하하. \(center.fitnessCenterMember?.name ?? "")님의 피로도가 \(center.fitnessCenterMember?.bodyCondition.fatigue ?? -100)입니다. 프로틴을 드세요
                                    """, comment: "Description of overFatigue")
        case .lackOfExercise:
            return NSLocalizedString("예하하하. 운동을 더해야겠군요", comment: "Description of lackOfExercise")
        case .unrecognizedInput:
            return NSLocalizedString("잘못된 입력입니다.", comment: "Description of unrecognizedInput")
        case .noMember:
            return NSLocalizedString("예하하하. 이곳엔 그런사람 없습니다", comment: "Description of noMember")
        case .exeptionError:
            return NSLocalizedString("예하하하. 뭐라고 하시는거죠?", comment: "Description of exeptionError")
        }
    }
}
