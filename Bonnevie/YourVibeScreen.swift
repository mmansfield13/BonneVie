//
//  Your Vibe Screen.swift
//  Bonnevie
//
//  Created by Monique Mansfield on 6/12/24.
//

import SwiftUI

struct Your_Vibe_Screen: View {
    
    @ObservedObject var vm = ViewModel.shared
    
    var body: some View {
        NavigationView{
            VStack{
                Image("BonnevieText2")
                Text("WHAT'S YOUR VIBE?")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 100)
                    .multilineTextAlignment(.center)
//                Spacer()
                ForEach(vm.vibes, id: \.self) { vibe in
                    ButtonView(buttonLabel: vibe)
                }
                HStack{
                    Spacer()
                Button {

                }
                label: {
                    Text(">")
                        .foregroundColor(.textColor2)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    
                }
            }
            
                
//                    ZStack {
//                        RoundedRectangle(cornerRadius: 20)
//                            .foregroundColor(.white)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                            .shadow(color: .black, radius: 0.1, x: 0.1, y: -0.1)
//                        Text(vibe)
//                            .font(.largeTitle)
//                            .fontWeight(.bold)
                    
    
                    }
                }
                .padding()
                
            }
        }
        
        

#Preview {
    Your_Vibe_Screen()
}
