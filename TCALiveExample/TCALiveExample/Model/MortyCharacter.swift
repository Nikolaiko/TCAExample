//
//  MortyCharacter.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import Foundation

struct MortyCharacter: Equatable, Identifiable {
    let id:Int
    let name: String
    let gender: String
    let url: String
}
