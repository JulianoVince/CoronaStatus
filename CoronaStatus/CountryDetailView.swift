//
//  CountryDetailView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 10/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct CountryDetailView: View {
    
    @ObservedObject var countryStatisticsRequest = CountryStatisticsFetchRequest()
    
    var countryName: String
    
    var body: some View {
        VStack{
            VStack {
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.confirmedCases.formatNumber() ?? "Err", name: "Confirmed")
                    .padding(.top)
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.activeCase.formatNumber() ?? "Err", name: "Active Cases")
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.newCases.formatNumber() ?? "Err", name: "New Cases")

            }//End of VStack
            .background(Color("cardBackgroundGray"))
            .cornerRadius(8)
            .padding()
            
            Spacer()
        }// End of VStack
            .padding(.top, 50)
            .navigationBarTitle(countryName)
            .onAppear(){
                self.getStatistics()
        }
    }
    
    private func getStatistics(){
        countryStatisticsRequest.getStatusFor(country: self.countryName)
    }
}
