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
        let attributedText = NSAttributedString(string: text, attributes: attributes)

        textView.attributedText = attributedText
    }
}

let text = #"""
Als offizieller HSK-Partner erhalten Sie bei uns das komplette Sortiment. Fragen Sie einfach an!

"Fragen Sie bei uns die gewünschten Artikel mit der HSK-Artikelnummer an, und wir erstellen Ihnen ein individuelles Angebot."

ÄSTHETISCH, HOCHWERTIG SOWIE ÄUSSERST FUNKTIONAL

MARMOR-POLYMER DUSCHWANNEN IN STEINOPTIK

Die Steinoptik der Marmor-Polymer Duschwannen bringt einen edlen Look in die Dusche. Besonders vorteilhaft: Die 4 cm starke Wanne ist nicht nur montagefreundlich bei ebenerdigem Einbau oder auf höhenverstellbaren Füßen, sondern auch besonders rutschsicher für die Benutzer.

PRODUKTINFORMATION

EIGENSCHAFTEN

•    Strukturierte Oberfläche
•    Dezenter Ablauf mit gleicher Beschaffenheit wie Duschwannen
•    Massive Ausführung
•    Wärmespeichernd
•    Hautsympathisch
•    Pflegeleicht
•    Bodengleicher Einbau
•    Auf höhenverstellbaren Füßen
•    Direkt auf den Boden
•    Stabile Montage durch bewährte Höhenverstelltechnik
•    Bequemes Handling durch Montage von oben
•    Keine Bohrung in der Wand - Befestigung am Boden
•    Besonders geeignet in der Sanierung unebener Böden
•    Mittenabstützung mit EasyLift Wannenfuß
•    DIE PLUSPUNKTE
+ Für Acryl & Marmor-Polymer Duschwannen + Flexibel für nahezu alle Einbausituationen geeignet + Dauerhaft zuverlässig wasserdicht + Professionelle Abdichtung + Besonders elastisch und dehnbar + Komfortable Montage

ANTISLIP – FÜR ERHÖHTE TRITTSICHERHEIT

OPTIONAL FÜR ALLE DUSCHWANNEN

Alle Duschwannen können werkseitig mit einer Schutzschicht für mehr Trittsicherheit ausgerüstet werden. Diese weltweit einzig zertifizierte wasserbasierte 2-Komponenten Beschichtung entspricht der Rutschsicherheitsklasse C nach DIN 51097 und ist nach ISO 22196 eine antibakteriell aktive Oberfläche. Neben einem sicheren Stand besticht die AntiSlip Beschichtung ebenfalls durch mühelose Pflege. Durch die Pflegeversicherung ist außerdem bei vorhandener Pflegegradeinstufung eine Kostenübernahme von bis zu 4000€ möglich. Ein weiterer Vorteil: Mit dem separat erhältlichen Remover kann die Beschichtung jederzeit rückstandslos entfernt werden.

QUADRAT

•    Wannentiefe ca. 0 - 1,5 cm

Verfügbare Maße:

90 x 90 x 4,0 cm

100 x 100 x 4,0 cm

120 x 120 x 4,0 cm

RECHTECK

•    Wannentiefe ca. 0 - 1,5 cm

Verfügbare Maße:

75 x 100 x 4,0 cm

90 x 100 x 4,0 cm

75 x 120 x 4,0 cm

90 x 120 x 4,0 cm

75 x 140 x 4,0 cm

90 x 140 x 4,0 cm

80 x 100 x 4,0 cm

100 x 120 x 4,0 cm

80 x 120 x 4,0 cm

100 x 140 x 4,0 cm

80 x 140 x 4,0cm
"""#
