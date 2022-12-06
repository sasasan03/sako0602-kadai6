//
//  ExperimentView.swift
//  sako0602-kadai6
//
//  Created by sako0602 on 2022/12/05.
//

import SwiftUI

struct ExperimentView: View {
    @State var randomValue: UInt32 = arc4random_uniform(100)
        
    var body: some View {
        Text("\(randomValue)")
        
            }
    func judgement(inputNnm: inout Int) {
        if randomValue == inputNnm {
        //    message = true
            print("正解")
        } else {
        //    message = true
            print("残念")
        }
    }
        }

struct ExperimentView_Previews: PreviewProvider {
    static var previews: some View {
        ExperimentView()
    }
}
