import Flutter

public class FlutterSweetly {
    public static let shared = FlutterSweetly()
    
    private init(){}
    
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    public func initialize () {
        flutterEngine.run()
    }
    
    public func showScreen(vc : UIViewController) {
        vc.present(FlutterSweetViewController(engine: flutterEngine, nibName: nil, bundle: nil), animated: true, completion: nil)
    }
}
