//
//  CharactersListView.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import SwiftUI
import ComposableArchitecture

struct CharactersListView: View {
    let stateStore: Store<CharactersListState, CharactersListActions>

    var body: some View {
        WithViewStore(stateStore) { viewStore in
            GeometryReader { geom in
                ZStack {
                    List {
                        ForEach(viewStore.characters) { character in
                            Text("Name : \(character.name)")
                                .onTapGesture {
                                    viewStore.send(.showDetails(character))
                                }
                        }
                    }
                    IfLetStore(
                        stateStore.scope(
                            state: \.detailsState,
                            action: CharactersListActions.detailsAction
                        )) { detailsStore in
                            DetailsView(stateStore: detailsStore)
                        }
                }

            }
            .onAppear {
                viewStore.send(.getAllCharacters)
            }
        }
    }
}
