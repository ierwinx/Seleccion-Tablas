import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabla: UITableView!
    
    private let telefonos: Array<Telefono> = [
        Telefono(marca: "Apple", modelos: ["iPhone 8", "iPhone 8 Plus", "iPhone X", "iPhone XR", "iPhone 11", "iPhone 11 Pro", "iPhone 11 Pro Max", "iPhone SE2", "iPhone 12", "iPhone 12 Pro", "iPhone 12 Pro Max"]),
        Telefono(marca: "Huawei", modelos: ["Mate 40Pro+", "Mate 40Pro", "P Smart 2021", "Y9a", "P Smart S", "Enjoy Z 5G", "Y8p", "P 30 Pro New Edition", "P Smart 2020", "Y5p", "Y6p"]),
        Telefono(marca: "Nokia", modelos: ["Nokia C3", "Nokia 1 Plus", "Nokia 1.3", "Nokia 2.2", "Nokia 2.3", "Nokia 4.2", "Nokia 5.1 Plus", "Nokia 5.3", "Nokia 6.2", "Nokia 7.2"]),
        Telefono(marca: "Samsung", modelos: ["Galaxy A2 Core", "Galaxy A10", "Galaxy A20", "Galaxy A30", "Galaxy A40", "Galaxy A50", "Galaxy A70", "Galaxy A80", "Galaxy A90"]),
        Telefono(marca: "Xiaomi", modelos: ["Mi 10", "Poco X3 NFC", "Mi 10 Lite", "Mi Note 10 Lite", "Redmi Note 9S", "Redmi 9", "Black Shark 3", "Mi Mix 3 5G", "Redmi Note 9 Pro", "Redmi Note 9"])
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabla.dataSource = self
        tabla.delegate = self
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.telefonos.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.telefonos[section].modelos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaX", for: indexPath)
        celda.textLabel?.text = self.telefonos[indexPath.section].modelos[indexPath.row]
        return celda
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return self.telefonos[section].marca
    }
    
    // Titulo Seccion
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let vista = UIView(frame: tableView.frame)
        vista.backgroundColor = .red
        vista.tintColor = .white
        
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: view.frame.width - 15, height: 30))
        label.textColor = .white
        label.text = self.telefonos[section].marca
        vista.addSubview(label)
        return vista
    }
        
}
