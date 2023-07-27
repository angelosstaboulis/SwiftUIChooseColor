//
//  ContentView.swift
//  SwiftUIChooseColor
//
//  Created by Angelos Staboulis on 27/7/23.
//

import SwiftUI

struct ContentView: View {
    @State var random:Double!=3.0
    var body: some View {
        VStack{
            Text("SwiftUIChooseColor").font(.largeTitle)
            if random == 0.0{
                Text("Selected Color = " + "Red" ).padding(30.0)
            } else if random == 1.0{
                Text("Selected Color = " + "Blue" ).padding(30.0)
            } else if random == 2.0{
                Text("Selected Color = " + "Green" ).padding(30.0)
            }else{
                Text("Selected Color = " + "Unknown" ).padding(30.0)
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        VStack{
            Rectangle().frame(width: 150, height: 100, alignment: .center)
                .foregroundColor(random == 0.0 ? Color.red : Color.black)
        }.padding(30.0)
        VStack{
            RoundedRectangle(cornerRadius: 52).frame(width: 150, height: 140, alignment: .center)
                .foregroundColor(random == 1.0 ? Color.blue : Color.black)
                
        }.padding(30.0)
        VStack{
            Ellipse().frame(width: 150, height: 140, alignment: .center)
                .foregroundColor(random == 2.0 ? Color.green : Color.black)
            
                
        }.padding(30.0)
        VStack{
            Button {
                random = Double(Int.random(in: 0...2))
            } label: {
                Text("Choose Random Color").foregroundColor(.white)
            }.background {
                RoundedRectangle(cornerRadius: 22)
                    .frame(width: 200.0, height: 45.0, alignment: .center)
                    .foregroundColor(.orange)
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
