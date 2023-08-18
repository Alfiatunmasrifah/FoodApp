//
//  HomeView.swift
//  FoodApp
//
//  Created by Alfiatun masrifah on 15/08/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchfood: String = ""
    
    @State private var showDetailPage = false
    
    var body: some View {
        
        return Group {
            if showDetailPage {
                DetailView()
            } else{
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    VStack (alignment: .leading, spacing: 0.0){
                        HStack {
                            Image("UserPhoto")
                            Spacer()
                            VStack(alignment: .trailing){
                                Text("Howdy")
                                    .font(.custom("Poppins-Regular", size: 14))
                                    .foregroundColor(Color("Grey"))
                                Text("Luna Polar")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("Navy"))
                            }
                        }
                        VStack (alignment: .center) {
                            Text("What do you want\nfor lunch?")
                                .font(.custom("Poppins-Bold", size: 22))
                                .foregroundColor(Color("Navy"))
                                .multilineTextAlignment(.center)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 66, maxHeight: 66)
                        .padding(.top, 30.0)
                        .padding(.bottom, 24.0)
                        HStack{
                            TextField("Search pizza, burger, etc ..",
                            text: $searchfood
                            )
                            .disableAutocorrection(true)
                            .padding(.leading, 24.0)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: 50)
                        .background(Color("SoftGrey"))
                        .cornerRadius(50.0)
                        
                        VStack (alignment: .leading, spacing: 0) {
                            Text("Categories")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 12.0)
                            ScrollView(.horizontal, showsIndicators: false, content: {
                                HStack{
                                    HStack {
                                        Image("CateBread")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Bread")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("SoftGrey"))
                                    .cornerRadius(50.0)
                                    HStack {
                                        Image("CateSweet")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Sweet")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("SoftGrey"))
                                    .cornerRadius(50.0)
                                    HStack {
                                        Image("CateHealthy")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Healthy")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("SoftGrey"))
                                    .cornerRadius(50.0)
                                    HStack {
                                        Image("CateBread")
                                            .padding(.vertical, 5.0)
                                            .padding(.leading, 5.0)
                                        Text("Bread")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                            .padding(.trailing, 18.0)
                                    }
                                   
                                    .background(Color("SoftGrey"))
                                    .cornerRadius(50.0)
                                }
                            })
                            
                        }
                        .padding(.top, 30.0)
                        
                        VStack(alignment: .leading, spacing: 0.0){
                            Text("Most Ordered")
                                .font(.custom("Poppins-SemiBold", size: 16))
                                .foregroundColor(Color("Navy"))
                                .padding(.bottom, 12.0)
                            HStack{
                                Image("FoodOrange")
                                    .frame(minWidth: 80, maxWidth: 80, minHeight: 80, maxHeight: 80)
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Orange Food")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 6.0)
                                Spacer()
                                HStack{
                                    Text("4.5")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("IconStar")
                                }
                            }
                            .padding(.bottom, 18.0)
                            HStack{
                                Image("FoodGyoza")
                                    .frame(minWidth: 80, maxWidth: 80, minHeight: 80, maxHeight: 80)
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Gyoza Sapi")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Meal")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 6.0)
                                Spacer()
                                HStack{
                                    Text("4.7")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("IconStar")
                                }
                               
                            }
                            .onTapGesture {
                                self.showDetailPage = true
                            }
                           
                           
                            .padding(.bottom, 18.0)
                            HStack{
                                Image("FoodAvocado")
                                    .frame(minWidth: 80, maxWidth: 80, minHeight: 80, maxHeight: 80)
                                VStack(alignment: .leading, spacing: 0.0){
                                    Text("Avocado Salad")
                                        .font(.custom("Poppins-SemiBold", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Text("Healthy")
                                        .font(.custom("Poppins-Regular", size: 14))
                                        .foregroundColor(Color("Grey"))
                                }
                                .padding(.leading, 6.0)
                                Spacer()
                                HStack{
                                    Text("4.2")
                                        .font(.custom("Poppins-Medium", size: 16))
                                        .foregroundColor(Color("Navy"))
                                    Image("IconStar")
                                }
                            }
                           
                            .padding(.bottom, 30.0)
                            VStack(alignment: .leading, spacing: 0.0){
                                Text("Newest Foods")
                                    .font(.custom("Poppins-SemiBold", size: 16))
                                    .foregroundColor(Color("Navy"))
                                    .padding(.bottom, 12.0)
                                HStack{
                                    Image("FoodGyoza")
                                        .frame(minWidth: 80, maxWidth: 80, minHeight: 80, maxHeight: 80)
                                    VStack(alignment: .leading, spacing: 0.0){
                                        Text("Gyoza Sapi")
                                            .font(.custom("Poppins-SemiBold", size: 16))
                                            .foregroundColor(Color("Navy"))
                                        Text("Meal")
                                            .font(.custom("Poppins-Regular", size: 14))
                                            .foregroundColor(Color("Grey"))
                                    }
                                    
                                    .padding(.leading, 6.0)
                                    Spacer()
                                    HStack{
                                        Text("4.5")
                                            .font(.custom("Poppins-Medium", size: 16))
                                            .foregroundColor(Color("Navy"))
                                        Image("IconStar")
                                    }
                                }
                                
                            }
                            

                        }
                        .padding(.top, 30.0)
                    }
                    .padding(.horizontal, 24.0)

                    
                })
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
