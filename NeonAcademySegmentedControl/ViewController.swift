//
//  ViewController.swift
//  NeonAcademySegmentedControl
//
//  Created by Kerem Caan on 1.08.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let segmentedControl : UISegmentedControl = UISegmentedControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }


    func configureUI() {
        
        view.addSubview(segmentedControl)
        segmentedControl.insertSegment(withTitle: "Neon Apps 2023", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "Neon", at: 1, animated: true)
        segmentedControl.insertSegment(withTitle: "Apps", at: 2, animated: true)
        segmentedControl.addTarget(self, action: #selector(segmentedTapped(sender: )), for: .valueChanged)
        segmentedControl.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(100)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
    }
    
    @objc func segmentedTapped(sender:UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            segmentedControl.snp.updateConstraints { make in

                make.width.equalTo(400)
            }
   
        } else if sender.selectedSegmentIndex == 1 {
            segmentedControl.snp.updateConstraints { make in

                make.width.equalTo(300)
            }
         
        } else if sender.selectedSegmentIndex == 2 {
            segmentedControl.snp.updateConstraints { make in

                make.width.equalTo(200)
            }
       
        }
        
    }
}

