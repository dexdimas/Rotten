//
//  ViewModelBase.swift
//  Rotten
//
//  Created by Andimas Bagaswara on 03/10/20.
//

import Foundation

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
