//
//  ContentView.swift
//  FeedbackDemoApp
//
//  Created by João Gabriel Borelli Padilha on 14/09/22.
//

import SwiftUI
import IOSFeedback

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section("Helo, academy!") {
                    Text("Hello, academy!")
                        .font(.headline)
                    Text("Here are some custom sounds...")
                        .font(.headline)
                }
                Section("Custom Feedbacks") {
                    Button {
                        print("Custom audio from Module")
                        let audio: Audio = .audio(audio: .myAudio)
                        ManagerFeedback.feedbakCustom(sound: audio)
                    } label: {
                        Label("Custom audio from Module", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                    Button {
                        print("Custom audio from App")
                        let audio: Audio = .custom(file: "MyCustomAudio", type: "m4a")
                        ManagerFeedback.feedbakCustom(sound: audio)
                    } label: {
                        Label("Custom audio from App", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                }
                Section("Default Feedbacks") {
                    Button {
                        ManagerFeedback.feedback(sound: .soundID_A, haptic: .heavy)
                    } label: {
                        Label("Sound A", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                    Button {
                        ManagerFeedback.feedback(sound: .soundID_B, haptic: .heavy)
                    } label: {
                        Label("Sound B", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                    Button {
                        ManagerFeedback.feedback(sound: .soundID_C, haptic: .heavy)
                    } label: {
                        Label("Sound C", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                    Button {
                        ManagerFeedback.feedback(sound: .soundID_D, haptic: .heavy)
                    } label: {
                        Label("Sound D", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                    Button {
                        ManagerFeedback.feedback(sound: .soundID_E, haptic: .heavy)
                    } label: {
                        Label("Sound E", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                    Button {
                        ManagerFeedback.feedback(sound: .soundID_Delete, haptic: .heavy)
                    } label: {
                        Label("Sound Delete", systemImage: "iphone.homebutton.radiowaves.left.and.right")
                    }
                }
            }.navigationTitle("Sound App Demo")
        }.onAppear(perform: onAppear)
    }
    
    func onAppear() {
        ManagerFeedback.isSoundEnabled = true
        ManagerFeedback.isHapticEnabled = true
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
