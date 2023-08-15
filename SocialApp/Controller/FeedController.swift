//
//  FeedController.swift
//  SocialApp
//
//  Created by Lanoon on 2023/08/13.
//

import UIKit

private let reuseIdentifier = "Cell"

class FeedController : UICollectionViewController{
    //MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        
    }
    //MARK: Helper
    func configure() {
        view.backgroundColor = .yellow
        
        collectionView.register(FeedCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
    }
}

//MARK: UIcollectionView DataSource
extension FeedController{
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as!FeedCell
        return cell
    }
}
//cell size 조절
extension FeedController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = view.frame.width
        var height = width + 8 + 40 + 8 // 프로필 사진 높이
        height += 110
        //height += 60
        
        
        return CGSize(width: width, height: height)
    }
}
