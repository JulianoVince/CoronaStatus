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
            
            Text(countryData.country)
                .fontWeight(.medium)
                .font(.subheadline)
                .lineLimit(2)
                .frame(width: 110,alignment: .leading)
            
            Spacer()
            
            Text(countryData.confirmed.formatNumber())
            .font(.subheadline)
            .frame(width: 90)
            .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.deaths.formatNumber())
            .frame(width: 80,height: 40, alignment: .center)
            .font(.subheadline)
            .foregroundColor(.red)
            .padding(.leading, 5)
            
            Spacer()
            
            Text(countryData.recovered.formatNumber())
            .frame(width: 80,height: 40, alignment: .center)
            .font(.subheadline)
            .foregroundColor(.green)
        }
    }
}

struct CountryDataRowView_Previews: PreviewProvider {
    static var previews: some View {
        CountryDataRowView(countryData: testCoutryData)
    }
}
