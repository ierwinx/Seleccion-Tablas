import Foundation

struct Telefono {
    
    let marca: String
    let modelos: Array<String>
    
    init(marca: String, modelos: Array<String>) {
        self.marca = marca
        self.modelos = modelos
    }
    
}
