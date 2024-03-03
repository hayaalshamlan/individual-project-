

import UIKit
import SnapKit

class HomeViewController: UIViewController {


    
    
    let fullNameTextField = UITextField()
    let imageTextField = UITextField()
    let employeeSalaryTextField = UITextField()
    let emailTextField = UITextField()
    let phoneNumberTextField = UITextField()
    let IBANTextField = UITextField()
    let saveActionButton = UIButton(type: .system)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = " Insert your data "
       
        
        view.addSubview(fullNameTextField)
        view.addSubview(imageTextField)
        view.addSubview(employeeSalaryTextField)
        view.addSubview(emailTextField)
        view.addSubview(phoneNumberTextField)
        view.addSubview(IBANTextField)
        view.addSubview(saveActionButton)
        
        setupUI()
        setupConstrents()
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.purple]
    }
    
    func setupUI() {
        fullNameTextField.placeholder = "Full name"
        fullNameTextField.textColor = .black
        
        imageTextField.placeholder = "Image"
        imageTextField.textColor = .black
        
        employeeSalaryTextField.placeholder = "employee salary"
        
        emailTextField.placeholder = "email"
                
        phoneNumberTextField.placeholder = "phone number"
        
        IBANTextField.placeholder = "IBAN"
        
        saveActionButton.setTitle("Save your data", for: .normal)
        saveActionButton.backgroundColor = .purple
        saveActionButton.tintColor = .white
        saveActionButton.layer.cornerRadius = 25
        saveActionButton.layer.cornerRadius = 10.0
        
        
        
        saveActionButton.addTarget(self, action: #selector(saveButtonTapped), for: .touchUpInside)
        
        
        let instructionsButton = UIBarButtonItem(title: "!", style: .plain, target: self, action: #selector(instructionsButtonTapped))
        navigationItem.leftBarButtonItem = instructionsButton
    }
    
    func setupConstrents(){
        
        fullNameTextField.snp.makeConstraints{ make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        imageTextField.snp.makeConstraints{ make in
            make.top.equalTo(fullNameTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        employeeSalaryTextField.snp.makeConstraints{make in
            make.top.equalTo(imageTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        emailTextField.snp.makeConstraints{make in
            make.top.equalTo(employeeSalaryTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        phoneNumberTextField.snp.makeConstraints{make in
            make.top.equalTo(emailTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        IBANTextField.snp.makeConstraints{make in
            make.top.equalTo(phoneNumberTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        saveActionButton.snp.makeConstraints{ make in
            make.top.equalTo(IBANTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
            make.width.height.equalTo(40)
        }
    }
    
    @objc private func saveButtonTapped(){
        
        let employeeVC = EmployeeViewController()
        employeeVC.fullName = fullNameTextField.text
        employeeVC.image = imageTextField.text
        employeeVC.salary = employeeSalaryTextField.text
        employeeVC.email = emailTextField.text
        employeeVC.phoneNumber = phoneNumberTextField.text
        employeeVC.IBAN = IBANTextField.text
        self.navigationController?.pushViewController(employeeVC, animated: true)
    }
    
    @objc private func instructionsButtonTapped(){
        let instructionsVC = InstructionsViewController()
        instructionsVC.modalPresentationStyle = .popover
        self.present(instructionsVC, animated: true, completion: nil)
    }
    
    
   
}

