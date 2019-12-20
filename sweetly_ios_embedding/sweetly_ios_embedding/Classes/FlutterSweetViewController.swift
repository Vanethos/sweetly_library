//
//  FlutterSweetViewController.swift
//  Pods-sweetly_ios_embedding_Example
//
//  Created by Gonçalo Montes Palma on 20/12/2019.
//

import Foundation
import Flutter

public class FlutterSweetViewController : FlutterViewController {
    override init(engine: FlutterEngine, nibName: String?, bundle nibBundle: Bundle?) {
        super.init(engine: engine, nibName: nibName, bundle: nibBundle)
        
        let channel = FlutterMethodChannel(name: "com.vanethos.sweetly/flutter",
                             binaryMessenger: self.binaryMessenger)
        
        channel.setMethodCallHandler({
          (call: FlutterMethodCall, result: @escaping FlutterResult) -> Void in
            if (call.method == "goToDetail" ) {
                let map = call.arguments as! [String : String]
                FlutterSweetly.shared.finishController(value: Sweet(name: map["name"]!, country: map["country"]!, image : map["image"]!))
                self.dismiss(animated: true, completion: nil)
            }
        })
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder : coder)
    }
}
