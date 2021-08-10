//
//  TotalDataView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 10/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct TotalDataView: View {
    
    var totalData: TotalData
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                TotalDataCard(number: totalData.confirmed.formatNumber(), name: "Confirmed")
                
                TotalDataCard(number: totalData.critical.formatNumber(), name: "Critical", color: .yellow)
                
                TotalDataCard(number: totalData.deaths.formatNumber(), name: "Deaths", color: .red)
                
            }// End of HStack
            
            HStack {
                
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRat), name: "Death", color: .red)
                
                TotalDataCard(number: totalData.recovered.formatNumber(), name: "Recovered", color: .green)
                
                TotalDataCard(number: String(format: "%.2f", totalData.fatalityRat), name: "Recovery%", color: .green)
                
            }// End of HStack
        
        }//End of VStack
        .frame(height: 170)
        .padding(10)
    }
}

struct TotalDataView_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataView(totalData: testTotalData)
    }
}
