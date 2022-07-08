//
//  BoardViewController.swift
//  LEDBoard
//
//  Created by Seo Jae Hoon on 2022/07/06.
//

import UIKit

class LEDBoardViewController: UIViewController, UITextFieldDelegate {

    
    //@IBOutlet weak var userTextField: UITextField!
 
    
    @IBOutlet weak var upperView: UIView!
    
    @IBOutlet weak var userTextField: UITextField! { didSet {userTextField.delegate = self}}
    @IBOutlet weak var textColorButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var ButtonList: [UIButton]!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designButton(sendButton, buttonTitle: "전송", highlightedTitle: "안녕", buttonBackgroundColor: .yellow)
        designButton(textColorButton, buttonTitle: "색상변경", highlightedTitle: "바꿔", buttonBackgroundColor: .blue)
        
        
        designTextField()
        designOutletCollection()
        textFieldShouldReturn(userTextField)
        
        resultLabel.font = .systemFont(ofSize: 36)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func designTextField() {
        
        userTextField.placeholder = "내용을 작성해주세요"
        userTextField.text = "안녕하세요"
        userTextField.keyboardType = .emailAddress
        userTextField.borderStyle = .none
        userTextField.textColor = .blue
        userTextField.layer.cornerRadius = 8
        userTextField.returnKeyType = .default
        
    }
    
    // buttonOutletvariableName : 외부 매개변수 , Argument Label -> 생략 가능
    // buttonName :내부 매개변수 , Parameter name
    // _ : 와일드 카드 패턴
    func designButton(_ buttonName: UIButton, buttonTitle: String, highlightedTitle: String, buttonBackgroundColor  bgColor: UIColor){
        
        buttonName.setTitle(buttonTitle, for: .normal)             // for 은 일반상태
        buttonName.setTitle(highlightedTitle, for: .highlighted)     // 버튼을 눌렀을 때
        buttonName.backgroundColor = bgColor
        buttonName.layer.cornerRadius = 8
        buttonName.layer.borderColor = UIColor.black.cgColor
        buttonName.layer.borderWidth = 3
        buttonName.setTitleColor(.red, for: .normal)
        buttonName.setTitleColor(.green, for: .highlighted)
    }
    
    func designOutletCollection(){
        
        //1. 반복문
        
        let buttonArray: [UIButton] = [sendButton, textColorButton]
        
        for item in buttonArray {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
        //2. 아웃렛 컬렉션
        
        for item in ButtonList {
            item.backgroundColor = .blue
            item.layer.cornerRadius = 2
        }
        
    }
    
    
    
    
    @IBAction func sendButtonClicked(_ sender: UIButton) {
        
        resultLabel.text = userTextField.text
        
        //print(sendButton.currentTitle)
        //print(userTextField.text?.count)
        /*
        if userTextField.text == nil {
            print("X")
        } else {
            userTextField.text!.count
        }
        */
        
    }
    
    @IBAction func tapGestureClicked(_ sender: UITapGestureRecognizer) {
        
        
        if upperView.isHidden {
            upperView.isHidden = false
        } else {
            upperView.isHidden = true
        }
        
        view.backgroundColor = .red
        
        
        
        view.endEditing(true) // 키보드를 내리는 코드는 아니지만 편집상태가 끝났다는 제스쳐로 표현
        
        
       
    }
    
    
    //연결관계를 다 끊어보고, Any로 연결해보기 : 이름 keyboardDismiss
    
    
    
    @IBAction func textFieldKeyboardClicked(_ sender: UITextField) {
            
    }
    

}
