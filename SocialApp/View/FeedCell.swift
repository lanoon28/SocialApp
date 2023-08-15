//
//  FeedCell.swift
//  SocialApp
//
//  Created by Lanoon on 2023/08/15.
//

import UIKit

class FeedCell: UICollectionViewCell{
    
    //MARK: - properties
    private let profImageView: UIImageView = {
        let pf = UIImageView()
        pf.contentMode = .scaleAspectFill
        pf.clipsToBounds = true
        pf.isUserInteractionEnabled = true
        pf.backgroundColor = .black
        return pf
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        addSubview(profImageView)
        profImageView.setDimension(height: 40, width: 40)
        profImageView.layer.cornerRadius = 20 // 원 모양 => 정사각형 절반
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: -helpers
}
