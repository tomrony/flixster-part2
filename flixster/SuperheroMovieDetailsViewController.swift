//
//  SuperheroMovieDetailsViewController.swift
//  flixster
//
//  Created by Qingzhi Luo on 2/27/20.
//  Copyright © 2020 Qingzhi Luo. All rights reserved.
//

import UIKit
import AlamofireImage

class SuperheroMovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    
    
    var movie: [String: Any]!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w1280"
               
               let posterPath = movie["poster_path"] as! String
               let posterUrl = URL(string: baseUrl + posterPath)
               posterView.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
                      let backdropUrl = URL(string: baseUrl + backdropPath)
                      backdropView.af_setImage(withURL: backdropUrl!)
               
        
        
        // Do any additional setup after loading the view.
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
