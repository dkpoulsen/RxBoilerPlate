//
//  ViewModelType.swift
//  RxBoilerPlate
//
//  Created by Daniel K. Poulsen on 04/09/2018.
//
//  idea from github.com/sergdort

import Foundation

/// protocol for ViewModel in MVVM
protocol ViewModelType {
    associatedtype Input
    associatedtype Output
    
    /// Transforms UI Inputs to UI Outputs of the ViewModel
    ///
    /// - Parameter input: Any input from the View
    /// - Returns: Any logic from the ViewModel to the View
    func transform(input: Input) -> Output
}
