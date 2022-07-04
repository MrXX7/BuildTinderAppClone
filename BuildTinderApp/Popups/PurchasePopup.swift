//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 3.07.2022.
//

import SwiftUI

struct PurchasePopup: View {
    
    let screen = UIScreen.main.bounds
    
    func processPayment() {
        
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                VStack {
                    Text("Get Tinder Gold")
                    foregroundColor(.yellow)
                        .font(.system(size: 24, weight: .bold))
                    
                    Text("PurchaseSwipePromo")
                        .frame(height: geo.size.height / 3)
                        .background(.gray)
                        
                    Text("3 purchase Options")
                    
                    Button(action: { processPayment() }, label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 45)
                                .foregroundColor(.yellow)
                            Text("CONTINUE")
                                .foregroundColor(.white)
                                .font(.system(size: 20, weight: .heavy))
                        }
                    })
                    .frame(height: 55)
                    .padding(.horizontal, 24)
                    .padding(.top, 12)
                    
                    Button(action: {}, label: {
                        Text("NO THANKS")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                    })
                    .padding(.vertical, 18)
                    
                    Spacer()
                }
                .frame(width: geo.size.width)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white)
            )
                VStack {
                    Text("Recurring billing, cancel anytime.")
                }
            }
        }
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    static var previews: some View {
        PurchasePopup()
    }
}
