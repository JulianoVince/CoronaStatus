//
//  CovidFetch.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 09/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject {
    
    @Published var allCountries: [CoutryData] = []
    @Published var totalData: TotalData = testTotalData
   
    init() {
        getCurrentTotal()
    }
    
    func getCurrentTotal(){
        
        let headers: HTTPHeaders = [
            "x-rapidapi-key": "2a1af1aa1amshd3e607321375ee7p191601jsnddba03e9cdc2",
            "x-rapidapi-host": "covid-19-data.p.rapidapi.com"
        ]
    
        AF.request("https://covid-19-data.p.rapidapi.com/totals?format=undefined", headers: headers).responseJSON { response in
            
            let result = response.data
            
            if result != nil {
                let json = JSON(result!)
               
                let confirmed = json[0]["confirmed"].intValue
                let deaths = json[0]["deaths"].intValue
                let recovered = json[0]["recovered"].intValue
                let critical = json[0]["critical"].intValue
           
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
            } else {
                self.totalData = testTotalData
            }
        }
        
    }
}
