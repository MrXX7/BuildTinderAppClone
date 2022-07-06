//
//  PurchasePopup.swift
//  BuildTinderApp
//
//  Created by Oncu Ohancan on 3.07.2022.
//

import SwiftUI

struct PurchasePopup: View {
    
    @Binding var isVisible: Bool
    
    let screen = UIScreen.main.bounds
    
    func processPayment() {
        
    }
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer().frame(height: 40)
                
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
                    
                    Button(action: { isVisible = false }, label: {
                        Text("NO THANKS")
                            .foregroundColor(.textPrimary)
                            .font(.system(size: 20, weight: .heavy))
                    })
                    .padding(.vertical, 18)
                }
                .frame(width: geo.size.width)
                .padding(.vertical, 20)
                .background(
                    RoundedRectangle(cornerRadius: 25, style: .continuous)
                        .foregroundColor(.white)
            )
                Spacer()
                VStack(spacing: 4) {
                    Text("Recurring billing, cancel anytime.")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                        Text("This is a bunch of example....")
                        .foregroundColor(.white.opacity(0.5))
                        .font(.system(size: 14, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                }
                .padding(.bottom, 20)
                .padding(.horizontal, 4)
                Spacer()
            }
            .background(Color.black.edgesIgnoringSafeArea(.all))
        }
        .frame(height: screen.height)
    }
}

struct PurchasePopup_Previews: PreviewProvider {
    @State private var isVisible: Bool = false
    
    static var previews: some View {
        PurchasePopup(isVisible: .constant(true))
    }
}
