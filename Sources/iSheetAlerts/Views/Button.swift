import UIKit

open class CustomButton: UIButton {
    
    public typealias Action = (CustomButton) -> Swift.Void
    
    fileprivate var actionOnTouch: Action?
    
    init() {
        super.init(frame: .zero)
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    public func action(_ closure: @escaping Action) {
        if actionOnTouch == nil {
            addTarget(self, action: #selector(CustomButton.actionOnTouchUpInside), for: .touchUpInside)
        }
        self.actionOnTouch = closure
    }
    
    @objc internal func actionOnTouchUpInside() {
        actionOnTouch?(self)
    }
}


