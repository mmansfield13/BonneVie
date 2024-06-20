//
//  Onboarding Welcome View.swift
//  Bonnevie
//
//  Created by Monique Mansfield on 6/20/24.
//

import SwiftUI

struct Onboarding_Welcome_View: View {
    @State private var navigateToNextScreen = false
    
    var body: some View {
        ZStack{
            VStack{
               Image("logo")
                    .resizable().frame(width:200,height:250)
                    .padding()
            }
        }
        
        Text("A List of the best-tasting happy hour food in Downtown Detroit!")
            .foregroundStyle(Color("textColor2"))

        Spacer()
        
        Text("Curated by the Gourmet Girls for taste,ambiance, and meaningful connections.")
            .foregroundStyle(Color("textColor2"))
        
        Spacer()
        
        Text("Start by telling us what you normally have a taste for...")
            .foregroundStyle(Color("textColor2"))
       
        Spacer()
        
        
    }


#Preview {
    Welcome_Screen()
    }
}

#Preview {
    Onboarding_Welcome_View()
}
