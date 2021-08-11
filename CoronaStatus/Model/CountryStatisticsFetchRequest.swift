//
//  CountryStatisticsFetchRequest.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 11/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CountryStatisticsFetchRequest: ObservableObject {
    
    @Published var detailedCountryData: DetailedCountryData?
    
    let headers: HTTPHeaders = [
        "x-rapidapi-key": "2a1af1aa1amshd3e607321375ee7p191601jsnddba03e9cdc2",
        "x-rapidapi-host": "covid-193.p.rapidapi.com"
    ]
   
    init() { }
    
    func getStatusFor(country: String){
    
        AF.request("https://covid-193.p.rapidapi.com/statistics?country=\(country)", headers: headers).responseJSON { response in
            
            let result = response.data
            
            if result != nil {
                let json = JSON(result!)
//                print(json)Apenas para testes..
//                print(json["response"])
               
                let country = json["response"][0]["country"].stringValue
                
                let deaths = json["response"][0]["deaths"]["total"].intValue
                let newDeaths =  json["response"][0]["deaths"]["new"].intValue
                
                let tests = json["response"][0]["tests"]["total"].intValue
                let criticalCases = json["response"][0]["cases"]["critical"].intValue
                let totalCases = json["response"][0]["cases"]["total"].intValue
                let activeCases = json["response"][0]["cases"]["active"].intValue
                let newCases = json["response"][0]["cases"]["new"].intValue
                let recoveredCases = json["response"][0]["cases"]["recovered"].intValue
           
                self.detailedCountryData = DetailedCountryData(country: country, confirmedCases: totalCases, newCases: newCases, recoveredCases: recoveredCases, criticalCases: criticalCases,activeCase: activeCases, deaths: deaths, newDeaths: newDeaths, testsDone: tests)
            }
        }
    }
}
