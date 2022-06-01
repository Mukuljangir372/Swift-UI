//
//  Lists.swift
//  Swift UI
//
//  Created by Mukul Jangir on 01/06/22.
//

import SwiftUI

struct Lists: View {
    let colors = ["red","blue","orange"]
    
    var body: some View {
        VStack{
            ForEach(colors,id: \.self){ color in
                Text("\(color)").padding()
                    .foregroundColor(.red)
            }
        }
    }
    
}

struct Lists_Previews: PreviewProvider {
    static var previews: some View {
        Lists()
    }
}
