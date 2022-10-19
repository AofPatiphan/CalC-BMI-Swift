//
//  ContentView.swift
//  BMI
//
//  Created by Patiphan Manawanich on 19/10/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @State var result:String = "BMI Calculator"
    @State var height:String = ""
    @State var weight:String = ""
    @State var error:String = ""
    var body: some View {
        VStack {
            VStack {
                Text(result)
                    .padding(.vertical)
                HStack {
                    Text("น้ำหนัก")
                        .padding()
                    TextField("กิโลกรัม" ,text:$weight)
                        .padding()
                        .keyboardType(.numberPad)
                }
                
                HStack {
                    Text("ส่วนสูง")
                        .padding()
                    TextField("เซนติเมตร" ,text:$height)
                        .padding()
                        .keyboardType(.numberPad)
                }
                
                Button("เริ่มคำนวณ") {
                    if(self.weight == "" || self.height == ""){
                        return self.error = "Please input Data"
                    }
                    self.result = String(Double(self.weight)!/pow(Double(self.height)!/100.0,2))
                    self.error = ""
                }
                .padding()
                Text(error)
                    .padding()
                    .foregroundColor(.red)
            }.padding(.horizontal, 30.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
