//
//  ViewController.swift
//  RSTestProject
//
//  Created by Balakrishnan s on 1/12/17.
//  Copyright © 2017 CP. All rights reserved.
//

import UIKit
import ReactiveSwift
import Result

class ViewController: UIViewController {

	let database:DatabaseManager = DatabaseManager()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
//		database.statusChangedSignal.skipRepeats().observeValues { print($0) }
		
		database.start().startWithValues {
			print("Values")
		}
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

}


struct DatabaseManager {
	
//	let statusChangedSignal:Signal<Bool, NoError>
	
//	private let status = MutableProperty<Bool>(false)
	
	init() {
//		self.statusChangedSignal = status.signal
	}
	
	func start() -> SignalProducer<Void, NoError> {
		return SignalProducer { observer, _ in
		
			
			observer.send(value: ())
			observer.sendCompleted()
			
		}
	}
	
}

