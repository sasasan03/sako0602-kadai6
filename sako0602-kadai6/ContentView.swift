//
//  ContentView.swift
//  sako0602-kadai6
//
//  Created by sako0602 on 2022/12/04.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randomValue: UInt32 = arc4random_uniform(100)
    @State private var currentValue: Double = 50
    @State private var showingAlert = false
    @State private var alertMessage = ""
    
    var body: some View {
        VStack {
            Text("\(randomValue)")
            VStack {
                Slider(value: $currentValue,
                       in:  0...100,
                       step: 1.0
                       )
                HStack {
                    Text("0")
                    Spacer()
                    Text("100")
                }
            }
            .padding()
            Button("判定!"){
                showingAlert = true
                judgement(inputNnm: currentValue)
            }
        }
        .alert(
            Text("結果"),
            isPresented: $showingAlert
        ) {
            Button("再挑戦"){
            randomValue = arc4random_uniform(100)
            }
        } message: {
                let intCurrentValue = Int(currentValue)
                Text("\(alertMessage)\n あなたの値：\(intCurrentValue)")
        }
    }
    
    func judgement(inputNnm: Double) {
        let doubleRandomValue = Double(randomValue)
        if doubleRandomValue == inputNnm {
            alertMessage = "あたり！"
        } else {
            alertMessage = "はずれ！"
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
