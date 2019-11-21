//
//  ContentView.swift
//  Task
//
//  Created by Hazem Mohammed on 10/3/19.
//  Copyright © 2019 Hazem Mohammed. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack(spacing: 10) {
                Image("download")
                    .clipShape(Circle())
                    .shadow(radius: 10)
                VStack(alignment: .leading,spacing: 10) {
                    Text("Ahmed")
                        .bold()
                        .foregroundColor(.black)
                    Text("Cairo,Eg")
                        .bold()
                        .foregroundColor(.gray)
                    Text("In the end, it's not the years in your life that count. it's the life in your years")
                        .lineLimit(nil)
                        .foregroundColor(.gray)
                }
                .padding()
            }
            .padding()
            ZStack {
                HStack(alignment: .center, spacing: 50) {
                    VStack(alignment: .center, spacing: 15) {
                        Text("109")
                            .bold()
                            .foregroundColor(.black)
                        Text("Posts")
                            .foregroundColor(.gray)
                    }
                    VStack(alignment: .center, spacing: 15) {
                        Text("1.5M")
                            .bold()
                            .foregroundColor(.black)
                        Text("Followers")
                            .foregroundColor(.gray)
                    }
                    VStack(alignment: .center, spacing: 15) {
                        Text("71")
                            .bold()
                            .foregroundColor(.black)
                        Text("Following")
                            .foregroundColor(.gray)
                    }
                }
                .background(Color.white)
            }
            .padding()
            List() {
                ForEach(0..<8) { _ in
                    HStack {
                        ForEach(0..<3) { _ in
                            Image("download")
                                .resizable()
                                .scaledToFit()
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
