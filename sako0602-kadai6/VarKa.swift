//
//  kai1110.swift
//  sako0602-kadai6
//
//  Created by sako0602 on 2022/12/13.
//

import SwiftUI

struct VarKa: View {
    @State private var randomNumber = Int.random(in: 1...100)
       @State private var answerNumber: Double = 50
       @State private var isAlert = false
       @State private var alertText = ""
    var body: some View {
        VStack(spacing: 50) {
            Text("\(randomNumber)")
                .font(.largeTitle)
            
            VStack {
                Slider(value: $answerNumber, in: 1...100)
                HStack {
                    Text("1")
                    Spacer()
                    Text("100")
                }
            }
            .padding()
            
            Button(action: {
                checkNumber()
                isAlert = true
            }) {
                Text("判定!")
                    .font(.title2)
            }
        }
        .alert("結果", isPresented: $isAlert) {
            Button("再挑戦") {
                randomNumber = Int.random(in: 1...100)
            }
        } message: {
            let intAnswerNumber = Int(answerNumber)
            Text("\(alertText) \n あなたの値:\(intAnswerNumber)")
        }
    }
    func checkNumber() {
        let intAnswerNumber = Int(answerNumber)
        if randomNumber == intAnswerNumber {
            alertText = "あたり"
        }
        else {
            alertText = "はずれ"
        }
    }
}

struct VarKa_Previews: PreviewProvider {
    static var previews: some View {
        VarKa()
    }
}
