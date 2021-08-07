//
//  nba3on3ViewController.swift
//  NBA3on3
//
//  Created by apple on 2021/8/3.
//

import UIKit

class nba3on3ViewController: UIViewController {

    @IBOutlet weak var playerOneView: UIImageView!
    
    @IBOutlet weak var playerTwoView: UIImageView!
    
    @IBOutlet weak var leagueSelectSegment: UISegmentedControl!
    
    
    @IBOutlet weak var forceSwitch: UISwitch!
    
    @IBOutlet weak var hitRateSwitch: UISwitch!
    
    @IBOutlet weak var jobtenure: UILabel!
    
    @IBOutlet weak var jobTenureSliderOutlet: UISlider!
    
    @IBOutlet weak var teamStartDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerOneView.transform = CGAffineTransform(rotationAngle: -.pi / 45)
        playerTwoView.transform = CGAffineTransform(rotationAngle: .pi / 45)
        jobTenureSliderOutlet.isHidden = true
    }
    
 
    @IBAction func topGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    let westStarArray = ["williamson.png","mitchell.png","luka.png","jokic.png","booker.png","lillard.png","george.png","davis.png","paul.png","kawhi.png","lebron.png","curry.png"]
    let eastStarArray = ["simmons.png","brown.png","embiid.png","sabonis.png","tatum.png","antetokounmpo.png","LaVine.png","Randle.png","durant.png","beal.png","irving.png","Harden.png"]
    var arrayIndex:Float = 0

    @IBAction func playerSelectRandomBtn(_ sender: Any) {
        let allStars = westStarArray + eastStarArray
        var playerone = allStars.randomElement()!
        playerOneView.image = UIImage(named: playerone)
        var playertwo = allStars.randomElement()!
        playerTwoView.image = UIImage(named: playertwo)
    }
    let eastVersatilityPlayer = ["brown.png","embiid.png","tatum.png","durant.png","irving.png"]
    let eastForceplayer = ["brown.png","embiid.png","tatum.png","durant.png","irving.png","simmons.png","antetokounmpo.png","sabonis.png"]
    let wastVersatilityPlayer = ["lillard.png","george.png","davis.png","kawhi.png","lebron.png"]
    let wastForceplayer = ["lillard.png","george.png","davis.png","kawhi.png","lebron.png","luka.png","jokic.png","paul.png"]
    @IBAction func playerOneBtn(_ sender: Any) {
       
        if leagueSelectSegment.selectedSegmentIndex == 0,
           forceSwitch.isOn == true && hitRateSwitch.isOn == true{
                var playerone = wastVersatilityPlayer.randomElement()!
                playerOneView.image = UIImage(named: playerone)
            }
            else if leagueSelectSegment.selectedSegmentIndex == 0,
                    forceSwitch.isOn == true && hitRateSwitch.isOn == false{
                    var playerone = wastForceplayer.randomElement()!
                    playerOneView.image = UIImage(named: playerone)
                    
            }else if leagueSelectSegment.selectedSegmentIndex == 0 {
                var playerone = westStarArray.randomElement()!
                playerOneView.image = UIImage(named: playerone)
            }
        if leagueSelectSegment.selectedSegmentIndex == 1,
           forceSwitch.isOn == true && hitRateSwitch.isOn == true{
                var playerone = eastVersatilityPlayer.randomElement()!
                playerOneView.image = UIImage(named: playerone)
            }
            else if leagueSelectSegment.selectedSegmentIndex == 1,
                    forceSwitch.isOn == true && hitRateSwitch.isOn == false{
                    var playerone = eastForceplayer.randomElement()!
                    playerOneView.image = UIImage(named: playerone)
                    
            }else if leagueSelectSegment.selectedSegmentIndex == 1{
                var playerone = eastStarArray.randomElement()!
                playerOneView.image = UIImage(named: playerone)
        }
        jobTenureSliderOutlet.isHidden = false
        
        
    }
    
    @IBAction func playerTwoBtn(_ sender: Any) {
        if leagueSelectSegment.selectedSegmentIndex == 0 ,
           forceSwitch.isOn == true && hitRateSwitch.isOn == true{
        
                var playertwo = wastVersatilityPlayer.randomElement()!
                playerTwoView.image = UIImage(named: playertwo)
            }
        
            else if leagueSelectSegment.selectedSegmentIndex == 0 ,
                    forceSwitch.isOn == true && hitRateSwitch.isOn == false{
                    var playertwo = wastForceplayer.randomElement()!
                    playerTwoView.image = UIImage(named: playertwo)
            
            }else if leagueSelectSegment.selectedSegmentIndex == 0 {
                var playertwo = westStarArray.randomElement()!
                playerTwoView.image = UIImage(named: playertwo)
            }
        
        if leagueSelectSegment.selectedSegmentIndex == 1 ,
           forceSwitch.isOn == true && hitRateSwitch.isOn == true{
                var playertwo = eastVersatilityPlayer.randomElement()!
                playerTwoView.image = UIImage(named: playertwo)
            }
         
            else if leagueSelectSegment.selectedSegmentIndex == 1 ,
                    forceSwitch.isOn == true && hitRateSwitch.isOn == false{
                    var playertwo = eastForceplayer.randomElement()!
                    playerTwoView.image = UIImage(named: playertwo)
                    
            }else if leagueSelectSegment.selectedSegmentIndex == 1 {
                var playertwo = eastStarArray.randomElement()!
                playerTwoView.image = UIImage(named: playertwo)
        }
        jobTenureSliderOutlet.isHidden = false
    }
        var slider = 1
    @IBAction func taamStartYearslisder(_ sender: Any) {
        
        slider = Int(jobTenureSliderOutlet.value)
        jobtenure.text = String(slider)
    }
    
    }
    



