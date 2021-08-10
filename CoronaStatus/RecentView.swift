//
//  RecentView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 10/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct RecentView: View {
    
    @ObservedObject var covidFetch = CovidFetchRequest()
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView {

            VStack {
                
                ListHeaderView()
                
                List {
                    ForEach(covidFetch.allCountries.filter{
                        self.searchText.isEmpty ? true : $0.country.lowercased().contains(self.searchText.lowercased())
                    }, id: \.country) { countryData in
                        
                        CountryDataRowView(countryData: countryData)
                    }
                }
            }//End of VStack
            
        }//End of NavigationView
    }
}

struct RecentView_Previews: PreviewProvider {
    static var previews: some View {
        RecentView()
    }
}
