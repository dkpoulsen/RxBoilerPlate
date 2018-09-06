//
//  ViewType.swift
//  RxBoilerPlate
//
//  Created by Daniel K. Poulsen on 04/09/2018.
//

import Foundation
import RxSwift
import RxCocoa

/// Protcol for View in MVVM
protocol ViewType {
    associatedtype ViewModel : ViewModelType
    
    /// ViewModel in View
    var viewModel : ReplaySubject<ViewModel> { get }
    /// reminder to set bindings
    func bindViewModel()
}

extension ViewType {
    
    /// transforming ViewModel Inputs to Outputs reactivly
    ///
    /// - Parameter input: input from ViewModel.Input
    /// - Returns: Observable from the last injected ViewModel
    func bindViewModel(input : ViewModel.Input) -> Observable<ViewModel.Output> {
        return viewModel.map{$0.transform(input: input)}
    }
}
