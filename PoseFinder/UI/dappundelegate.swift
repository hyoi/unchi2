//
//  dappundelegate.swift
//  unchi2
//
//  Created by 渡邉輝 on 2020/08/21.
//  Copyright © 2020 michael. All rights reserved.
//

import Foundation
import SocketIO

class dappun: PoseImageViewDelegate {

   
       var manager: SocketManager!
          var socket: SocketIOClient!

          func viewDidLoad() {

              manager = SocketManager(socketURL: URL(string: "http://localhost:8000")!, config: [.log(true), .forceWebsockets(true), .forcePolling(true)])
              socket = manager.defaultSocket

              socket.on(clientEvent: .connect) { [weak self] poses, ack in
                  print("connect")
                  self?.socket.emit("join", ["hoge"])
              }

              socket.on("message") { poses, ark in
                  print("ポーズの値は下記です。1")
                  print(poses)
              }

              socket.on(clientEvent: .statusChange) { poses, ack in
                print("ポーズの値は下記です。２")
                  print(poses)
                  print(ack)
              }


              socket.connect()
          }


      }

    
    
    
