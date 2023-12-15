//
//  ViewController.swift
//  TrafficLite
//
//  Created by Максим on 17.11.2023.
//
import SnapKit
import UIKit

class TrafficLightViewController: UIViewController {
    !!!!!!!!!!!!!!!!
private let trafficLight = TrafficLightView()
   private let activateButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(trafficLight)
        view.addSubview(activateButton)
        
        activateButton.addTarget(self, action: #selector(activateButtonAction), for: .touchUpInside)

        configureActivateButton()
        trafficLightConstraints()
        }
    
    private func trafficLightConstraints() {
        trafficLight.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(400)
            make.centerX.centerY.equalToSuperview()
    }
        }
   @objc func activateButtonAction() {
       trafficLight.switchTheSection()
    }
    
    private func configureActivateButton() {
        activateButton.backgroundColor = .white
        activateButton.setTitle("switch", for: .normal)
        activateButton.setTitleColor(.black, for: .normal)
        activateButton.layer.borderWidth = 2
        activateButton.layer.borderColor = UIColor.black.cgColor
        activateButton.layer.cornerRadius = 15
        activateButton.snp.makeConstraints { make in
            make.height.equalTo(100)
            make.width.equalTo(200)
            make.centerX.equalToSuperview()
            make.centerY.equalTo(800)
        }
    }
  
}


 

