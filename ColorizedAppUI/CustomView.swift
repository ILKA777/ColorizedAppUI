//
//  CustomView.swift
//  ColorizedAppUI
//
//  Created by Илья Морин on 15.01.2023.
//

import SwiftUI
import UIKit

struct CustomView: View {
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .foregroundColor(color)
            .frame(width:300, height: 160)
    }
}

struct CustomView_Previews: PreviewProvider {
    static var previews: some View {
        CustomView(color: .red)
    }
}
