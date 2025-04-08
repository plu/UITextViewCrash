import UIKit

final class ViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var textView: UITextView!

    @IBAction
    func onTouchUp(_ sender: Any) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineHeightMultiple = 1.2
        let attributes = [
            NSAttributedString.Key.font: UIFont(name: "KleinanzeigenRebondText-Regular", size: 14.0)!,
            NSAttributedString.Key.paragraphStyle: paragraphStyle
        ]
        let text = "ffi"
        let attributedText = NSAttributedString(string: text, attributes: attributes)

        textView.attributedText = attributedText
    }
}
