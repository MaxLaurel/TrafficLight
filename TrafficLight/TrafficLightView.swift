//
//  TrafficLightView.swift
//  TrafficLite
//
//  Created by Максим on 21.11.2023.
//

import UIKit

class TrafficLightView: UIView {
    
    private let stackView = UIStackView()
    private let sections = [SectionView(sectionColor: .green),
                            SectionView(sectionColor: .yellow),
                            SectionView(sectionColor: .red)]
    
    init() {
        super.init(frame: .zero)
        setupStackView()
        trafficLightConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupStackView() {
        addSubview(stackView)
        
        sections.forEach { section in
            stackView.addArrangedSubview(section)
        }
        //        stackView.addArrangedSubview(firstSectionView)
        //        stackView.addArrangedSubview(secondSectionView)
        //        stackView.addArrangedSubview(thirdSectionView)
        stackView.alignment = .fill
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 10
    }
    private func trafficLightConstraints() {
        
        sections.forEach { section in
            section.snp.makeConstraints { make in
                make.width.height.equalTo(100)
            }
        }
        
        //        firstSectionView.snp.makeConstraints { make in
        //            make.width.height.equalTo(100)
        //        }
        //
        //        secondSectionView.snp.makeConstraints { make in
        //            make.width.height.equalTo(100)
        //        }
        //
        //        thirdSectionView.snp.makeConstraints { make in
        //            make.width.height.equalTo(100)
        //        }
        
        stackView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(400)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
    func switchTheSection() {
        if let section = sections.firstIndex(where: { $0.IsOn()}), section + 1 < sections.count {
            sections[section].turnOff()
        sections[section + 1].turnOn()
        } else {
            sections.forEach({$0.turnOff()})
            sections[0].turnOn()
        }
    }
    
//        if firstSectionView.IsOff() && secondSectionView.IsOff() && thirdSectionView.IsOff() {
//            firstSectionView.turnOn()
//        } else if firstSectionView.IsOn() {
//            firstSectionView.turnOff()
//            secondSectionView.turnOn()
//        } else if secondSectionView.IsOn() {
//            secondSectionView.turnOff()
//            thirdSectionView.turnOn()
//        } else if thirdSectionView.IsOn() {
//            thirdSectionView.turnOff()
//            firstSectionView.turnOn()
//
//        }
    }

