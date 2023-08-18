//
//  GetStartedView.swift
//  FoodApp
//
//  Created by Alfiatun masrifah on 15/08/23.
//

import SwiftUI

struct GetStartedView: View {
    
    @State private var showHomePage = false
    
    var body: some View {
        
        return Group {
            if showHomePage {
                HomeView()
            }else {
                VStack(spacing: 0.0){
                    Image("Onboarding")
                        .padding(.bottom, 50)
                    HStack{
                        
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("180K Store")
                                .font(.custom("Poppins-Regular", size: 16))
                                .foregroundColor(Color("Grey"))
                            Text("Order Your\nFavorite Foods")
                                .font(.custom("Poppins-Bold",size: 36))
                                .foregroundColor(Color("Navy"))
                                
                            Button(
                                action: {
                                    print("Halooo...")
                                    self.showHomePage = true
                                },
                                label: {
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 50)
                                            .frame(width: 327, height: 50)
                                            .foregroundColor(Color("Orange"))
                                        Text("Explore Now")
                                            .font(.custom("Poppins-Bold",size: 16))
                                            .foregroundColor(Color("White"))
                                    }
                                }
                            )
                            .padding(.top, 30.0)
                        }
                    }
                }
            }
        }
        
    
       
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
    }
}
