//
//  ContentView.swift
//  SlotsGame
//
//  Created by Umur İslamoğlu on 2.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    private var slotsEnum:[String] = ["cherry" , "apple" , "star"]
    @State private var credits:Int = 1000
    @State private var slots:[String] = ["cherry" ,"cherry","cherry" ]
    @State private var textVisible:Bool = false
    
    var body: some View {

            VStack {
                Text("Slots!").font(.title).padding(.top).foregroundColor(.white)
                Spacer()
                Text("Credit: \(credits)").foregroundColor(.white).fontWeight(.bold)
                Spacer()
                HStack{
                    Image(slots[0])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(slots[1])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(slots[2])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                Spacer()
                if textVisible {
                    Text("JACKPOT!!!").fontWeight(.bold).foregroundColor(.white)
                    Spacer()
                }
                Button("Spin"){
                    textVisible = false
                    for (index , _) in slotsEnum.enumerated() {
                        let rand = Int.random(in:0...2)
                        slots[index] = slotsEnum[rand]
                    }
                    if (slots[0] == slots[1]) && (slots[1] == slots[2]) {
                        textVisible = true
                        credits += 10000
                    } else {
                        credits -= 5
                    }
                }
                .padding()
                .padding([.leading, .trailing], 40)
                .foregroundColor(.white)
                .background(Color(.systemPink))
                .cornerRadius(25)
                .font(.system(size: 18, weight: .bold, design: .default))
                Spacer()
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
