//
//  ContentView.swift
//  xAndOApp
//
//  Created by Ummul Khair Abdulkarim on 02/04/2024.
//

import SwiftUI
enum Emoji: String, CaseIterable{
    case ｘ,𝟢
}
struct ContentView: View {
    @State var selection: Emoji = .ｘ
    var body: some View {
        
        
        VStack {
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            HStack {
                Button{
                    if(selection == (.ｘ))
                    {
                        print("hellox");
                    label: do {Image(systemName: "xmark.square").resizable(capInsets: EdgeInsets(), resizingMode: .tile).foregroundColor(.black)}
                        
                    }
                    if(selection == (.𝟢))
                    {
                        print("helloO");
                    label: do {Image(systemName: "o.square").resizable(capInsets: EdgeInsets(), resizingMode: .tile).foregroundColor(.black)}
                        
                    }
                        disabled(false)
                }label: {
                    
                    Image(systemName: "square").resizable(capInsets: EdgeInsets(), resizingMode: .tile).foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "o.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "xmark.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            HStack {
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "o.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "xmark.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "o.square.fill").resizable(resizingMode: .tile).foregroundColor(.black)
                }
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            HStack {
                
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                   // Image(systemName: "o.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "xmark.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
                Spacer()
                Spacer()
                Spacer()
                Button{
                    
                }label: {
                    Image(systemName: "square").resizable(resizingMode: .tile).foregroundColor(.black)
                    //Image(systemName: "xmark.square").resizable(resizingMode: .tile).foregroundColor(.black)
                }
            }
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            HStack {
                VStack{
                    
                    Text(selection.rawValue).font(.system(size: 20))
                    Picker("Select Emoji", selection: $selection){
                        ForEach(Emoji.allCases, id: \.self)
                        {
                            emoji in Text(emoji.rawValue)
                        }
                    }.pickerStyle(.segmented)
                    .padding()
                }
            }
            
        }
        .padding().background(Color(hue: 0.462, saturation: 0.039, brightness: 0.874))
    }
}

#Preview {
    ContentView()
}
