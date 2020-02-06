//
//  ScanViewController.swift
//  mahjongAPI
//
//  Created by 柏木航 on 2020/02/05.
//  Copyright © 2020 柏木航. All rights reserved.
//

import UIKit
import AVFoundation

class ScanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var captireSession = AVCaptureSession()
    
    func setupCaputureSession(){
        captureSession.sessionPreset = AVCaptureSession.Preset.photo
    }
    
    // カメラデバイスそのものを管理するオブジェクトの作成インカメ使わないしそこの分岐イランかもなぁ
    // メインカメラの管理オブジェクトの作成
    var mainCamera: AVCaptureDevice?
    // インカメの管理オブジェクトの作成
    var innerCamera: AVCaptureDevice?
    // 現在使用しているカメラデバイスの管理オブジェクトの作成
    var currentDevice: AVCaptureDevice?

    // デバイスの設定
    func setupDevice() {
        // カメラデバイスのプロパティ設定
        let deviceDiscoverySession = AVCaptureDevice.DiscoverySession(deviceTypes: [AVCaptureDevice.DeviceType.builtInWideAngleCamera], mediaType: AVMediaType.video, position: AVCaptureDevice.Position.unspecified)
        // プロパティの条件を満たしたカメラデバイスの取得
        let devices = deviceDiscoverySession.devices

        for device in devices {
            if device.position == AVCaptureDevice.Position.back {
                mainCamera = device
            } else if device.position == AVCaptureDevice.Position.front {
                innerCamera = device
            }
        }
        // 起動時のカメラを設定
        currentDevice = mainCamera
    }
    
    
    
    
    
    
    
    
    
    override var shouldAutorotate: Bool {
           get {
               return false
           }
       }

       // 画面の向きを指定
       override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
           get {
               return .portrait
           }
       }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
