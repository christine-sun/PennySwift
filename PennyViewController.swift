//
//  PennyViewController.swift
//  PennySwift
//
//  Created by Christine Sun on 11/23/21.
//

import UIKit

class PennyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: "https://pennyandroidserver.herokuapp.com/searchresults?author=ker")!

        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
            print(data)
            print(String(data: data, encoding: .utf8)!)
        }

        task.resume()
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
