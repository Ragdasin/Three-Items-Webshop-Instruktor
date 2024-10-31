//
//  ContentView.swift
//  tiw2
//
//  Created by Job Silas Nisgaard Ehrich on 30/10/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var cart: [String] = []
    var body: some View {
        NavigationView{
            ZStack{
                Color(.blue)
                    .ignoresSafeArea()
                ScrollView {
                    VStack{
                        Text("Three Items Shop")
                            .font(.system(size:40))
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(.white)
                            .cornerRadius(10)
                            .shadow(radius: 3)
                            
                        VStack{
                            Image("carroty")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            HStack{
                                Text("Carrot")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                Spacer()
                                VStack{
                                    HStack{
                                        Image(systemName: "star.fill")
                                        Image(systemName: "star.fill")
                                        Image(systemName: "star.fill")
                                        Image(systemName: "star.leadinghalf.filled")
                                        Image(systemName: "star")
                                    } .foregroundColor(Color.orange)
                                    Text("Reviews: 432")
                                        .foregroundColor(Color.orange)
                                }
                            }
                            HStack{
                                Text("The distinct color, hard texture and sweet taste never dissapoints. This bio-range carrot will level-up your cooking")
                                Spacer()
                            }
                            Button(action: {
                                addCarrot()
                            }, label: {
                                Text("Add to cart")
                                Image(systemName: "cart.badge.plus.fill")
                            })
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(.blue)
                            .cornerRadius(10)
                        }
                        .padding()
                        .background(Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .shadow(radius: 15))
                        .padding()
                        
                    }
                    VStack{
                        Image("mba")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        HStack{
                            Text("MacBook Pro")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                            VStack{
                                HStack{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                } .foregroundColor(Color.orange)
                                Text("Reviews: 48")
                                    .foregroundColor(Color.orange)
                            }
                        }
                        HStack{
                            Text("Xcode 16 includes SDKs for iOS 18, iPadOS 18, tvOS 18, watchOS 11, macOS Sequoia 15, and visionOS 2. The Xcode 16 release supports on-device debugging in")
                            Spacer()
                        }
                        Button(action: {
                            addMac()
                        }, label: {
                            Text("Add to cart")
                            Image(systemName: "cart.badge.plus.fill")
                        })
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 15))
                    .padding()
                    
                    
                    VStack{
                        Image("momsS")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        HStack{
                            Text("Mom's Spaghetti")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Spacer()
                            VStack{
                                HStack{
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                } .foregroundColor(Color.orange)
                                Text("Reviews: 2K")
                                    .foregroundColor(Color.orange)
                            }
                        }
                        HStack{
                            Text("His palms are sweaty, knees weak, arms are heavy. There's vomit on his sweater already!")
                            Spacer()
                        }
                        
                        
                        Button(action: {
                            addMoms()
                        }, label: {
                            Text("Add to cart")
                            Image(systemName: "cart.badge.plus.fill")
                        })
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(10)
                    }
                    .padding()
                    .background(Rectangle()
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 15))
                    .padding()
                }
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                        NavigationLink(destination: CartView(cart: cart)){
                            Image(systemName: "cart")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .padding()
                                .foregroundColor(.white)
                                .background(Color(hue: 0.593, saturation: 0.677, brightness: 0.364))
                                .opacity(0.9)
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        }
                        
                    }
                    .padding(.trailing, 20.0)
                    
                }
                
                
            }
        }
        
        }
     //body end
    
    
    func addCarrot(){
        cart.append("1x Carrot")
        
    }
    

func addMac(){
    cart.append("1x MacBook Pro")
    
}


func addMoms(){
    cart.append("1x Mom's Spaghetti")
    
}
  
    
    //contentView end
}
    
#Preview {
    ContentView()
}
