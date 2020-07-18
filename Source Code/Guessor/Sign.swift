//
//  Sign.swift
//  Guessor
//
//  Created by apple27 on 2019/9/26.
//  Copyright © 2019年 bjutsoft. All rights reserved.
//

import Foundation
import GameplayKit

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> String {
    let sign = randomChoice.nextInt()
    if sign == 0 {
        return "👊"
    }
    else if sign == 1 {
        return "🖐️"
    }
    else {
        return "✌️"
    }
}

