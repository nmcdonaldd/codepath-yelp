//
//  BusinessTableViewCell.swift
//  Yelp
//
//  Created by Nick McDonald on 1/22/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessTableViewCell: UITableViewCell {
    
    @IBOutlet weak var businessThumbImageView: UIImageView!
    @IBOutlet weak var ratingImageView: UIImageView!
    @IBOutlet weak var businessNameLabel: UILabel!
    @IBOutlet weak var businessDistanceLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    
    var business: Business! {
        didSet {
            self.businessNameLabel.text = business.name
            self.businessThumbImageView.setImageWith(business.imageURL!)
            self.foodTypeLabel.text = business.categories
            self.addressLabel.text = business.address
            self.reviewsCountLabel.text = "\(business.reviewCount!) reviews"
            self.ratingImageView.setImageWith(business.ratingImageURL!)
            self.businessDistanceLabel.text = business.distance
            self.businessNameLabel.preferredMaxLayoutWidth = self.businessNameLabel.frame.size.width
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.businessThumbImageView.layer.cornerRadius = 3
        self.businessThumbImageView.clipsToBounds = true
        self.businessNameLabel.preferredMaxLayoutWidth = self.businessNameLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.businessNameLabel.preferredMaxLayoutWidth = self.businessNameLabel.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
