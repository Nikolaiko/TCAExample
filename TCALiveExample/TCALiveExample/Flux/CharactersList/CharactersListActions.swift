//
//  CharactersListActions.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import Foundation
import ComposableArchitecture

enum CharactersListActions {
    case getAllCharacters
    case getCharactersResult(TaskResult<[MortyCharacter]>)
    case showDetails(MortyCharacter)
    case detailsAction(DetailsAction)
}
