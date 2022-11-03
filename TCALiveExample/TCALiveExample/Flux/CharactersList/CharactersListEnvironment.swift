//
//  CharactersListEnvironment.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import Foundation

struct CharactersListEnvironemtn {
    let network = MyRequestController()

    func getAllCharacters() async throws -> [MortyCharacter] {
        return try await network.sendRequest().results!
            .map { networkCharacter in
                MortyCharacter(
                    id: networkCharacter.id!,
                    name: networkCharacter.name!,
                    gender: networkCharacter.gender!.rawValue,
                    url: networkCharacter.url!
                )
            }
        
    }
}
