//
//  UrlFullList.swift
//  iOS Wallpapers
//
//  Created by Adrián Castilla on 3/1/23.
//

import Foundation
import SwiftUI

// MARK: - Data structure
struct URLStruct: Identifiable {
    var id = UUID()
    var name: String
    var url: URL!
    var darkUrl: URL!
    var image: Image!
}

let allUrls = [
    
    // MARK: - iPhones
    
    // MARK: iPhone 14
    URLStruct(name: "iPhone 14 Blue", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-wallpaper-1.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Midnight", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-wallpaper-2.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Purple", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-wallpaper-3.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Red", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-wallpaper-4.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Starlight", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-wallpaper-5.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Pro Deep Purple", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-Pro-wallpaper-1.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Pro Space Black", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-Pro-wallpaper-4.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Pro Silver", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-Pro-wallpaper-3.jpeg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 14 Pro Gold", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2022/09/iPhone-14-Pro-wallpaper-2.jpeg?quality=82&strip=all")!),
    
    // MARK: iPhone SE3
    URLStruct(name: "iPhone SE3 Black", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2022/03/Spectrum_Black_Light.jpg")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2022/03/Spectrum_Black_Dark.jpg")!),
    URLStruct(name: "iPhone SE3 Red", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2022/03/Spectrum_Red_Light.jpg")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2022/03/Spectrum_Red_Dark.jpg")!),
    URLStruct(name: "iPhone SE3 Silver", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2022/03/Spectrum_White_Light.jpg")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2022/03/Spectrum_White_Dark.jpg")!),
    
    // MARK: iPhone 13
    URLStruct(name: "iPhone 13 Blue", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1991.Twist_Blue_Light-390w-844h@3xiphone.jpeg?strip=info&w=1404")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1992.Twist_Blue_Dark-390w-844h@3xiphone.jpeg?strip=info&w=1404")!),
    URLStruct(name: "iPhone 13 Midnight", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/2001.Twist_Black_Light-390w-844h@3xiphone.jpeg?strip=info&w=1404")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/2002.Twist_Black_Dark-390w-844h@3xiphone.jpeg?strip=info&w=1404")!),
    URLStruct(name: "iPhone 13 Pink", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1981.Twist_Pink_Light-390w-844h@3xiphone.jpeg?strip=info&w=1404")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1982.Twist_Pink_Dark-390w-844h@3xiphone.jpeg?strip=info&w=1404")!),
    URLStruct(name: "iPhone 13 Red", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/2021.Twist_Red_Light-390w-844h@3xiphone.jpeg?strip=info&w=1404")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/2022.Twist_Red_Dark-390w-844h@3xiphone.jpeg?strip=info&w=1404")!),
    URLStruct(name: "iPhone 13 Starlight", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/2011.Twist_White_Light-390w-844h@3xiphone.jpeg?strip=info&w=1404")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/2012.Twist_White_Dark-390w-844h@3xiphone.jpeg?strip=info&w=1404")!),
    URLStruct(name: "iPhone 13 Pro Alpine Blue", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1941.Light_Beams_Blue_Light-428w-926h@3xiphone.jpeg?strip=info&w=1500")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1942.Light_Beams_Blue_Dark-428w-926h@3xiphone.jpeg?strip=info&w=1500")!),
    URLStruct(name: "iPhone 13 Pro Silver", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1951.Light_Beams_Silver_Light-428w-926h@3xiphone.jpeg?strip=info&w=1500")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1952.Light_Beams_Silver_Dark-428w-926h@3xiphone.jpeg?strip=info&w=1500")!),
    URLStruct(name: "iPhone 13 Pro Gold", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1971.Light_Beams_Gold_Light-428w-926h@3xiphone.jpeg?strip=info&w=1500")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1972.Light_Beams_Gold_Dark-428w-926h@3xiphone.jpeg?strip=info&w=1500")!),
    URLStruct(name: "iPhone 13 Pro Graphite", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1961.Light_Beams_Dark_Gray_Light-428w-926h@3xiphone.jpeg?strip=info&w=1500")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2021/09/1962.Light_Beams_Dark_Gray_Dark-428w-926h@3xiphone.jpeg?strip=info&w=1500")!),
    
    // MARK: iPhone 12
    URLStruct(name: "iPhone 12 Black", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-back-light-wallpaper.png")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-dark-black-wallpaper.png")!),
    URLStruct(name: "iPhone 12 Blue", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-blue-light-wallpaper.png")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-blue-dark-wallpaper.png")!),
    URLStruct(name: "iPhone 12 Green", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-light-green-wallpaper.png")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-dark-green-wallpaper.png")!),
    URLStruct(name: "iPhone 12 Red", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-red-light-wallpaper.png")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-red-dark-wallpaper.png")!),
    URLStruct(name: "iPhone 12 White", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-white-light-wallpaper.png")!, darkUrl: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/10/iPhone-12-white-dark-wallpaper.png")!),
    URLStruct(name: "iPhone 12 Pro Gold", url: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Gold_Light-428w-926h@3xiphone.png")!, darkUrl: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Gold_Dark-428w-926h@3xiphone.png")!),
    URLStruct(name: "iPhone 12 Pro Graphite", url: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Space_Gray_Light-428w-926h@3xiphone.png")!, darkUrl: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Space_Gray_Dark-428w-926h@3xiphone.png")!),
    URLStruct(name: "iPhone 12 Pro Pacific Blue", url: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Blue_Light-428w-926h@3xiphone.png")!, darkUrl: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Blue_Dark-428w-926h@3xiphone.png")!),
    URLStruct(name: "iPhone 12 Pro Silver", url: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Silver_Light-428w-926h@3xiphone.png")!, darkUrl: URL(string: "https://www.idownloadblog.com/wp-content/uploads/2020/10/Resonance_Silver_Dark-428w-926h@3xiphone.png")!),
    
    // MARK: iPhone SE2
    URLStruct(name: "iPhone SE2 Black", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/04/iphone-SE-2020-wallpaper-black-ispazio-wallpapers-central-idownloadblog-iPad.jpg")!),
    URLStruct(name: "iPhone SE2 White", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/04/iphone-SE-2020-wallpaper-white-ispazio-wallpapers-central-idownloadblog-iPad.jpg")!),
    URLStruct(name: "iPhone SE2 Red", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2020/04/iPhone-SE-2020-wallpaper-PRODUCTRED-ispazio-wallpapers-central-idownloadblog-iPad.jpg")!),
    
    // MARK: iPhone 11
    URLStruct(name: "iPhone 11 Black", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Black-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Black-Dark.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Green", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Mint-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Mint-Dark.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Purple", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Purple-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Purple-Dark.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Red", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Red-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Red-Dark.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Silver", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/White-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/White-Dark.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Yellow", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Yellow-Light.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Yellow-Dark.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Pro Gold", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Light-D.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Dark-D.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Pro Midnight Green", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Light-C.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Dark-C-.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Pro Silver", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Light-A.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Dark-A.jpg?quality=82&strip=all")!),
    URLStruct(name: "iPhone 11 Pro Space Gray", url: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Light-B.jpg?quality=82&strip=all")!, darkUrl: URL(string: "https://9to5mac.com/wp-content/uploads/sites/6/2019/09/Dark-B.jpg?quality=82&strip=all")!),
    
    // MARK: iPhone XR
    URLStruct(name: "iPhone XR Black", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XR-advertising-wallpaper-any-iPhone-1.png")!),
    URLStruct(name: "iPhone XR Blue", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XR-advertising-wallpaper-any-iPhone-2.png")!),
    URLStruct(name: "iPhone XR Coral", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XR-advertising-wallpaper-any-iPhone-3.png")!),
    URLStruct(name: "iPhone XR Red", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XR-advertising-wallpaper-any-iPhone-6.png")!),
    URLStruct(name: "iPhone XR Silver", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XR-advertising-wallpaper-any-iPhone-4.png")!),
    URLStruct(name: "iPhone XR Yellow", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XR-advertising-wallpaper-any-iPhone-5.png")!),
    
    // MARK: iPhone XS
    URLStruct(name: "iPhone XS Space Gray", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XS-advertising-wallpaper-any-iPhone-1.png")!),
    URLStruct(name: "iPhone XS White", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XS-advertising-wallpaper-any-iPhone-3.png")!),
    URLStruct(name: "iPhone XS Rose Gold", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/09/iPhone-XS-advertising-wallpaper-any-iPhone-2.png")!),
    
    // MARK: iPhone X
    URLStruct(name: "iPhone X Space Gray", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2017/09/iPhone-X-presentation-wallpaper-ar72014.jpg")!),
    URLStruct(name: "iPhone X Silver", url: URL(string: "http://www.sebastienpage.com/wp-content/uploads/2017/09/iPhone-X-Presentation-Wallpaper-Imgur.jpg")!),
    
    // MARK: iPhone 8
    URLStruct(name: "iPhone 8 Black", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2017/09/Aura_Black-granite-iOS-11-GM-iPhone-wallpapers.jpg")!),
    URLStruct(name: "iPhone 8 Silver", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2017/09/Aura_Silver-granite-iOS-11-GM-iPhone-wallpapers.jpg")!),
    URLStruct(name: "iPhone 8 Gold", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2017/09/Aura_Gold-granite-iOS-11-GM-iPhone-wallpapers.jpg")!),
    URLStruct(name: "iPhone 8 Red", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2018/04/iPhone8-RED-for-ALL-iPhone.png")!),
    
    // MARK: iPhone 7
    URLStruct(name: "iPhone 7 Black", image: Image("iPhone 7 Black")),
    URLStruct(name: "iPhone 7 Jet Black", image: Image("iPhone 7 Jet Black")),
    URLStruct(name: "iPhone 7 White", image: Image("iPhone 7 White")),
    URLStruct(name: "iPhone 7 Gold", image: Image("iPhone 7 Gold")),
    URLStruct(name: "iPhone 7 Gold Rose", image: Image("iPhone 7 Rose Gold")),
    
    // MARK: iPhone SE
    URLStruct(name: "iPhone SE Space Gray", image: Image("iPhone SE Space Gray")),
    URLStruct(name: "iPhone SE Rose Gold", image: Image("iPhone SE Rose Gold")),
    
    // MARK: iPhone 6s
    URLStruct(name: "iPhone 6s Space Gray", image: Image("iPhone 6s Space Gray")),
    URLStruct(name: "iPhone 6s White", image: Image("iPhone 6s White")),
    URLStruct(name: "iPhone 6s Gold", image: Image("iPhone 6s Gold")),
    URLStruct(name: "iPhone 6s Pink", image: Image("iPhone 6s Pink")),
    URLStruct(name: "iPhone 6s Blue Ink", image: Image("iPhone 6s Blue Ink")),
    URLStruct(name: "iPhone 6s Purple Ink", image: Image("iPhone 6s Purple Ink")),
    
    // MARK: - Safari
    URLStruct(name: "Safari Pink", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/08/Safari-Wallpaper-AR72014-iDownloadBlog-iPad-Desktop-Pink-.jpeg")!),
    URLStruct(name: "Safari Blue", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/08/Safari-Wallpaper-AR72014-iDownloadBlog-iPad-Desktop-Blue.jpeg")!),
    URLStruct(name: "Safari Orange", url: URL(string: "https://media.idownloadblog.com/wp-content/uploads/2021/08/Safari-Wallpaper-AR72014-iDownloadBlog-iPad-Desktop-Orange.jpeg")!),
]

var allDailyRandoms: [DailyRandom] = []

struct DailyRandom: Hashable, Identifiable {
    var id = UUID()
    var name: String
    var date: Date
    var image: URL
}
