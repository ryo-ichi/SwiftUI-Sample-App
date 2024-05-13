//
//  Demo_CoreDataApp.swift
//  Demo-CoreData
//
//  Created by 松原涼一 on 2023/04/16.
//

import SwiftUI

@main
struct Demo_CoreDataApp: App {
    //コンテナ作成 PresistentControllerのインスタンスを作ることでこの中のコンテナを利用可能になる 
    let presistenceController = PresistenceController()
    
    var body: some Scene {
        WindowGroup {
            //ContentViewのmanagedObjectContextというenvitonmentValueに、(Viewが持っている値)作ったコンテナのContenxtを格納するという記述
            ContentView()
                .environment(\.managedObjectContext, presistenceController.self.container.viewContext)
        }
    }
}
