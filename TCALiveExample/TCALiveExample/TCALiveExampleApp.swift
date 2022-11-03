//
//  TCALiveExampleApp.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCALiveExampleApp: App {
    var body: some Scene {
        WindowGroup {
            CharactersListView(
                stateStore: Store<CharactersListState, CharactersListActions> (
                    initialState: CharactersListState(),
                    reducer: charactersListReducer,
                    environment: CharactersListEnvironemtn()
                )
            )
        }
    }
}
