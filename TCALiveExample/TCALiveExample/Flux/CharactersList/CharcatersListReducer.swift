//
//  CharcatersListReducer.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import Foundation
import ComposableArchitecture

let charactersListReducer = Reducer<
    CharactersListState,
    CharactersListActions,
    CharactersListEnvironemtn> { state, action, env in

        switch action {
        case .getAllCharacters:
            state.isLoading = true
            return .task {
                await .getCharactersResult(TaskResult {
                    try await env.getAllCharacters()
                })
            }
        case let .getCharactersResult(.success(loadedData)):
            state.isLoading = false
            state.characters = loadedData
            return .none
        case let .getCharactersResult(.failure(errorData)):
            state.isLoading = false
            print("Error : \(errorData)")
            return .none
        case let .showDetails(charcater):
            state.detailsState = DetailsState(
                name: charcater.name,
                gender: charcater.gender,
                url: charcater.url
            )
            return .none
        case let .detailsAction(details):
            if details == .back {
                state.detailsState = nil
            }
            return .none
        }
}
