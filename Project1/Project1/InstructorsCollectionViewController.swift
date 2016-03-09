//
//  InstructorsCollectionViewController.swift
//  Project1
//
//  Created by Kelly Linehan on 3/8/16.
//  Copyright © 2016 Kelly Linehan. All rights reserved.
//

import UIKit
import AVFoundation

//private let reuseIdentifier = "Cell"

class InstructorsCollectionViewController: UICollectionViewController{

    //var Instructors=[String]()
    var photos = Photo.allPhotos()
  
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

    override func viewDidLoad() {
        super.viewDidLoad()
      let backgroundImage = UIImage(named: "back.jpg")
      let imageView = UIImageView(image: backgroundImage)
      self.collectionView!.backgroundView = imageView
    

        /*for i in 0...9{
            Instructors.append("SLIH" + String(i+1))
        }
        //https://www.raywenderlich.com/107439/uicollectionview-custom-layout-tutorial-pinterest
        
        
      
        //let layout = UICollectionViewFlowLayout()
        //layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        //self.collectionView?.setCollectionViewLayout(layout, animated: true)
        
        
        /
        // self.clearsSelectionOnViewWillAppear = false
        
     
        // self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
      
*/
    }
    
  
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
        return photos.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let Cell = collectionView.dequeueReusableCellWithReuseIdentifier("picCell", forIndexPath: indexPath) as! InstructorCollectionViewCell
    
        //let image = UIImage(named: Instructors[indexPath.row])
        Cell.photo = photos[indexPath.item]
        //print(indexPath.item)
        //let data = tableData[indexPath.row]
       // Cell.Iname.text = data
        print(indexPath.row)
        
        return Cell
    }
  /*
  override func viewWillAppear(animated: Bool) {
    
    let backgroundImage = UIImage(named: "back.jpg")
    let imageView = UIImageView(image: backgroundImage)
    collectionViewLayout.backgroundView = imageView
    
  }*/
  
    /*
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSize(width: 50,height: 50)
    }
    
    override func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView {
        var header: CollectionSupplementaryView?
        if kind == UICollectionElementKindSectionHeader{
            header = collectionView.dequeueReusableSupplementaryViewOfKind(kind, withReuseIdentifier: "Header", forIndexPath: indexPath) as? CollectionSupplementaryView
            header?.headerLabel.text = "Fall 2015"
        }
        return header!
    }


    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let image = UIImage(named: Instructors[indexPath.row])
        let newSize:CGSize = CGSize(width: (image?.size.width)!/8, height: (image?.size.height)!/8)
        let rect = CGRectMake(0, 0, newSize.width, newSize.height)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image?.drawInRect(rect)
        let image2 = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return (image2?.size)!
        
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetail"{
            let indexPath = collectionView?.indexPathForCell(sender as! CollectionViewCell)
            let detailVC = segue.destinationViewController as! DetailViewController
            detailVC.imageName = expoImages[(indexPath?.row)!]
        }
    }
  

    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        if sharing {
            let image = Instructors[indexPath.row]
            if let foundIndex = selectedImages.indexOf(Instructors[indexPath.row]) {
  
                selectedImages.removeAtIndex(foundIndex)
                collectionView.cellForItemAtIndexPath(indexPath)?.backgroundColor = UIColor.blackColor()
            } else {
  
                selectedImages.append(image)
                collectionView.cellForItemAtIndexPath(indexPath)?.backgroundColor = UIColor.yellowColor()
            }
        }
        else {
  
            self.performSegueWithIdentifier("showDetail", sender: collectionView.cellForItemAtIndexPath(indexPath))
        }
        return false
    }
*/
  
  
  
  
}