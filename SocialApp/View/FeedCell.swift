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
    
    private lazy var userName: UIButton = {
        let bt = UIButton(type: .system)
        bt.setTitle("Lanoon", for: .normal)
        bt.setTitleColor(.black, for: .normal)
        bt.addTarget(self, action: #selector(tappedBt), for: .touchUpInside)
        return bt
    }()
    
    private let feedImage: UIImageView = {
        let fd = UIImageView()
        fd.contentMode = .scaleAspectFill
        fd.clipsToBounds = true
        fd.isUserInteractionEnabled = true
        fd.image = #imageLiteral(resourceName: "boston-feat")
        return fd
    }()
    
    private lazy var likeBt: UIButton = {
        let bt = UIButton(type: .system)
        bt.setImage(UIImage(named: "love"), for: .normal)
        bt.tintColor = .black
        return bt
    }()
    
    private lazy var shareBt: UIButton = {
        let bt = UIButton(type: .system)
        bt.setImage(UIImage(named: "send"), for: .normal)
        bt.tintColor = .black
        return bt
    }()
    
    private lazy var captionBt: UIButton = {
        let bt = UIButton(type: .system)
        bt.setImage(UIImage(named: "speech-bubble"), for: .normal)
        bt.tintColor = .black
        return bt
    }()
    
    private let likesLabel: UILabel = {
        let lb = UILabel()
        lb.text = "7 likes"
        lb.font = UIFont.boldSystemFont(ofSize: 13)
        return lb
    }()
    
    private let captionLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.boldSystemFont(ofSize: 13)
        lb.text = "This is testtext"
        return lb
    }()
    
    private let timeLabel: UILabel = {
        let lb = UILabel()
        lb.font = UIFont.boldSystemFont(ofSize: 13)
        lb.text = "1 day ago"
        return lb
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        
        
        addSubview(profImageView)
        profImageView.setDimension(height: 40, width: 40)
        profImageView.layer.cornerRadius = 20 // 원 모양 => 정사각형 절반
        
        addSubview(userName)
        userName.centerY(inview: profImageView, leftAnchor: profImageView.rightAnchor, paddingLeft: 10)
        
        addSubview(feedImage)
        feedImage.anchor(top: profImageView.bottomAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 8)
        feedImage.heightAnchor.constraint(equalTo: widthAnchor, multiplier: 1).isActive = true
        
        configureButton()
        
        addSubview(likesLabel)
        likesLabel.anchor(top: likeBt.bottomAnchor, left: leftAnchor, paddingTop: -4, paddingLeft: 8)
        
        addSubview(captionLabel)
        captionLabel.anchor(top: likesLabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
        
        addSubview(timeLabel)
        timeLabel.anchor(top: captionLabel.bottomAnchor, left: leftAnchor, paddingTop: 8, paddingLeft: 8)
        
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //MARK: -helpers
    
    @objc func tappedBt(){
        print("hello")// 버튼 테스트
    }
    
    func configureButton(){// 버튼 합치기
        
        let stackView = UIStackView(arrangedSubviews: [likeBt, captionBt, shareBt])
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        
        addSubview(stackView)
        stackView.anchor(top: feedImage.bottomAnchor, left: leftAnchor, paddingLeft: 1, width: 150, height: 50)
    }
}
