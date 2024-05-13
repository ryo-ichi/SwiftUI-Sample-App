//
//  Persistent.swift
//  Demo-CoreData
//
//  Created by 松原涼一 on 2023/04/16.
//

import CoreData

struct PresistenceController {
let container: NSPersistentContainer

    
    
    
    
    init() {
        //コンテナの作成 NSPersistentControllerの中にコンテナが入っている NSPersistentContainerのインスタンスはコンテナとして扱われる 
        container = NSPersistentContainer(name: "Model")
        //PersistentStoreを利用可能にする まずPersistentStoreを呼び出すため、loadPersistentStoresメソッド呼び出して読み込むことで利用可能 読み込み失敗時はアプリを落とす記述をif-letで定義 
        container.loadPersistentStores(completionHandler: { (NSPersistentstoreDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error\(error)")
            }
        })
        
        
        
    }
    
}
