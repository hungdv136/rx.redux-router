//
//  NavigationAction.swift
//  RxReduxRouter
//
//  Created by Chu Cuoi on 11/04/16.
//  Copyright © 2016 chucuoi.net. All rights reserved.
//

import RxRedux

public let typeMap: [String: Action.Type] = ["RE_SWIFT_ROUTER_SET_ROUTE": SetRouteAction.self]

public struct SetRouteAction: Action {

    let route: Route
    let animated: Bool
    
    public static let type = "RE_SWIFT_ROUTER_SET_ROUTE"

    public init (_ route: Route, animated: Bool = true) {
        self.route = route
        self.animated = animated
    }
}

public struct SetRouteSpecificData: Action {
    let route: Route
    let data: Any

    public init(route: Route, data: Any) {
        self.route = route
        self.data = data
    }
}
