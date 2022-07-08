//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by Seo Jae Hoon on 2022/07/06.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
    
        
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // melon, youtube - 사용자가 프리미엄을 결제 했으면 보고있는 영상 계속 play, 그게 아니면 일시 정지
        //
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // active상태로 돌아왔을때, 유튜브 프리미엄 결제 안 한 사람에게 팝업창을 띄우도록 창을 띄우게
        // 카카오톡 - 앱을 안쓰고 있다가 액티브 화면으로 넘어왔을때 비밀번호를 입력하는 창 띄우게
        // 금융 - 백그라운드에 있을 때 어떤 화면에 있었는지 안보이도록 다른 화면을 로그인 화면으로 바꾸도록
    }

    // MARK: UISceneSession Lifecycle
    @available (iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    @available (iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

