

import UIKit



class CollectionViewController: UICollectionViewController {
    
    
    let bookList = BookInfo()
    
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 5
        let width = (UIScreen.main.bounds.width - (spacing * 3)) / 2
        
        layout.itemSize = CGSize(width: width, height: width)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: spacing)
        layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout

        
    }

    


}



extension CollectionViewController {
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 2
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if section == 0 {
            return bookList.bestsellerBookArr.count
        } else if section == 1 {
            return bookList.myBookArr.count
        } else {
            return 0
        }
        
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as! CollectionViewCell
        
        
        if indexPath.section == 0 {
            cell.configure(bookList.bestsellerBookArr[indexPath.row])
            
        } else if indexPath.section == 1 {
            cell.configure(bookList.myBookArr[indexPath.row])
            
        }
        
        return cell
          
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "ReuseIdentifiers", for: indexPath)
        
//        if indexPath.section == 0 {
//            sectionLabel.text = "베스트 셀러"
//            sectionLabel.font = .boldSystemFont(ofSize: 20)
//        } else if indexPath.section == 1 {
//            sectionLabel.text = "나의 책 보관함"
//            sectionLabel.font = .boldSystemFont(ofSize: 20)
//        } else {
//
//        }
        
        return headerView
    }
    
}
