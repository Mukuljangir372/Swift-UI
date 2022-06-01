//
//  TextUI.swift
//  Swift UI
//
//  Created by Mukul Jangir on 01/06/22.
//

import SwiftUI

struct TextUI: View {
    
    @State private var name: String = "hello"
     
    var body: some View {
    

        
        VStack {
        
            //Simple Text
            Text("Simple Text")
            
            //text with color, size, font, padding
            Text("Text with color, size, font, padding")
                .font(.headline) //style
                .frame(width: 100)
                .foregroundColor(.red)
                .background(.yellow)
                .padding()
            
            //text with limit, align and ellipsize
            Text("Text with limit is so much fun to use")
                .lineLimit(1)  //limit 1
                .multilineTextAlignment(.center) //align at center
                .truncationMode(.head) //ellipsize at end
            
            //text with custom font and size
            Text("Custom size text")
                .font(.custom("",size: 10)) //customer
            
            
            //format text
            Text(113,format: .currency(code: "INR")) //current in INR
            
            //format date/time
            let _: DateFormatter = {
                let format = DateFormatter()
                format.dateStyle = .long
                return format
            }()
            
//            Text(1182039482,format : dateFormat)
            
            //current Date/Time
            Text(Date(),style: .date) //date
            Text(Date(),style: .time)//time
            
            
            //TextFields
            TextField("hello",text: $name)
                .textFieldStyle(.roundedBorder)
                .foregroundColor(.black)
                .textCase(.uppercase) //uppercase
                .padding(.horizontal)
                
            //Text with image
            Label("Lable with image",systemImage: "star")
       
            //make text as placeholder
            Text("hello")
                .redacted(reason: .placeholder)
        
    
          
               
        }
        
    }
}

struct TextUI_Previews: PreviewProvider {
    static var previews: some View {
        TextUI()
    }
}
