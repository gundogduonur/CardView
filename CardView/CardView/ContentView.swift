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
            Image("dev")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack
            {
                VStack(alignment: .leading)
                {
                    Text("APPLE")
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text("Apple introduces Ask Apple for developers")
                        .font(.title)
                        .foregroundColor(.primary)
                        .fontWeight(.black)
                    Text("October 11, 2022")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.sRGB,red:150/255,green: 150/255,blue: 150/255,opacity: 0.1),lineWidth:1))
        .padding([.top,.horizontal])
        }
    }

    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
