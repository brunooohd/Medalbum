//
//  LiveView.swift
//  Medalbum
//
//  Created by Bruno Dias on 05/07/24.
//

import SwiftUI

struct LiveView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    HStack{
                        Text("Football")
                            .font(Font.title3)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: UnitsView()){
                            Text("Show All")
                        }
                    }
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 16){
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.red)
                                .frame(width: 340, height: 200)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.green)
                                .frame(width: 340, height: 200)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.yellow)
                                .frame(width: 340, height: 200)
                            
                        }
                    }
                    
                    Divider()
                    
                    
                    HStack{
                        Text("Rugby")
                            .font(Font.title3)
                            .fontWeight(.bold)
                        Spacer()
                        NavigationLink(destination: UnitsView()){
                            Text("Show All")
                        }
                    }
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack(spacing: 16){
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.gray)
                                .frame(width: 340, height: 200)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.mint)
                                .frame(width: 340, height: 200)
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.teal)
                                .frame(width: 340, height: 200)
                            
                        }
                    }

                    
                    
                    
                }.padding()
            }
            .navigationTitle("Live")
        }
    }
}

#Preview {
    LiveView()
}
