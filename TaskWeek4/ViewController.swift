//
//  ViewController.swift
//  TaskWeek4
//
//  Created by Yoel Jacho on 14/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let players = [Player(playerName: "Stephen Curry", teamName: "Golden State Warriors", imagePlayer: "https://imageio.forbes.com/specials-images/imageserve/627bdaec36beab21cd23ad21/0x0.jpg?format=jpg&crop=1003,1002,x921,y73,safe&height=416&width=416&fit=bounds", playerDescription: "Quizás por el momento Curry tenga en mente o como objetivo principal mantenerse sano para que los Warriors defiendan el campeonato obtenido la campaña anterior y hagan prevalecer esa diferencia que hace un par de años parecía haber llegado a su fin, pero que la misma base se encargó de revivir, por decirlo de alguna manera."),
        Player(playerName: "Draymond Green", teamName: "Golden State Warriors", imagePlayer: "https://imagez.tmz.com/image/b7/4by3/2022/10/08/b71c3306ed08410f8e6e67131937483d_md.jpg", playerDescription: "Quizás por el momento Curry tenga en mente o como objetivo principal mantenerse sano para que los Warriors defiendan el campeonato obtenido la campaña anterior y hagan prevalecer esa diferencia que hace un par de años parecía haber llegado a su fin, pero que la misma base se encargó de revivir, por decirlo de alguna manera.fewfresrefaerf"),
        Player(playerName: "Lonzo Ball", teamName: "Chicago Bulls", imagePlayer: "https://nationaltoday.com/wp-content/uploads/2022/09/Lonzo-Ball-Birthday-640x514.jpg", playerDescription: "Quizás por el momento Curry tenga en mente o como objetivo principal mantenerse sano para que los Warriors defiendan el campeonato obtenido la campaña anterior y hagan prevalecer esa diferencia que hace un par de años parecía haber llegado a su fin, pero que la misma base se encargó de revivir, por decirlo de alguna manera.faewftrhtyjrytjy"),
        Player(playerName: "Lamelo Ball", teamName: "Charlotte Hornets", imagePlayer: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNZzgtUTa9mNxXgrQwF8ymBcXmD4EJc9aj2Q&usqp=CAU", playerDescription: "Quizás por el momento Curry tenga en mente o como objetivo principal mantenerse sano para que los Warriors defiendan el campeonato obtenido la campaña anterior y hagan prevalecer esa diferencia que hace un par de años parecía haber llegado a su fin, pero que la misma base se encargó de revivir, por decirlo de alguna manera.htrreqrqe5gt56hg"),
        Player(playerName: "Giannis Antetokounmpo", teamName: "Milwaukee Bucks", imagePlayer: "https://imageio.forbes.com/specials-images/imageserve/627bd323672c41ea74c88a13/0x0.jpg?format=jpg&crop=1834,1833,x583,y167,safe&height=416&width=416&fit=bounds", playerDescription: "Quizás por el momento Curry tenga en mente o como objetivo principal mantenerse sano para que los Warriors defiendan el campeonato obtenido la campaña anterior y hagan prevalecer esa diferencia que hace un par de años parecía haber llegado a su fin, pero que la misma base se encargó de revivir, por decirlo de alguna manera.wfmconerucneroicnwoiejdse")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let playerCell : PlayerCell = tableView.dequeueReusableCell(withIdentifier: "playersCell", for: indexPath) as! PlayerCell
        
        let playerName = players[indexPath.row].getTitle()
        playerCell.tvPlayer.text = playerName
        
        let playerTeam = players[indexPath.row].getSubtitle()
        playerCell.tvTeam.text = playerTeam
        
        let url = URL(string: players[indexPath.row].getImageUrl())
        let data = try? Data(contentsOf: url!)
        let photoData : UIImage = UIImage(data: data!)!
        playerCell.ivPhoto.image = photoData
        return playerCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        performSegue(withIdentifier: "ShowDetail", sender: self)
//
//    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if (segue.identifier == "ShowDetail") {
            if let detail = segue.destination as? PlayerDetail {
                
                detail.name = players[tablePlayers.indexPathForSelectedRow!.row].getTitle()
                
            }
        }
    }
    

    @IBOutlet weak var tablePlayers: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tablePlayers.dataSource = self
        tablePlayers.delegate = self
    }
    
    


}

