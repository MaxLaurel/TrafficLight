//
//  SectionView.swift
//  TrafficLite
//
//  Created by Максим on 17.11.2023.
//
import UIKit
class SectionView: UIView {
    
    private let sectionColor: UIColor
    
    init(sectionColor: UIColor) {
        self.sectionColor = sectionColor
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        configureSectionView()
    }
    
    func turnOn() {
        backgroundColor = sectionColor
    }
    func turnOff() {
        backgroundColor = .clear
    }
    private func configureSectionView() {
        layer.cornerRadius = frame.size.width/2
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        backgroundColor = .clear
    }
        func IsOn() -> Bool {
            if backgroundColor != .clear {
                return true
            } else {
                return false
                }
            }
    func IsOff() -> Bool {
        if backgroundColor == .clear {
            return true
        } else {
            return false
    }
}
}
