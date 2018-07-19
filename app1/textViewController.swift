//
//  textViewController.swift
//  app1
//
//  Created by Tina Lee on 2018/6/26.
//  Copyright © 2018年 Tina Lee. All rights reserved.
//

import UIKit

class textViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var text: UITextView!
    
    
    let font=["Arial Black","Verdana","Comic Sans MS","Baskerville","DIN Alternate","Microsoft Sans Serif","Georgia","Lao Sangam MN","Herculanum","Sinhala Sangam MN"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return font[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return font.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text=font[row]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
