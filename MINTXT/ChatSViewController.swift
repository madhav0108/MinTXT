//
//  ChatSViewController.swift
//  MINTXT
//
//  Created by madhav sharma on 10/19/20.
//

import UIKit
import MessageKit

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
}

struct Sender: SenderType {
    var senderId: String
    var displayName: String
}

class ChatSViewController: MessagesViewController {
    
    private var messages = [Message]()
    
    private let ballerMach = Sender(senderId: "333",
                                    displayName: "Baller Mach")
    private let sarahParker = Sender(senderId: "666",
                                     displayName: "Sarah Parker")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: ballerMach,
                                messageId: "3",
                                sentDate: Date(),
                                kind: .text("Hey Sarah!")))
        messages.append(Message(sender: sarahParker,
                                messageId: "6",
                                sentDate: Date(),
                                kind: .text("Hey Baller!")))
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self

        // Do any additional setup after loading the view.
    }

}

extension ChatSViewController: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    func currentSender() -> SenderType {
        return ballerMach
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
    
    
}
