//
//  DetailView.swift
//  FoodApp
//
//  Created by Alfiatun masrifah on 18/08/23.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack (alignment: .leading, spacing: 0.0) {
                Image("GyozaPhoto")
                    .padding(.top, 30.0)
                    .padding(.bottom, 20.0)
                HStack (spacing: 0.0) {
                    VStack (alignment: .leading, spacing: 0.0){
                        Text("Gyoza Sapi")
                            .font(.custom("Poppins-Bold", size: 16))
                            .foregroundColor(Color("Navy"))
                        Text("Meal")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("Grey"))
                            .padding(.top, 6.0)
                       
                    }
                    Spacer()
                    HStack (spacing: 0.0) {
                        Text("4.5")
                            .font(.custom("Poppins-Medium", size: 16))
                            .foregroundColor(Color("Navy"))
                            .padding(.top, 4.0)
                        Image("IconStar")
                    }
                }
                .padding(.trailing)
                Text("Makanan asal Bandung dengan tekstur yang lembut sehingga ketika dimakan rasanya tidak sakit tenggorokan.")
                    .font(.custom("Poppins-Regular", size: 16))
                    .foregroundColor(Color("Navy"))
                    .padding(.top, 16.0)
                    .padding(.bottom, 20.0)
                    .lineSpacing(8.0)
                VStack(alignment: .leading, spacing: 0.0){
                    Text("Most Ordered")
                        .font(.custom("Poppins-SemiBold", size: 16))
                        .foregroundColor(Color("Navy"))
                        .padding(.bottom, 12.0)
                    HStack{
                        Image("BundleOne")
                            .padding(.trailing, 16.0)
                        Image("BundleTwo")
                            .padding(.trailing, 16.0)
                        Image("BundleThree")
                    }
                }
                .padding(.bottom, 30.0)
                HStack (spacing: 0.0) {
                    VStack (alignment: .leading, spacing: 0.0){
                        Text("20.000")
                            .font(.custom("Poppins-Bold", size: 22))
                            .foregroundColor(Color("Navy"))
                            .padding(.bottom, 6.0)
                        Text("/porsi")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("Grey"))
                            .padding(.bottom, 12.0)
                    }
                    Spacer()
                    Button(
                        action: {
                            print("Halooo...")
                        },
                        label: {
                            ZStack{
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 190, height: 50)
                                    .foregroundColor(Color("Orange"))
                                Text("Order Now")
                                    .font(.custom("Poppins-Bold",size: 16))
                                    .foregroundColor(Color("White"))
                            }
                        }
                    )
                }
            }
            .padding(.horizontal, 24.0)
        })
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
