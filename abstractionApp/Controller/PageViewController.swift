//
//  ViewController.swift
//  abstractionApp
//
//  Created by Judkins, Jensen on 12/4/18.
//  Copyright © 2018 Judkins, Jensen. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {

    //MARK: Lifecycle Methods
public override func viewDidLoad()
{
        super.viewDidLoad()
        dataSource = self
    
        if let firstViewcontroller = orderedAbstractionViews.first
        {
            setViewControllers([firstViewcontroller],
                               direction: .forward,
                               animated: true,
                               completion: nil)
    }
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    //MARK: Datasource required methods
    //Swipe Left
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewcontroller: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
            
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >=0
            else
        {
            return orderedAbstractionViews.last
        }
        
        guard orderedAbstractionViews.count > previousIndex
            else
        {
            return nil
            
        }
        
        return orderedAbstractionViews[previousIndex]
    }
    
    //Swipe Right
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?
    {
        guard let viewControllerIndex = orderedAbstractionViews.index(of: viewController)
            else
        {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        
        guard nextIndex < orderedAbstractionViews.count
            else
        {
            return orderedAbstractionViews.first
        }
        
        return orderedAbstractionViews[nextIndex]
    }

}

