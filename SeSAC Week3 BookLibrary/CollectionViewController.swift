

import UIKit



class CollectionViewController: UICollectionViewController {
    
    
    let bookList = BookInfo()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "List"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(rightBarButtonItemTapped))

        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 5
        let width = (UIScreen.main.bounds.width - (spacing * 3)) / 2
        
        layout.itemSize = CGSize(width: width, height: width)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        //layout.minimumLineSpacing = spacing
        layout.minimumInteritemSpacing = spacing
        collectionView.collectionViewLayout = layout

        
    }
    @objc func rightBarButtonItemTapped() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: FirstViewController.identifier) as? FirstViewController else {
            return
        }
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
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
        
        return headerView
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: SecondViewController.identifier) as? SecondViewController else {
            return
        }
                
        self.navigationController?.pushViewController(vc, animated: true)
        
        
        
        
    }
    
}
