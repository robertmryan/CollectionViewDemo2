//
//  ViewController.swift
//  CollectionViewDemo
//
//  Created by Robert Ryan on 7/25/20.
//  Copyright © 2020 Robert Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    // override func viewDidLoad() {
    //     super.viewDidLoad()
    //
    //     ...
    // }
}

extension ViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCell.identifier, for: indexPath) as! CustomCell
        cell.label.text = "Cell \(indexPath)"
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        switch kind {
        case UICollectionView.elementKindSectionHeader:
            let view = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CustomHeader.identifier, for: indexPath) as! CustomHeader
            view.label.text = "Header \(indexPath)"
            return view

        // case UICollectionView.elementKindSectionFooter:
        //     ...

        default:
            fatalError(#"Unexpected "kind": \(kind)"#)
        }
    }
}
