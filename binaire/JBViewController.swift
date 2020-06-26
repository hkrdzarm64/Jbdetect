//
//  JBViewController.swift
//  Jbdetect
//
//  Created by HKRdz Dev on 27/02/2019.
//  Copyright © 2019 HKRdz Dev. All rights reserved.
//

import UIKit
import Foundation
import AVFoundation
import CoreMotion
import CoreTelephony
import ExternalAccessory
import SystemConfiguration.CaptiveNetwork





class JBViewController: UIViewController {

    
       
   /*
        
      let alert = UIAlertController(title: "Alert", message: "by ⍃hkrdzarm64⍄ ", preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "❤️", style: .default, handler: { action in
            switch action.style{
            case .default:
                  print("default")

            case .cancel:
                  print("cancel")

            case .destructive:
                  print("destructive")


      }}))
      self.present(alert, animated: true, completion: nil)
        
    */
    
    @IBOutlet weak var deviceversion: UITextField!
    
    @IBOutlet weak var devicemodel: UITextField!
    
    @IBOutlet weak var ipudid: UITextField!
    
    @IBOutlet weak var jbinfo: UITextView!
    
    @IBOutlet weak var sysinfo: UITextView!
    
    @IBOutlet weak var jbresult: UITextField!
    
    let rwx = "r-w-x"
    let filedirectory = "/"
    let filedirectoryapp = "/Applications"
    let fileexist = "found .."
    let filePath = "/Applications/Cydia.app"
    let filePath2 = "/Applications/Zebra.app"
    let filePath3 = "/Applications/iCleaner.app"
    let filePath4 = "/Applications/Sileo.app"
    let filePath5 = "/Applications/Chimera.app"
    
    /*
    let filesPath = ["filedirectory": "/Applications", "filePath": "/Applications/Cydia.app", "filePath2": "/Applications/Zebra.app", "filePath3": "/Applications/iCleaner.app", "filePath4": "/Applications/Sileo.app", "filePath5": "/Applications/Chimera.app"]
   */
    
    /*
    let filesPaths = [String("/Applications/Cydia.app"),  String("/Applications/Zebra.app"),  String("/Applications/iCleaner.app"), String("/Applications/Sileo.app"),  String("/Applications/Chimera.app")]
    */
    
    
    
    /// message indiquant que l'apareil est bien jailbreaké ...
            var messagejailbreak = "device is jailbroken"
        
       
            
            let deviceudid = UIDevice.current.identifierForVendor?.uuidString  //udid
            let physicalmemory = Float(ProcessInfo().physicalMemory) // memory disk
  

    
    /*
         var systemname = UIDevice().systemName // system name
        
         let processorsnumber = ProcessInfo().processorCount // number of processors
    ///  var currentlanguage = ..???
         var currenttimezone = TimeZone.current // time zone current
         var currenttimezoneid = TimeZone.current.identifier // time zone identifier
         
 
     */
            
  
    override func viewDidLoad() {
        super.viewDidLoad()
 
    ///    for i in filesPath {
       ///     print(i, to: &sysinfo.text)
    ///    }
             
       
        /// au lieu de declaration deviceIOSVersion
              print(ProcessInfo().operatingSystemVersionString)
        
        /// print iphone model/version/udid/screenwidth/screenhight en premier dans jbinfo
        
        print("iphone model:", modelName,   "\n iphone version:",  deviceIOSVersion, "\n UDID:", deviceudid!, "\n device screen width:", deviceScreenWidth, "\n device screen hight:", deviceScreenHeight,  to: &jbinfo.text)

        /// print iphone model/version/udid/screenwidth/screenhight en premier dans la console debug area
        print("ip model:", modelName,  "\n ip version:", deviceIOSVersion, "\n UDID:", deviceudid!, "\n device screen width:", deviceScreenWidth, "\n device screen hight:", deviceScreenHeight)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.4) {
        print(self.modelName, to: &self.sysinfo.text)
        print("[i] system version:  \(ProcessInfo().operatingSystemVersionString)", to: &self.sysinfo.text)
        print("[i] host name: \(ProcessInfo().hostName)", to: &self.sysinfo.text)
        print("[i] system arg: \(ProcessInfo().arguments)", to: &self.sysinfo.text)
        print("[i] processors number: \(ProcessInfo().processorCount)", to: &self.sysinfo.text)
        print("[i] physical memory: (gbytes)\(ProcessInfo().physicalMemory / 1024 / 1024 / 1024)", to: &self.sysinfo.text)
           if ProcessInfo().isLowPowerModeEnabled == true {
            print("[i] lpm: Yes", to: &self.sysinfo.text)
                      
                  } else {
            print("[i] lpm: No", to: &self.sysinfo.text)
                  }
        print("[i] current time zone: \(self.currentTimeZone)", to: &self.sysinfo.text)
       }
        
