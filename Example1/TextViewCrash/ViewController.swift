import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction
    func onTouchUp(_ sender: Any) {

        let text = "ffi"

        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.2
        let attributes = [
            NSAttributedString.Key.font: UIFont(name: "KleinanzeigenRebondText-Regular", size: 14.0)!,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        let attributedText = NSAttributedString(string: text, attributes: attributes)

        textContainerView.textView.attributedText = attributedText
        textContainerView.setNeedsLayout()
        textContainerView.layoutIfNeeded()
    }

    @IBOutlet weak var textContainerView: TextContainerView!
}

final class TextContainerView: UIView {
    override var intrinsicContentSize: CGSize {
        textView.intrinsicContentSize
    }

    lazy var textView = UITextView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }

    private func setUp() {
        addSubview(textView)
        textView.isScrollEnabled = false
        textView.textContainer.lineBreakMode = .byWordWrapping
        textView.textContainer.lineFragmentPadding = 0.0
        textView.textContainerInset = .zero
        textView.backgroundColor = .clear

    }

    override func layoutSubviews() {
        super.layoutSubviews()

        textView.frame = .init(
            origin: .init(
                x: 17,
                y: 0
            ),
            size: textView.sizeThatFits(
                CGSize(
                    width: frame.size.width - 34,
                    height: .greatestFiniteMagnitude
                )
            )
        )
    }
}
