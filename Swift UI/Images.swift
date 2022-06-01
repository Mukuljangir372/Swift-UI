//
//  Images.swift
//  Swift UI
//
//  Created by Mukul Jangir on 01/06/22.
//

import SwiftUI

struct Images: View {
    var body: some View {
        
        //load customer image from xassets
        Image(uiImage: UIImage(named: "macOs")!)
            .resizable()
            .frame(width: 100, height: 100)
            .padding()
            .border(.red)
        
        //aspect ratio
        Image("macOs")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 250)

        
        //load system image
        Image(systemName: "cloud.heavyrain.fill")
            .renderingMode(.original)
            .foregroundColor(.red)
            .background(.blue)
        
        Image(systemName: "theatermasks")
            .resizable()     //must
            .frame(width:250,height:250) //height and width
            .scaledToFit()         //scale to fit
            .symbolRenderingMode(.hierarchical) //foreground and background color heirarchy
            .foregroundColor(.blue)
        
        //loading image from URL
        AsyncImage(url: URL(string: ""))
        
    }
}

struct Images_Previews: PreviewProvider {
    static var previews: some View {
        Images()
    }
}
