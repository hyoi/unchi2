//
//  socket.swift
//  unchi2
//
//  Created by 渡邉輝 on 2020/08/21.
//  Copyright © 2020 michael. All rights reserved.
//

import Foundation
import UIKit
import SocketIO

class dater: UIViewController
{
    var manager: SocketManager!
       var socket: SocketIOClient!

       override func viewDidLoad() {
           super.viewDidLoad()

           manager = SocketManager(socketURL: URL(string: "http://localhost:8000")!, config: [.log(true), .forceWebsockets(true), .forcePolling(true)])
           socket = manager.defaultSocket
    
    socket.on(clientEvent: .connect) { [weak self] data, ack in
        print("connect")
        self?.socket.emit("join", ["hoge"])
    }

    socket.on("message") { data, ark in
        print("Message received")
        print(data)
    }

    socket.on(clientEvent: .statusChange) { data, ack in
        print(data)
        print(arc)
    }
        
        socket.connect()
    
        
        
        
    
    
}
}
