//
//  DetailsReducer.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 04.11.2022.
//

import Foundation
import ComposableArchitecture

let detailsReducer = Reducer<
    DetailsState,
    DetailsAction,
    DetailsEnvironment> { state, action, env in

        switch action {
        case .tapOnSomething:
            return .none
        case .back:
            return .none
        }

    }
