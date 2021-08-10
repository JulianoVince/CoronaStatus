//
//  SearchView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 10/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack {
            TextField("Country...", text: $searchText).padding()
        }
        .frame(height: 50)
        .background(Color("cardBackgroundGray"))
    }
}
