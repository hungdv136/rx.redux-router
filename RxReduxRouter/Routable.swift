//
//  Routable.swift
//  Meet
//
//  Created by Benjamin Encz on 12/3/15.
//  Copyright © 2015 DigiTales. All rights reserved.
//

public typealias RoutingCompletionHandler = () -> Void

public protocol Routable {

    func pushRouteSegment(_ routeElementId: String, animated: Bool, completion: @escaping RoutingCompletionHandler) -> Routable

    func popRouteSegment(_ routeElementId: String, animated: Bool, completion: @escaping RoutingCompletionHandler)

    func changeRouteSegment(_ from: String, to: String, animated: Bool, completion: @escaping RoutingCompletionHandler) -> Routable
}

public extension Routable {

    public func pushRouteSegment(_ routeElementId: String, animated: Bool, completion: @escaping RoutingCompletionHandler) -> Routable {
        fatalError("This routable cannot change segments. You have not implemented it.")
    }

    public func popRouteSegment(_ routeElementId: String, animated: Bool, completion: @escaping RoutingCompletionHandler) {
        fatalError("This routable cannot change segments. You have not implemented it.")
    }

    func changeRouteSegment(_ from: String, to: String, animated: Bool, completion: @escaping RoutingCompletionHandler) -> Routable {
        fatalError("This routable cannot change segments. You have not implemented it.")
    }

}
