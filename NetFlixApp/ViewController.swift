//
//  ViewController.swift
//  NetFlixApp
//
//  Created by Sakshi Yelmame on 16/03/23.
//

import UIKit

let angrejiMedium = Movie(imageName: "angrejiMedium", trailerUrl: "https://youtu.be/rzlfeocUVhI")
let baghi3 = Movie(imageName: "baghi3", trailerUrl: "https://youtu.be/jQzDujMzfoU")
let gadar = Movie(imageName: "gadar", trailerUrl: "https://youtu.be/huTnLHKC67g")
let haider = Movie(imageName: "haider", trailerUrl: "https://youtu.be/ZmN_VSo8DOo")
let kabirSingh = Movie(imageName: "kabirsingh", trailerUrl: "https://youtu.be/RiANSSgCuJk")
let loveAajKal = Movie(imageName: "loveaajkal", trailerUrl: "https://youtu.be/dLH1gmk9_iE")
let tanhaji = Movie(imageName: "tanhaji", trailerUrl: "https://youtu.be/cffAGIYTEHU")
let war = Movie(imageName: "war", trailerUrl: "https://youtu.be/tQ0mzXRk-oM")
let sanju = Movie(imageName: "sanju", trailerUrl: "https://youtu.be/rRr1qiJRsXk")
let sultan = Movie(imageName: "sultan", trailerUrl: "https://www.youtube.com/watch?v=vU6A1jpe5k8")

let bhikari = Movie(imageName: "bhikari", trailerUrl: "https://youtu.be/mGId4Ozh-hw")
let chorichamamla = Movie(imageName: "chorichamamla", trailerUrl: "https://youtu.be/qDq3Lk4NHDo")
let gopya = Movie(imageName: "gopya", trailerUrl: "https://youtu.be/uytQeG5D1gY")
let hirkani = Movie(imageName: "hirkani", trailerUrl: "https://youtu.be/sR_r2d_ns1s")
let jogwa = Movie(imageName: "jogwa", trailerUrl: "https://youtu.be/umeSSX3kcbY")
let laibhari = Movie(imageName: "laibhari", trailerUrl: "https://youtu.be/SuYP1viwc3M")
let sairat = Movie(imageName: "sairat", trailerUrl: "https://youtu.be/wMrMKnoYWwA")
let shivajiraje = Movie(imageName: "shivajiraje", trailerUrl: "https://youtu.be/Q5627Vk_WhI")
let sohla = Movie(imageName: "sohla", trailerUrl: "https://youtu.be/yp2zfoL-IsI")
let ved = Movie(imageName: "ved", trailerUrl: "https://youtu.be/CBivT-3KjJQ")

let aspirant = Movie(imageName: "Aspirants", trailerUrl: "https://youtu.be/ViOutJ0kuJY")
let asur = Movie(imageName: "asur", trailerUrl: "https://youtu.be/Ka6z3Ck7wgI")
let dharaviBank = Movie(imageName: "DharaviBank", trailerUrl: "https://youtu.be/XatRGut65VI")
let familyMan = Movie(imageName: "familyman", trailerUrl: "https://youtu.be/xMKzdQrC5TI")
let mirzapur = Movie(imageName: "Mirzapur", trailerUrl: "https://youtu.be/_InqQJRqGW4")
let moneyHeist = Movie(imageName: "moneyheist", trailerUrl: "https://youtu.be/vG1614YSCPk")
let panchayat = Movie(imageName: "panchayat", trailerUrl: "https://youtu.be/mojZJ7oeD_g")
let rudra = Movie(imageName: "rudra", trailerUrl: "https://youtu.be/FyuODiTjoFs")
let tandav = Movie(imageName: "tandav", trailerUrl: "https://youtu.be/ZcFV_rJDa7s")
let victim = Movie(imageName: "victim", trailerUrl: "https://youtu.be/ckftRJdFE3w")

var eData = [
    EntertainmentApp(sectionType: "Bollywood Movies", imageGallery: [angrejiMedium,baghi3,gadar,haider,kabirSingh,loveAajKal,tanhaji,war,sanju,sultan]),
    EntertainmentApp(sectionType: "Marathi Movies", imageGallery: [bhikari,chorichamamla,gopya,hirkani,jogwa,laibhari,sairat,shivajiraje,sohla,ved]),
    EntertainmentApp(sectionType: "Webseries", imageGallery: [aspirant,asur,dharaviBank,familyMan,mirzapur,moneyHeist,panchayat,rudra,tandav,victim])
]
class ViewController: UIViewController {
    
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        cell.navController = self.navigationController
        return cell
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .systemPink
    }
    
}

