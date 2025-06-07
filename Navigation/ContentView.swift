//
//  ContentView.swift
//  Navigation
//
//  Created by Pushpendra on 05/06/25.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
}

struct ContentView: View {
    let users = [
        User(name: "Aman"),
        User(name: "Pushpendra"),
        User(name: "Nikki"),
        User(name: "Ravi")
    ]
    
    var body: some View {
        if #available( iOS 16.0, *){
            NavigationStack {
                List {
                    ForEach(users) { user in
                        NavigationLink(destination: DetailView(user: user)) {
                            HStack {
                                Image(systemName: "person.circle.fill")
                                    .foregroundColor(.blue)
                                Text(user.name)
                                    .font(.headline)
                            }
                            .padding(6)
                        }
                    }
                }
                .navigationTitle("User List")
            }
        } else {
            NavigationView {
                List {
                    ForEach(users) { user in
                        NavigationLink(destination: DetailView(user: user)) {
                            HStack {
                                Image(systemName: "person.circle.fill")
                                    .foregroundColor(.blue)
                                Text(user.name)
                                    .font(.headline)
                            }
                            .padding(6)
                        }
                    }
                }
                .navigationTitle("User List")
            }
        }
    }
}

struct DetailView: View {
    let user: User

    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.badge.checkmark")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                .foregroundColor(.green)

            Text("Hello, \(user.name) 👋")
                .font(.largeTitle)
                .bold()

            Spacer()
        }
        .padding()
        .navigationTitle(user.name)
    }
}


#Preview {
    ContentView()
}



class TempObjModel : ObservableObject {
    
    var name: String? = "Pushpendra"
    
    
    var person : Person?
    
    func getName() -> String {
        if let userName = name {
            return "User name is \(userName)"
        } else {
            return "User name not found"
        }
    }
    
    func getCity() -> String? {
        var person: Person? = Person()
        let cityName = person?.address?.city
        return cityName
    }
    
    
    
    
    class Person {
        var address : Address?
        class Address {
            var city : String? = "Noida"
        }
    }
}
