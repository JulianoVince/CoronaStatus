//
//  MapContainerView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 11/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct MapContainerView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    
    var body: some View {
        
        MapView(countryData: $covidFetch.allCountries)
        
    }
}

struct MapContainerView_Previews: PreviewProvider {
    static var previews: some View {
        MapContainerView()
    }
}
