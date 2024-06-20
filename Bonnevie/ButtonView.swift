//
//  ButtonView.swift
//  Bonnevie
//
//  Created by Monique Mansfield on 6/12/24.
//

import SwiftUI

struct ButtonView: View {
@State var buttonLabel: String
@State var isToggled = Bool()

    @ObservedObject var vm = ViewModel.shared

    
var body: some View {
        Button {
            isToggled.toggle()
            vm.selectedVibes.append(buttonLabel)
            // TODO Add logic to remove vibe from list
            print(vm.selectedVibes.count)
            
        } label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    .foregroundStyle(isToggled ? .textColor2 : .white)
                    .frame(width:350, height: 50)
                RoundedRectangle(cornerRadius: 10, style: .circular)
                    .stroke(lineWidth: 2)
                    .foregroundStyle(isToggled ? .textColor2 : .black)
                    .frame(width:350, height: 50)
                Text(buttonLabel)
                    .foregroundStyle(isToggled ? .white: .black)
                    .font(.largeTitle)
                    .bold()
                    
            }
    }
}
}

#Preview {
ButtonView(buttonLabel: "Preference Selection")
}

