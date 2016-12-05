//
//  NavigationAction.swift
//  RxReduxRouter
//
//  Created by Chu Cuoi on 11/04/16.
//  Copyright © 2016 chucuoi.net. All rights reserved.
//

import RxRedux

public enum NavigationActions: Action {
    case setRouteAction(route: Route, animated: Bool)
    case setRouteSpecificData(route: Route, data: Any)
}
