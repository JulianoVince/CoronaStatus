//
//  ContentView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 09/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        Text("\(covidFetch.totalData.confirmed)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
