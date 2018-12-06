//
//  AbstractionViewController.swift
//  abstractionApp
//
//  Created by Judkins, Jensen on 12/6/18.
//  Copyright © 2018 Judkins, Jensen. All rights reserved.
//

import UIKit

//MARK: Data Members
private lazy var orderedAbstractionViews : [UIViewController] =
{
    return [
    self.newAbstractionViewController(abstractionLevel: "Swift"),
    self.newAbstractionViewController(abstractionLevel: "Block"),
    self.newAbstractionViewController(abstractionLevel: "ByteCode"),
    self.newAbstractionViewController(abstractionLevel: "Binary"),
    self.newAbstractionViewController(abstractionLevel: "LogicalGate")
    ]
}()

//MARK: Helper method to retrieve the correct ViewController based on the data member
private func newAbstractionViewController(abstractionLevel : String) -> UIViewController
{
    return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "\(abstractionLevel)ViewController")
}

public class AbstractionViewController: UIPageViewController, UIPageViewControllerDataSource
{

}
