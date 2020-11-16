//
//  SampleViewController.swift
//  DownloadStart
//
//  Created by Viet Le Van on 11/16/20.
//

import UIKit

class SampleViewController: UIViewController {
    
    let imageURL1 = URL.init(string: "https://i.pinimg.com/originals/11/fb/9f/11fb9f12acfc005e28053b906b51d8a5.jpg")!
    let imageURL2 = URL.init(string: "https://photographer.com.vn/wp-content/uploads/2020/08/1597070950_Hinh-nen-may-tinh-desktop-dep-moi-nhat-2020-full-HD.jpg")!
    let imageURL3 = URL.init(string: "https://img.thuthuatphanmem.vn/uploads/2018/10/19/3d-wallpaper-4k-full-hd_040150427.jpg")!

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var imageView3: UIImageView!
    
    @IBOutlet weak var imageView1Indication: UIActivityIndicatorView!
    @IBOutlet weak var imageView2Indicator: UIActivityIndicatorView!
    @IBOutlet weak var imageView3Indicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadImage()
        self.view.backgroundColor = .red
    }

    func downloadImage() {
        let image1Data = try? Data.init(contentsOf: self.imageURL1)
        self.imageView1.image = UIImage.init(data: image1Data!)
        
        let image2Data = try? Data.init(contentsOf: self.imageURL2)
        self.imageView2.image = UIImage.init(data: image2Data!)
        
        let image3Data = try? Data.init(contentsOf: self.imageURL3)
        self.imageView3.image = UIImage.init(data: image3Data!)
    }
}