        /// print(ProcessInfo().accessibilityPath, to: &sysinfo.text)
        
        
        /*
         print(ProcessInfo().hostName)
         print("system name: \(systemName)")
         print(ProcessInfo().arguments)
        
      /// some process&system infos.

        if ProcessInfo().isLowPowerModeEnabled == true {
            print("lowpowermode : Yes")
            
        } else {
            print("lowpowermode : No")
        }
   */
   
        /// au lieu de declaration deviceIOSVersion
      ///  print(ProcessInfo().operatingSystemVersionString)
        
        
        
        
        print("processors number: \(processorsNumber)")
        print("physical memory: \(physicalmemory / 1024 / 1024 / 1024 ) gigabytes")
        
        print("current country: \(String(describing: currentCountry))")
       
        print("current time zone: \(currentTimeZone)")
 
        
        devicemodel.text = modelName
        deviceversion.text = deviceIOSVersion
        ipudid.text = deviceudid
        
   
         /// message device jailbroken
            
        let jailbroken = (code: fileexist,  message: messagejailbreak )
        
        let deviceisjailbroken = jailbroken.message
        
        
       
        
            
            
       
       
        if FileManager.default.fileExists(atPath: filePath) {
            /// filepath = cydia.app
            /// si cydia.app existe dans la racine ./Applications
           
            
            print("[i] found.. \(filePath)")
            
                
            print("[i] found.. \(filePath)", to: &jbinfo.text)
          
        
        
            if FileManager.default.fileExists(atPath: filePath2) {
                /// filepath2 = zebra.app
                /// si zebra.app existe dans la racine ./Applications
               
                 print("[i] found.. \(filePath2)")
               ///print(filePath2, "\n", fileexist)
                
                print("[i] found.. \(filePath2)", to: &jbinfo.text
                )
                 ///print(fileexist, "\n", filePath2, to: &jbinfo.text)

            }
            

            if FileManager.default.fileExists(atPath: filePath3) {
              
                /// filepath3 = icleaner.app
                /// si Icleaner.app existe dans la racine ./Applications
                
                print("[i] found.. \(filePath3)")
              /// print(filePath3, "\n", fileexist)
                
                print("[i] found.. \(filePath3)", to: &jbinfo.text)
                
               ///  print(fileexist, "\n" , filePath3, to: &jbinfo.text)
                
            
            }
            
            // filePath 4 ET 5 a rajouter prochainement 
            while FileManager.default.fileExists(atPath: filePath) || FileManager.default.fileExists(atPath: filePath2) || FileManager.default.fileExists(atPath: filePath3) {
                
                /// quand filepath (cydia) OU filepath2 (zebra) OU filepath3 (icleaner) existe dans la racine
                
                /// l'apparail est jailbreaké
               print(deviceisjailbroken)
                
               print(deviceisjailbroken, to: &jbinfo.text)
                
                jbresult.text = deviceisjailbroken

                

                           let fm = FileManager.default
                           let path = filedirectory
                           let path1 = filedirectoryapp
                           let items = try! fm.contentsOfDirectory(atPath: path)
                           let items1 = try! fm.contentsOfDirectory(atPath: path1)

                           let R =  FileManager.default.isReadableFile(atPath: path) //si le fichier est readable
                           let W = FileManager.default.isWritableFile(atPath: path)  //si le fichier est writable
                           let X = FileManager.default.isExecutableFile(atPath: path)//si le fichier est exicutable
                                            
                
                           for item in items {
                           
                            ///afficher toute la racine (./)
                           print("[i] Found /\(item)/", rwx, R,"/",W,"/",X)
                            
                            
                           print("[i] Found /\(item)/", rwx, R,"/",W,"/",X, to: &jbinfo.text)
                          
                                          }
                                                                              
                           for item in items1 {
                            
                            ///afficher le contenu (./Applications)
                            print("[i] Found /\(item)/", rwx, R,"/",W,"/",X)
                                                                                  
                            print("[i] Found /\(item)/", rwx, R,"/",W,"/",X, to: &jbinfo.text)
                                             }
               return
                
               
            }
            

        }
        
        
               
