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
    }
    
    required init?(coder: NSCoder) {
        super.init(coder : coder)
    }
}
