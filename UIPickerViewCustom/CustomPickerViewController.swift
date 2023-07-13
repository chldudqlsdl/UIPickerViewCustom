//
//  CustomPickerViewController.swift
//  UIPickerViewCustom
//
//  Created by Youngbin Choi on 2023/07/13.
//

import Foundation
import SwiftUI
import UIKit

var gugunList: [String] = ["강서구", "금정구", "기장군", "남구", "동구", "동래구", "부산진구", "북구", "사상구", "사하구", "서구", "수영구", "연제구", "영도구", "중구", "해운대구"]


struct CustomPickerViewController : UIViewControllerRepresentable {
//    func makeCoordinator() -> Coordinator {
//        Coordinator()
//    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let customPickerViewController = customPickerViewController()
//        let customPickerView = UIPickerView()
//        customPickerViewController.customPickerView.delegate = context.coordinator
//        customPickerViewController.customPickerView.dataSource = context.coordinator
//        customPickerView.delegate = context.coordinator
//        customPickerView.dataSource = context.coordinator
//        customPickerViewController.view = customPickerView
        return customPickerViewController
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}

class customPickerViewController : UIViewController{
    let customPickerView = UIPickerView()
    
    override func viewDidLoad() {
        view.backgroundColor = .black
        customPickerView.backgroundColor = .blue
        view.addSubview(customPickerView)
        customPickerView.delegate = self
        customPickerView.dataSource = self
    }
    
    override func viewWillLayoutSubviews() {
        selectedPickerViewUICustom()
    }
    func selectedPickerViewUICustom() {
//        customPickerView.subviews[1].backgroundColor = .clear
//
//        let upLine = UIView(frame: CGRect(x: 80, y: 0, width: 150, height: 0.8))
//        let underLine = UIView(frame: CGRect(x: 80, y: 30, width: 150, height: 0.8))
//
//        upLine.backgroundColor = .blue
//        underLine.backgroundColor = .blue
//
//        customPickerView.subviews[1].addSubview(upLine)
//        customPickerView.subviews[1].addSubview(underLine)
    }
}

extension customPickerViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        gugunList.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        gugunList[row]
    }
}



//extension CustomPickerViewController {
//    class Coordinator: NSObject, UIPickerViewDelegate, UIPickerViewDataSource{
//        func numberOfComponents(in pickerView: UIPickerView) -> Int {
//            return 1
//        }
//
//        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//            gugunList.count
//        }
//
//        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//            return gugunList[row]
//        }
//    }
//}
