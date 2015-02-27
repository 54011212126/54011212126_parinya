//
//  data.swift
//  customTableView
//
//  Created by iStudents on 2/27/15.
//  Copyright (c) 2015 iStudents. All rights reserved.
//

import UIKit

class data: NSObject {
    func getData() -> Array<balloon>{
        var tempArray = Array<balloon>()
        
        let b1 = balloon(bImage: UIImage(named: "im1.png"), bName: "yellow")
        tempArray.append(b1)
        
        let b2 = balloon(bImage: UIImage(named: "im2.png"), bName: "red")
        tempArray.append(b2)
        
        let b3 = balloon(bImage: UIImage(named: "im3.png"), bName: "blue")
        tempArray.append(b3)
        
        let b4 = balloon(bImage: UIImage(named: "im4.png"), bName: "pink")
        tempArray.append(b4)
        
        let b5 = balloon(bImage: UIImage(named: "im5.png"), bName: "orange")
        tempArray.append(b5)
        
        return tempArray
    }
}
