//
//  AddFoodView.swift
//  iCalories
//
//  Created by Gabriel Eduardo on 17/08/23.
//

import SwiftUI

struct AddFoodView: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var calories: Double = 0
    
    var body: some View {
        Form {
            Section {
                TextField("Nome da comida", text: $name)
                VStack {
                    Text("Calorias: \(Int(calories))")
                    Slider(value: $calories, in: 0...1000, step: 10)
                }
                .padding()
                HStack{
                    Spacer()
                    Button("Concluir") {
                        DataController().addFood(name: name, calories: calories, context: managedObjContext)
                        dismiss()
                    }
                    Spacer()
                }
            }
        }
    }
}

struct AddFoodView_Previews: PreviewProvider {
    static var previews: some View {
        AddFoodView()
    }
}
