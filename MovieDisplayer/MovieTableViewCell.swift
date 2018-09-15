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
    @IBOutlet weak var movieInfoStack: UIStackView!

    
    fileprivate func makeHourButton() -> UIButton {
        let hourButton = UIButton(type: .custom)
        hourButton.setTitle("10:00am", for: .normal)
        hourButton.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        hourButton.backgroundColor = UIColor.red
        return hourButton
    }
    
    fileprivate func makeTimeStack() -> UIStackView {
        let timeStack = UIStackView()
        timeStack.alignment = .fill
        timeStack.distribution = .fillEqually
        timeStack.axis = .horizontal
        timeStack.spacing = 30
        
        let hourButton1 = makeHourButton()
        let hourButton2 = makeHourButton()
        let hourButton3 = makeHourButton()

        timeStack.addArrangedSubview(hourButton1)
        timeStack.addArrangedSubview(hourButton2)
        timeStack.addArrangedSubview(hourButton3)
        
        addSubview(timeStack)
        timeStack.translatesAutoresizingMaskIntoConstraints = false
        timeStack.heightAnchor.constraint(equalToConstant: 20).isActive = true

        return timeStack
    }
    
    
    fileprivate func makeHeader() {
        let languageType = UIButton(type: .custom)
        languageType.setTitle("SUB", for: .normal)
        languageType.titleLabel?.font = UIFont.systemFont(ofSize: 12.0)
        
        languageType.backgroundColor = UIColor.red
        movieInfoStack.addArrangedSubview(languageType)
        languageType.translatesAutoresizingMaskIntoConstraints = false
    }
    
    fileprivate func makeRooms() {
        let rowOne = makeTimeStack()
        movieInfoStack.addArrangedSubview(rowOne)
        let rowTwo = makeTimeStack()
        movieInfoStack.addArrangedSubview(rowTwo)
        let rowThree = makeTimeStack()
        movieInfoStack.addArrangedSubview(rowThree)
        let rowFour = makeTimeStack()
        movieInfoStack.addArrangedSubview(rowFour)
        let rowFive = makeTimeStack()
        movieInfoStack.addArrangedSubview(rowFive)
        let rowSix = makeTimeStack()
        movieInfoStack.addArrangedSubview(rowSix)
    }
    
    func configure() {
        makeHeader()
        makeRooms()
    }


}
