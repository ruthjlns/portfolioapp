//
//  WorkspaceViewModel.swift
//  PortfolioApp
//
//  Created by William Kesuma on 28/08/26.
//

import SwiftUI

enum ActiveSheet: Identifiable {
    case about, works, achievements
    
    var id: Int {
        hashValue
    }
}

@Observable
class WorkspaceViewModel {
    var activeSheet: ActiveSheet? = nil
    
    var showAboutCard: Bool = false
}
