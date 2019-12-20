import Flutter

public class FlutterSweetly {
    public static let shared = FlutterSweetly()
    
    private init(){}
    
    fileprivate var block : ((Sweet) -> Void)?
    
    lazy var flutterEngine = FlutterEngine(name: "my flutter engine")
    
    public func initialize () {
        flutterEngine.run()
    }
    
    public func showScreen(vc : UIViewController, completion block: @escaping ((Sweet) -> Void)) {
        self.block = block
        vc.present(FlutterSweetViewController(engine: flutterEngine, nibName: nil, bundle: nil), animated: true, completion: nil)
    }
    
    internal func finishController(value : Sweet) {
        if (self.block != nil) {
            self.block!(value)
        }
    }
}
