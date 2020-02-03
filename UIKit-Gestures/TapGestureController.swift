//
//  TabGestureController.swift
//  UIKit-Gestures
//
//  Created by Maitree Bain on 2/3/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import UIKit

class TapGestureController: UIViewController {

    @IBOutlet weak var heartImage: UIImageView!
    
    //1. configure a tap gesture
    private lazy var tapGesture: UITapGestureRecognizer = {
       let gesture = UITapGestureRecognizer()
        gesture.addTarget(self, action: #selector(didTap(_:)))
        //gesture.numberOfTapsRequired (default is 1)
        //gesture.numberOfTouchesRequired (default is 1 finger!)
        return gesture
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemIndigo
        //2. add the gesture to the image view
        heartImage.addGestureRecognizer(tapGesture)
        heartImage.isUserInteractionEnabled = true
    }

    //3. we need a selector (method) that gets called when the gesture is triggered
    @objc private func didTap(_ gesture: UITapGestureRecognizer) {
        heartImage.image = UIImage(systemName: "heart.circle")
    }
}
