//
//  MovieTableViewCell.swift
//  MovieDisplayer
//
//  Created by Morales, Angel (MX - Mexico) on 14/09/18.
//  Copyright © 2018 TheKairuz. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieTitleLabel: UILabel!
    @IBOutlet weak var generalInfoStack: UIStackView!

    
    fileprivate func makeHourButton() -> UIButton {
        let hourButton = UIButton(type: .custom)
        hourButton.setTitle("10:00am", for: .normal)
        hourButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        hourButton.backgroundColor = UIColor.red
        return hourButton
    }
    
    func makeScheduleStack() -> UIStackView {
        let scheduleStack = UIStackView()
        scheduleStack.alignment = .fill
        scheduleStack.distribution = .fillEqually
        scheduleStack.axis = .horizontal
        scheduleStack.spacing = 30
        
        let hourButton = makeHourButton()
        let hourButton2 = makeHourButton()
        let hourButton3 = makeHourButton()

        scheduleStack.addArrangedSubview(hourButton)
        scheduleStack.addArrangedSubview(hourButton2)
        scheduleStack.addArrangedSubview(hourButton3)
        
        addSubview(scheduleStack)
        scheduleStack.translatesAutoresizingMaskIntoConstraints = false
        scheduleStack.heightAnchor.constraint(equalToConstant: 20).isActive = true

        return scheduleStack
    }
    
    
    func configure() {
        
        let salonStack = UIStackView()
        salonStack.alignment = .fill
        salonStack.distribution = .fill
        salonStack.axis = .horizontal

        let languageType = UIButton(type: .custom)
        languageType.setTitle("SUB", for: .normal)
        languageType.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        
        languageType.backgroundColor = UIColor.red
        generalInfoStack.addArrangedSubview(languageType)
        languageType.translatesAutoresizingMaskIntoConstraints = false

        let stack = makeScheduleStack()
        generalInfoStack.addArrangedSubview(stack)
        let stack2 = makeScheduleStack()
        generalInfoStack.addArrangedSubview(stack2)
        let stack3 = makeScheduleStack()
        generalInfoStack.addArrangedSubview(stack3)
        let stack4 = makeScheduleStack()
        generalInfoStack.addArrangedSubview(stack4)
        let stack5 = makeScheduleStack()
        generalInfoStack.addArrangedSubview(stack5)
        let stack6 = makeScheduleStack()
        generalInfoStack.addArrangedSubview(stack6)

    }
  

}
