//
//  NavigationReducer.swift
//  Meet
//
//  Created by Hung Dinh on 12/02/16.
//  Copyright © 2016 chucuoi.net. All rights reserved.
//

import RxRedux

public struct NavigationReducer<T: StateType>: Reducer {
    public init() {}
    
    public func handleAction(state: T, action: Action) -> T {
        guard let action = action as? NavigationActions else { return state }
        
         switch action {
         case .setRouteAction(let route, let animated ):
            guard var newState = state as? HasNavigationState else { return state }
            
            newState.navigationState.route = route
            newState.navigationState.changeRouteAnimated = animated
            return newState as! T
            
         case .setRouteSpecificData(let route, let data):
            guard var newState = state as? HasNavigationState else { return state }
            
            let routeHash = RouteHash(route: route)
            newState.navigationState.routeSpecificState[routeHash] = data
            return newState as! T
        }
    }
}
