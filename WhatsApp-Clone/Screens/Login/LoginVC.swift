//
//  ViewController.swift
//  WhatsApp-Clone
//
//  Created by PHN MAC 1 on 13/05/24.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var doneBtn: UIBarButtonItem!
    @IBOutlet weak var countryBtn: UIButton!
    @IBOutlet weak var lblCountryCode: UILabel!
    @IBOutlet weak var txtPhoneNumber: UITextField!
    
    let viewModel = LoginViewModel()
    var toolBar = UIToolbar()
    var picker  = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doneBtn.isEnabled = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        txtPhoneNumber.becomeFirstResponder()
    }
    
    @IBAction func didPhoneNumberCharChange(_ sender: UITextField) {
        doneBtn.isEnabled = (sender.text?.count == 10)
    }
    
    @IBAction func didCountryChangeBtnClick(_ sender: Any) {
        picker.delegate = self
        picker.dataSource = self
        picker.backgroundColor = UIColor.white
        picker.setValue(UIColor.black, forKey: "textColor")
        picker.autoresizingMask = .flexibleWidth
        picker.contentMode = .center
        picker.frame = CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 250, width: UIScreen.main.bounds.size.width, height: 250)
        self.view.addSubview(picker)
        
        toolBar = UIToolbar.init(frame: CGRect.init(x: 0.0, y: UIScreen.main.bounds.size.height - 250, width: UIScreen.main.bounds.size.width, height: 44))
        
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(onCancelButtonTapped))
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(onDoneButtonTapped))
        
        toolBar.items = [cancelButton, flexibleSpace, doneButton]
        self.view.addSubview(toolBar)
    }
    
    @objc func onDoneButtonTapped() {
        let selectedRow = picker.selectedRow(inComponent: 0)
        if selectedRow <= viewModel.countryCodes.count-1{
            let selectedValue = viewModel.countryCodes[selectedRow] // Assuming pickerViewData is an array of strings
            lblCountryCode.text = selectedValue.code.description
            countryBtn.setTitle(selectedValue.country.description, for: .normal)
        }
        onCancelButtonTapped()
    }
    
    @objc func onCancelButtonTapped(){
        toolBar.removeFromSuperview()
        picker.removeFromSuperview()
    }
    

    @IBAction func didDoneBtnClick(_ sender: UIBarButtonItem) {
        let tabBarController = AppStoryboard.main.getViewController(TabBarController.self)
        if let window = self.getWindow() {
            window.rootViewController = tabBarController
            window.makeKeyAndVisible()
        }
    }
}

extension LoginVC: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        viewModel.countryCodes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let code = viewModel.countryCodes[row]
        return "\(code.code) \(code.country)"
    }
}

extension LoginVC: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let txtString = textField.text ?? ""
        return RestrictCharacter().onlyNumber(string: string, maxNumber: 10, txtString: txtString, range: range)
    }
}
