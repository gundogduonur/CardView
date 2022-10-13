//
//  ContentView.swift
//  CardView
//
//  Created by Onur Gündoğdu on 13.10.2022.
//

import SwiftUI
import CoreData

struct ContentView: View {
   
    var body: some View {
        VStack
        {
            
        }
        }
    }

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