         else {
            
            let messageunjailbeak = "device is not jailbroken"
            
            /// sinon messagejailbreak devient automatiquement messageunjailbreak
            messagejailbreak = messageunjailbeak
            
            /// Afficher la racine
            print("not found.. \(filePath)")
            
            print("not found.. \(filePath)", to: &jbinfo.text)
            ///not jailbroken
            print(messageunjailbeak)
            ///the same in jbinfo
            print(messageunjailbeak, to: &jbinfo.text)
            
            
           
                       let bundle = Bundle.main.resourcePath!
                       let fm = FileManager.default
                       let path = filedirectory
                       let path1 = filedirectoryapp
                       let items = try! fm.contentsOfDirectory(atPath: path)
                       let items1 = try! fm.contentsOfDirectory(atPath: path1)
                      
                
                     let R =  FileManager.default.isReadableFile(atPath: path)
                     let W = FileManager.default.isWritableFile(atPath: path)
                     let X = FileManager.default.isExecutableFile(atPath: path)
                    
                       for item in items {

                        /// afficher la racine en tant que unjailbroken
                    print("Found /\(item)/", rwx, R,"/",W,"/",X)
                        
                      print("Found /\(item)/", rwx, R,"/",W,"/",X, to: &jbinfo.text)
                       
                       
                        
                           
                                      }
            
                                                                          
                       for item in items1 {
                        
                        /// afficher le contenu de ./Applications en tant que unjailbroken
                        /// pas de droit d'acces si not jailbroken -_- cause application crache
                        
                           print("Found /\(item)/", rwx, R,"/",W,"/",X )
                                                                              
                          print("Found /\(item)/", rwx, R,"/",W,"/",X, to: &jbinfo.text)
                                        }
                
          
            return
            
          
          /*
                                   la console affichera (unjailbrokenmessage) = filenotexist
                        ensuite : filepath
                                : messagejailbreak
                                   
                                   */
                
                 
            
        }
        
     
       
        
                 
        
    }

   
   
  
        var modelName: String {
            var systemInfo = utsname()
            uname(&systemInfo)
            let machineMirror = Mirror(reflecting: systemInfo.machine)
            let identifier = machineMirror.children.reduce("") { identifier, element in
                guard let value = element.value as? Int8, value != 0 else { return identifier }
                return identifier + String(UnicodeScalar(UInt8(value)))
            }
            
            switch identifier {
             case "iPod5,1":                                 return "iPod touch (5th generation)"
                          case "iPod7,1":                                 return "iPod touch (6th generation)"
                          case "iPod9,1":                                 return "iPod touch (7th generation)"
                          case "iPhone3,1", "iPhone3,2", "iPhone3,3":     return "iPhone 4"
                          case "iPhone4,1":                               return "iPhone 4s"
                          case "iPhone5,1", "iPhone5,2":                  return "iPhone 5"
                          case "iPhone5,3", "iPhone5,4":                  return "iPhone 5c"
                          case "iPhone6,1", "iPhone6,2":                  return "iPhone 5s"
                          case "iPhone7,2":                               return "iPhone 6"
                          case "iPhone7,1":                               return "iPhone 6 Plus"
                          case "iPhone8,1":                               return "iPhone 6s"
                          case "iPhone8,2":                               return "iPhone 6s Plus"
                          case "iPhone9,1", "iPhone9,3":                  return "iPhone 7"
                          case "iPhone9,2", "iPhone9,4":                  return "iPhone 7 Plus"
                          case "iPhone8,4":                               return "iPhone SE"
                          case "iPhone10,1", "iPhone10,4":                return "iPhone 8"
                          case "iPhone10,2", "iPhone10,5":                return "iPhone 8 Plus"
                          case "iPhone10,3", "iPhone10,6":                return "iPhone X"
                          case "iPhone11,2":                              return "iPhone XS"
                          case "iPhone11,4", "iPhone11,6":                return "iPhone XS Max"
                          case "iPhone11,8":                              return "iPhone XR"
                          case "iPhone12,1":                              return "iPhone 11"
                          case "iPhone12,3":                              return "iPhone 11 Pro"
                          case "iPhone12,5":                              return "iPhone 11 Pro Max"
                          case "iPad2,1", "iPad2,2", "iPad2,3", "iPad2,4":return "iPad 2"
                          case "iPad3,1", "iPad3,2", "iPad3,3":           return "iPad (3rd generation)"
                          case "iPad3,4", "iPad3,5", "iPad3,6":           return "iPad (4th generation)"
                          case "iPad6,11", "iPad6,12":                    return "iPad (5th generation)"
                          case "iPad7,5", "iPad7,6":                      return "iPad (6th generation)"
                          case "iPad7,11", "iPad7,12":                    return "iPad (7th generation)"
                          case "iPad4,1", "iPad4,2", "iPad4,3":           return "iPad Air"
                          case "iPad5,3", "iPad5,4":                      return "iPad Air 2"
                          case "iPad11,4", "iPad11,5":                    return "iPad Air (3rd generation)"
                          case "iPad2,5", "iPad2,6", "iPad2,7":           return "iPad mini"
                          case "iPad4,4", "iPad4,5", "iPad4,6":           return "iPad mini 2"
                          case "iPad4,7", "iPad4,8", "iPad4,9":           return "iPad mini 3"
                          case "iPad5,1", "iPad5,2":                      return "iPad mini 4"
                          case "iPad11,1", "iPad11,2":                    return "iPad mini (5th generation)"
                          case "iPad6,3", "iPad6,4":                      return "iPad Pro (9.7-inch)"
                          case "iPad6,7", "iPad6,8":                      return "iPad Pro (12.9-inch)"
                          case "iPad7,1", "iPad7,2":                      return "iPad Pro (12.9-inch) (2nd generation)"
                          case "iPad7,3", "iPad7,4":                      return "iPad Pro (10.5-inch)"
                          case "iPad8,1", "iPad8,2", "iPad8,3", "iPad8,4":return "iPad Pro (11-inch)"
                          case "iPad8,5", "iPad8,6", "iPad8,7", "iPad8,8":return "iPad Pro (12.9-inch) (3rd generation)"
                          case "AppleTV5,3":                              return "Apple TV"
                          case "AppleTV6,2":                              return "Apple TV 4K"
                          case "AudioAccessory1,1":                       return "HomePod"
                          case "i386", "x86_64":                          return "Simulator"
            default:                                        return identifier
            }
        }
    
    
    
    /// name of the system
           public  var systemName: String {
               
               return UIDevice().systemName
           }
    
   
    /*
            let physicalMemory = Float(ProcessInfo().physicalMemory)
            
            switch sizeScale {
            case .bytes:
                return Double(physicalMemory)
            case .kilobytes:
                return Double(physicalMemory / 1024)
            case .megabytes:
                return Double(physicalMemory / 1024 / 1024)
            case .gigabytes:
                return Double(physicalMemory / 1024 / 1024 / 1024)
            case .percentage:
                return 100.0
            }
        */
           
    /// Number of processors.
    public  var processorsNumber: Int {
                     
        return ProcessInfo().processorCount
            }
    
       /// current time zone
     public  var currentTimeZone: TimeZone {
                
        return TimeZone.current
            }
    
       /// current country
     public  var currentCountry: String? {
              
              if let regionCode = Foundation.Locale.current.regionCode {
                  return regionCode
              }
              
              return nil
          }
    
    /// current language
    public  var currentLanguage: String? {
               
               if let languageCode = Foundation.Locale.current.languageCode {
                   return languageCode
               }
               
               return nil
           }
    
         /// system version
        public var deviceIOSVersion: String {
            return UIDevice.current.systemVersion
        }
        /// device screen width
        public var deviceScreenWidth: CGFloat {
            let screenSize: CGRect = UIScreen.main.bounds
            let width = screenSize.width;
            return width
        }
    /// device screen hight
        public var deviceScreenHeight: CGFloat {
            let screenSize: CGRect = UIScreen.main.bounds
            let height = screenSize.height;
            return height
        }
        
    /// if is iphone
        var isIPhone: Bool {
            return UIDevice().userInterfaceIdiom == .phone
        }
    
    /// if is pad
        var isIPad: Bool {
            return UIDevice().userInterfaceIdiom == .pad
        }
    /// screen type
        enum ScreenType: String {
            case iPhone4
            case iPhone5
            case iPhone6
            case iPhone6Plus
            case Unknown
           
        }
  
    
}
