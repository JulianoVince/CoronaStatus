//
//  CountryDataRowView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 10/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct CountryDataRowView: View {
    
    var countryData: CountryData
    
    var body: some View {
        HStack {
            
            Text("Country")
                .fontWeight(.bold)
                .font(.subheadline)
                .frame(width: 110,alignment: .leading)
                .padding(.leading, 15)
            
            Spacer()
            
            Text("Conf.")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(width: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text("Death")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.leading, 5)
            
            Spacer()
            
            Text("Recover")
            .fontWeight(.bold)
            .font(.subheadline)
            .frame(height: 40)
            .padding(.trailing, 15)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCoutryData)
    }
}
