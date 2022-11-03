//
//  CharactersListState.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import Foundation

struct CharactersListState: Equatable {
    var isLoading = false
    var characters: [MortyCharacter] = []
    var detailsState: DetailsState? = nil
}
