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
            Image("watch")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack
            {
                VStack(alignment: .leading)
                {
                    Text("APPLE")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("watchOS 9 new features")
                        .font(.title)
                        .foregroundColor(.primary)
                        .fontWeight(.black)
                    Text("September 12, 2022")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        }
    }

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
