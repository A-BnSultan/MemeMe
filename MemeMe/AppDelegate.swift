//
//  AppDelegate.swift
//  MemeMe
//
//  Created by عبدالرحمن محمد بن سلطان on 29/03/2019.
//  Copyright © 2019 ABnSultan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var meme = [Meme]()
    var editorMeme = Meme(topText: "TOP TEXT", bottomText: "BOTTOM TEXT", originalImage: UIImage(), memedImage: UIImage())
}

