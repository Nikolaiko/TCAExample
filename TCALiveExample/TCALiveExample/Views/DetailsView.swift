//
//  DetailsView.swift
//  TCALiveExample
//
//  Created by Nikolai Baklanov on 03.11.2022.
//

import SwiftUI
import ComposableArchitecture

struct DetailsView: View {
    let stateStore: Store<DetailsState, DetailsAction>

    var body: some View {
        WithViewStore(stateStore) { viewStore in
            GeometryReader { geometry in
                VStack {
                    Text(viewStore.name)
                    Text(viewStore.gender)
                }
                .background(Color.white)
            }
            .background(
                Rectangle()
                    .fill(Color.gray)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .ignoresSafeArea(.all)
                    .onTapGesture {
                        viewStore.send(.back)
                    }
            )

        }
    }
}
