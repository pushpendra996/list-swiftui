//
//  ProtocolExample.swift
//  Navigation
//
//  Created by Pushpendra on 07/06/25.
//

import SwiftUI


protocol RemoteControl {
    func powerOn()
    func powerOff()
}

protocol Animal {
    func makeSound()
}

protocol Teacher {
    func takeAttendance()
    func teachSubject()
}

struct ProtocolExample: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    ProtocolExample()
}
