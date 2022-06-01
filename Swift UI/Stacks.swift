//
//  Stacks.swift
//  Swift UI
//
//  Created by Mukul Jangir on 01/06/22.
//

import SwiftUI

struct Stacks1: View {
    var body: some View {
        
        //we also have ZStack for making overlapping views ui
        
        HStack{
            //Horizontal Stack
            //Align items horizontaly
            Text("hello")
                .padding(.bottom,10)
            Text("hi").padding(10)
        }
    }
}
struct Stacks: View {
    var body: some View {
        VStack {
            //Vertical Stack
            //Align items vertically
            Text("no")
                .frame(maxWidth: .infinity) //infinity will fill to screen
                .padding(.bottom,1)
            Text("yes")
        }
    }
}
struct GeometryDemo: View {
    var body: some View {
        GeometryReader { reader in
            HStack{
                Text("Left")
                    .font(.largeTitle)
                    .background(.red)
                    .frame(width: reader.size.width * 0.33)
                Text("right")
                    .font(.largeTitle)
                    .background(.yellow)
                    .frame(width: reader.size.width * 0.67)
            }
        }.frame(height: 50)
    }
}
struct Relatives: View {
    var body: some View {
        HStack{
            Text("hello")
                .frame(width: .infinity)
                .background(.red)
            Text("king")
                .frame(width: .infinity)
                .background(.yellow)
            
        }.fixedSize(horizontal: false, vertical: true)
            .frame(maxWidth: 250)
    }
}
struct ScrollViewDemo: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20){
                Text("hell")
                 
            }
        }.frame(height: 250)
    }
}
struct LazyRowsOrColumns: View {
    var body: some View {
        ScrollView(.vertical){
            LazyVStack{
               
            }
        }
    }
}
struct Relatives_Previews: PreviewProvider{
    static var previews: some View {
        Relatives()
    }
}
struct Geo_Previews: PreviewProvider{
    static var previews: some View{
        GeometryDemo()
    }
}
struct Stacks_Previews: PreviewProvider {
    static var previews: some View {
        Stacks()
    }
}
