//
//  ViewController.swift
//  who is that pokemon
//
//  Created by Alex Camacho on 01/08/22.
//

import UIKit

class PokemonViewController: UIViewController {

    @IBOutlet weak var labelPoints: UILabel!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var imgPokemon: UIImageView!
    // crea un array con los nombres de los botones
    
    @IBOutlet var btnSelectedPokemon: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createStyleButtons()
    }
    
    
    @IBAction func buttonPlay(_ sender: UIButton) {
        labelMessage.text = "Sí, es un \(sender.title(for: .normal)!)"
        
        if sender.title(for: .normal) == "Flaaffy" {
            labelPoints.text = "Puntaje: 330"
        } else if sender.title(for: .normal) == "Staravia" {
            labelPoints.text = "Puntaje: 140"
        } else if sender.title(for: .normal) == "Carvanha" {
            labelPoints.text = "Puntaje: 200"
        } else {
            labelPoints.text = "Puntaje: 500"
            imgPokemon.image = UIImage(named: "pika")
        }
        print(sender.title(for: .normal)!)
    }
    
    func createStyleButtons() {
        for button in btnSelectedPokemon {
            // Bordes redondeados
            button.layer.cornerRadius = 10
            
            // Sombra
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOffset = CGSize(width: 0.0, height: 2.0)
            button.layer.shadowRadius = 4
            button.layer.shadowOpacity = 0.25
            
            // Borde
            button.layer.borderColor = UIColor(red: 0.0, green: 0.2, blue: 0.3, alpha: 1.0).cgColor
            button.layer.borderWidth = 2
            
            // Color de fondo
            button.backgroundColor = UIColor(red: 0.0, green: 0.2, blue: 0.3, alpha: 1.0)
            
            // Color del texto
            button.setTitleColor(.white, for: .normal)
            
            // Fuente personalizada (opcional)
            button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        }

    }
    
}
