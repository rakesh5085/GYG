//
//  Adapter.swift

import UIKit

/// A generic adapter to act as convenient DataSource and Delegate for UICollectionView
final class Adapter<T, Cell: UICollectionViewCell>: NSObject,
UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  var items: [T] = []
  var configure: ((T, Cell) -> Void)?
  var select: ((T) -> Void)?
  var cellHeight: CGFloat = 150

  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return items.count
  }

  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
    let item = items[indexPath.item]
    let cell: Cell = collectionView.dequeue(indexPath: indexPath)
    
    configure?(item, cell)
    return cell
  }

  func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    //let item = items[indexPath.item]
    
  }

  func collectionView(
    _ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout,
    sizeForItemAt indexPath: IndexPath) -> CGSize {

    return CGSize(width: collectionView.frame.size.width, height: cellHeight)
  }
}
