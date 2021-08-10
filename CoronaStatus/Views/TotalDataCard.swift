//
//  TotalDataCard.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 10/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct TotalDataCard: View {
    
    var number: String = "Err"
    var name: String = "Confirmed"
    var color: Color = .primary
    
    var body: some View {
        
        GeometryReader { geometry in
            
            VStack {
                
                Text(self.number)
                    .font(.subheadline)
                    .padding(5)
                    .foregroundColor(self.color)
                
                Text(self.name)
                .font(.body)
                .padding(5)
                .foregroundColor(self.color)
                
            }//End of VStack
                .frame(width: geometry.size.width, height: 80, alignment: .center)
                .background(Color("cardBackgroundGray"))
                .cornerRadius(8.0)
        }// End of GeometryReader
    }
}

struct TotalDataCard_Previews: PreviewProvider {
    static var previews: some View {
        TotalDataCard()
    }
}
