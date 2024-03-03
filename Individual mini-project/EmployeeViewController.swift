

import UIKit
import SnapKit

class EmployeeViewController: UIViewController {
    

    var fullName: String?
    var image: String?
    var salary: String?
    var email: String?
    var phoneNumber: String?
    var IBAN: String?
    
    let imageFrame = UIImageView()
    let fullnameFrame = UILabel()
    let salaryLabel = UILabel()
    let emailLabel = UILabel()
    let phoneNumberLabel = UILabel()
    let IBANLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = " Your data "
        
        imageFrame.image = UIImage(named: image ?? "")
        fullnameFrame.text = fullName ?? ""
        salaryLabel.text = salary ?? ""
        emailLabel.text = email ?? ""
        phoneNumberLabel.text = phoneNumber ?? ""
        IBANLabel.text = IBAN ?? ""
        
        view.addSubview(imageFrame)
        view.addSubview(fullnameFrame)
        view.addSubview(salaryLabel)
        view.addSubview(emailLabel)
        view.addSubview(phoneNumberLabel)
        view.addSubview(IBANLabel)
        
        setupConstrents()
       
    }

    
    func  setupConstrents(){
        imageFrame.snp.makeConstraints{ make in
            make.top.equalToSuperview().offset(20)
            make.width.height.equalTo(250)
           
        }
        
        fullnameFrame.snp.makeConstraints { make in
            make.top.equalTo(imageFrame.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        salaryLabel.snp.makeConstraints { make in
            make.top.equalTo(fullnameFrame.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(salaryLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        IBANLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
    }
   }

