//
//  DetailViewController.swift
//  Project1
//
//  Created by Pedro Guerreiro on 01/02/2024.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var pictureCount: Int = 0
    var pictureIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Picture \(pictureIndex + 1) of \(pictureCount)"

        if let imageToLoad = selectedImage {
            imageView.image  = UIImage(named: imageToLoad)
        }
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
