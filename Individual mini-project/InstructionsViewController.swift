

import UIKit
import SnapKit

class InstructionsViewController: UIViewController {
    
    let instruction = "👩🏻‍💻 Understand the principle shared services."
    let timing = "🕒 Every day from 8 to 2"
    let contact = "📞 contact us 0001112"
    
    
    let  instructionFrame = UILabel()
    let timingFrame = UILabel()
    let contactFrame = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(instructionFrame)
        view.addSubview(timingFrame)
        view.addSubview(contactFrame)
        
        setupUi()
        setconstructor()
    }
    
    func setupUi(){
        instructionFrame.text = instruction
        timingFrame.text = timing
        contactFrame.text = contact
    }
    
    func setconstructor(){
        
        instructionFrame.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        timingFrame.snp.makeConstraints { make in
            make.top.equalTo(instructionFrame.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        contactFrame.snp.makeConstraints { make in
            make.top.equalTo(timingFrame.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
    }
}
