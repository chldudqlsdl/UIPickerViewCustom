//
//  ContentView.swift
//  UIPickerViewCustom
//
//  Created by Youngbin Choi on 2023/07/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("야옹이")
            CustomPickerViewController()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
