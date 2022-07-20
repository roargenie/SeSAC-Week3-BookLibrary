

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    @IBOutlet weak var bookImageView: UIImageView!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func configure(_ book: Book) {
        bookTitleLabel.text = book.bookTitle
        authorLabel.text = book.author
        priceLabel.text = book.price
        descriptionLabel.text = book.description
        bookImageView.image = book.image
        
        bookTitleLabel.numberOfLines = 1
        bookTitleLabel.font = .boldSystemFont(ofSize: 15)
        
        authorLabel.numberOfLines = 1
        authorLabel.font = .systemFont(ofSize: 11)
        authorLabel.textColor = .systemGray
        
        priceLabel.numberOfLines = 1
        priceLabel.font = .boldSystemFont(ofSize: 12)
        priceLabel.textColor = .systemRed
        
        descriptionLabel.numberOfLines = 0
        descriptionLabel.font = .systemFont(ofSize: 11)
        
        bookImageView.contentMode = .scaleAspectFit
     
    }
    
    
    
    
    
}
