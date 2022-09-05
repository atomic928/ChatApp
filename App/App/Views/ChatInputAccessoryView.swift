//
//  ChatInputAccessoryView.swift
//  App
//
//  Created by deguchi daimu  on 2022/09/05.
//

import UIKit

class ChatInputAccessoryView: UIView {
    
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var chatTeextView: UITextView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        nibInit()
        setupViews()
        autoresizingMask = .flexibleHeight
    }
    
    private func setupViews() {
        chatTeextView.layer.cornerRadius = 15
        chatTeextView.layer.borderColor = UIColor.rgb(red: 230, green: 230, blue: 230).cgColor
        chatTeextView.layer.borderWidth = 1
        
        sendButton.layer.cornerRadius = 15
        sendButton.imageView?.contentMode = .scaleAspectFill
        sendButton.contentHorizontalAlignment = .fill
        sendButton.contentVerticalAlignment = .fill
        sendButton.isEnabled = false
    }
    
    override var intrinsicContentSize: CGSize {
        return .zero
    }
    
    private func nibInit() {
        let nib = UINib(nibName: "ChatInputAccessoryView", bundle: nil)
        guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView else { return}
        
        view.frame = self.bounds
        view.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        self.addSubview(view)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
