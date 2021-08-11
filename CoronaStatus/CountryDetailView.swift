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
                
                CountryDetailRow(number: "+" + (countryStatisticsRequest.detailedCountryData?.newCases.formatNumber() ?? "Err"), name: "New Cases")
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.recoveredCases.formatNumber() ?? "Err", name: "Recovered Cases", color: .green)
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.criticalCases.formatNumber() ?? "Err", name: "Critical Cases", color: .yellow)
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.deaths.formatNumber() ?? "Err", name: "Deaths", color: .red)
                
                CountryDetailRow(number: "+" + (countryStatisticsRequest.detailedCountryData?.newDeaths.formatNumber() ?? "Err"), name: "New Deaths", color: .red)
                
                CountryDetailRow(number: countryStatisticsRequest.detailedCountryData?.testsDone.formatNumber() ?? "Err", name: "Test Done", color: .yellow)
                
                CountryDetailRow(number: String(format: "%.2f", countryStatisticsRequest.detailedCountryData?.fatalityRat ?? 0.0) + "%", name: "Recovery Rate", color: .red)
                
                CountryDetailRow(number: String(format: "%.2f", countryStatisticsRequest.detailedCountryData?.recoveredRate ?? 0.0) + "%", name: "Recovery Rate", color: .green)
                
                
            }//End of VStack
                .background(Color("cardBackgroundGray"))
                .cornerRadius(8)
                .padding()
            
            Spacer()
        }// End of VStack
            .padding(.top, 25)
            .navigationBarTitle(countryName)
            .onAppear(){
                self.getStatistics()
        }
    }
    
    private func getStatistics(){
        countryStatisticsRequest.getStatusFor(country: self.countryName)
    }
}
