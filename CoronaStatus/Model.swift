//
//  File.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 09/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import Foundation

struct TotalData {
    
    let confirmed: Int
    let critical: Int
    let deaths: Int
    let recovered: Int
    
    var fatalityRat: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}


struct CoutryData {
    
    let country:String
    let confirmed: Int64
    let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let latitude: Double
    let longitude: Double
    
    var fatalityRat: Double {
        return (100.00 * Double(deaths)) / Double(confirmed)
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered)) / Double(confirmed)
    }
}

let testTotalData = TotalData(confirmed: 200, critical: 100, deaths: 20, recovered: 50)
let testCoutryData = CoutryData(country: "Test", confirmed: 500, critical: 300, deaths: 200, recovered: 100, latitude: 0.0, longitude: 0.0)
