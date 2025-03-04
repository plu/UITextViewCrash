import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction
    func onTouchUp(_ sender: Any) {

        let text = #"""
        Wir sind vor 1 Woche umgezogen und ich habe mir extra hierfür (habe dann endlich ein kleines aber feines Büro für mich) am 08.01.25 einen nagelneuen iMac M4, 10‑Core CPU, 10-Core GPU, 16 GB gemeinsamer Arbeitsspeicher und 256 GB Speicherplatz inkl. vier Thunderbolt 4 Anschlüssen und Gigabit Ethernet für mein neues HomeOffice als Privatrechner gekauft.
        
        Mein Schreibtisch im neuen Büro ist 160cm breit. Da passt der iMac optisch total gut hin..... dachte ich.... Man muss wissen, dass ich ab März einen neuen Arbeitgeber habe und der hat mir nun eröffnet, dass er mir für mein HomeOffice zu beruflichen Zwecken einen Laptop mit 2 x 24-Zoll Monitoren liefert.... merkt ihr was....!?!?
        
        Das passt nicht alles auf den Schreibtisch. Somit werde ich privat auf ein Macbook umstiegen müssen und mich nach wenigen Tagen (der Rechner ist erst seit 1 Woche in Betrieb) vom neuen iMac trennen müssen
        
        Der iMac kommt wie auf dem Bild. Die Tastatur sowie die Maus sind völlig unbenutzt und noch original verpackt. Das Ganze wir im Originalkarton geliefert.
        
        Die Rechnung kann ich dann auch, wegen der Garantie, mitliefern.
        
        Die weiteren technischen Daten bitte ich apple-Website zu entnehmen.
        
        Ich werde den Rechner per DHL mit zusätzlicher Transportversicherung (versichert bis 2.500 Euro anstatt 500 Euro) versenden. Die Versandkosten (über 10 kg) trägt der Käufer, die zusätzliche Transportversicherung trage ich.
        """#

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
