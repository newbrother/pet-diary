//
//  MainCollectionViewController.swift
//  collection
//
//  Created by CAUADC on 2017. 8. 1..
//  Copyright © 2017년 inhason. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController {
    
    var cellContents = [CellContents]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let cell1 = CellContents(mainImage: "cat1")
        
        let cell2 = CellContents(mainImage: "cat2")
        
        let cell3 = CellContents(mainImage: "cat3")
        
        let cell4 = CellContents(mainImage: "cat4")
        
        let cell5 = CellContents(mainImage: "cat5")
        
        let cell6 = CellContents(mainImage: "cat6")
        
        let cell7 = CellContents(mainImage: "cat7")
        
        cellContents.append(cell1)
        cellContents.append(cell2)
        cellContents.append(cell3)
        cellContents.append(cell4)
        cellContents.append(cell5)
        cellContents.append(cell6)
        cellContents.append(cell7)
        
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

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
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return cellContents.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
        
        let cellVal = cellContents[indexPath.row]
        
        //이미지뷰 생성
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 170, height: 170))
        imageView.image = UIImage(named: cellVal.mainImage)
        
        //셀에 이미지뷰 추가
        cell.addSubview(imageView)
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
