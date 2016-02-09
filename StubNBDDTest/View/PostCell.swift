//
//  PostCell.swift
//  StubNBDDTest
//
//  Created by Anak Mirasing on 2/9/16.
//  Copyright © 2016 iGROOMGRiM. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    static let REUSE_ID = "PostCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    // MARK: Initial Cell
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
