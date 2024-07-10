//
//  CardView.swift
//  Medalbum
//
//  Created by Bruno Dias on 01/07/24.
//

import SwiftUI

struct CardView: View {
    let unit: Unit

    var body: some View {
            
            HStack{
                VStack(alignment: .center){
                    if let imageName = unit.match?.team1.description {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70)
                            } else {
                                imageTreatment(code: unit.unitCode.prefix(3))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    .foregroundColor(.black) // Personalize a cor do ícone conforme necessário
                            }
                    Text(unit.match?.team1.description ?? "")
                }
                
                Spacer()
                
                VStack(alignment: .center, spacing: 8) {
                    Text(categoryTreatment(code: unit.unitCode.prefix(3)))
                        .font(.title2)
                    
                    Text(unit.description)
                        .font(.footnote)
                    
                    Text(extractTime(from: unit.startDateTime)!)
                        .font(.footnote)
                        .foregroundStyle(Color.green)
                        .fontWeight(.bold)
                }
                
                
                Spacer()
                
                VStack(alignment: .center){
                    if let imageName = unit.match?.team2.description {
                                Image(imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 70)
                            } else {
                                imageTreatment(code: unit.unitCode.prefix(3))
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)
                                    .foregroundColor(.black)
                                    .scaleEffect(x: -1, y: 1)
                            }
                    Text(unit.match?.team2.description ?? "")
                }
            }.foregroundStyle(.black)
            .frame(height: 160)
            .overlay(
                                RoundedRectangle(cornerRadius: 25)
                                    .stroke(Color.black, lineWidth: 1) // Define a borda
                            )
            .padding()
        }
        
    
    
}

//#Preview {
//    CardView()
//}
