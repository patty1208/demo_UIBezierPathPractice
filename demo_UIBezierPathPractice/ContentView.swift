//
//  ContentView.swift
//  demo_UIBezierPathPractice
//
//  Created by 林佩柔 on 2021/1/19.

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        // 粉紅兔兔外框
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 373, y: 108))
        path.addQuadCurve(to: CGPoint(x: 426, y: 23), controlPoint: CGPoint(x: 404, y: 1))
        path.addQuadCurve(to: CGPoint(x: 415, y: 105), controlPoint: CGPoint(x: 429, y: 52))
        path.addQuadCurve(to: CGPoint(x: 453, y: 117), controlPoint: CGPoint(x: 434, y: 107))
        path.addQuadCurve(to: CGPoint(x: 509, y: 33), controlPoint: CGPoint(x: 484, y: 12))
        path.addQuadCurve(to: CGPoint(x: 495, y: 130), controlPoint: CGPoint(x: 524, y: 62))
        path.addQuadCurve(to: CGPoint(x: 483, y: 289), controlPoint: CGPoint(x: 567, y: 224))
        path.addQuadCurve(to: CGPoint(x: 468, y: 402), controlPoint: CGPoint(x: 503,y: 382))
        path.addQuadCurve(to: CGPoint(x: 467, y: 440), controlPoint: CGPoint(x: 468,y: 425))
        path.addQuadCurve(to: CGPoint(x: 467, y: 440), controlPoint: CGPoint(x: 468,y: 425))
        path.addQuadCurve(to: CGPoint(x: 446, y: 436), controlPoint: CGPoint(x: 425,y: 450))
        path.addQuadCurve(to: CGPoint(x: 449, y: 408), controlPoint: CGPoint(x: 447,y: 420))
        path.addQuadCurve(to: CGPoint(x: 380, y: 407), controlPoint: CGPoint(x: 414,y: 415))
        path.addQuadCurve(to: CGPoint(x: 355, y: 438), controlPoint: CGPoint(x: 376,y: 440))
        path.addQuadCurve(to: CGPoint(x: 357, y: 429), controlPoint: CGPoint(x: 348,y: 432))
        path.addQuadCurve(to: CGPoint(x: 362, y: 391), controlPoint: CGPoint(x: 359,y: 420))
        path.addQuadCurve(to: CGPoint(x: 347, y: 299), controlPoint: CGPoint(x: 340,y: 386))
        path.addQuadCurve(to: CGPoint(x: 273, y: 296), controlPoint: CGPoint(x: 295,y: 298))
        path.addQuadCurve(to: CGPoint(x: 273, y: 296), controlPoint: CGPoint(x: 295,y: 298))
        path.addQuadCurve(to: CGPoint(x: 250, y: 291), controlPoint: CGPoint(x: 259,y: 307))
        path.addQuadCurve(to: CGPoint(x: 262, y: 284), controlPoint: CGPoint(x: 225,y: 284))
        path.addQuadCurve(to: CGPoint(x: 323, y: 276), controlPoint: CGPoint(x: 295,y: 281))
        path.addQuadCurve(to: CGPoint(x: 289, y: 167), controlPoint: CGPoint(x: 262,y: 253))
        path.addQuadCurve(to: CGPoint(x: 289, y: 167), controlPoint: CGPoint(x: 262,y: 253))
        path.addQuadCurve(to: CGPoint(x: 376, y: 109), controlPoint: CGPoint(x: 326,y: 107))

        
        // 粉紅兔兔手
        path.move(to: CGPoint(x: 484, y: 289))
        path.addQuadCurve(to: CGPoint(x: 493, y: 354), controlPoint: CGPoint(x: 496,y: 350))
        path.addQuadCurve(to: CGPoint(x: 479, y: 353), controlPoint: CGPoint(x: 474,y: 374))
        path.addQuadCurve(to: CGPoint(x: 476, y: 311), controlPoint: CGPoint(x: 479,y: 333))
        
        
        // 粉紅兔兔尾巴
        path.move(to: CGPoint(x: 490, y: 367))
        path.addQuadCurve(to: CGPoint(x: 533, y: 388), controlPoint: CGPoint(x: 534,y: 357))
        path.addQuadCurve(to: CGPoint(x: 485, y: 385), controlPoint: CGPoint(x: 525,y: 414))
        
        // 粉紅兔兔五官
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 351, y: 186))
        path1.addQuadCurve(to: CGPoint(x: 369, y: 181), controlPoint: CGPoint(x: 361,y: 181))

        path1.move(to: CGPoint(x: 430, y: 193))
        path1.addQuadCurve(to: CGPoint(x: 447, y: 205), controlPoint: CGPoint(x: 441,y: 198))

        path1.move(to: CGPoint(x: 387, y: 188))
        path1.addQuadCurve(to: CGPoint(x: 403, y: 192), controlPoint: CGPoint(x: 396,y: 190))

        path1.move(to: CGPoint(x: 396, y: 190))
        path1.addQuadCurve(to: CGPoint(x: 372, y: 211), controlPoint: CGPoint(x: 386,y: 232))

        path1.move(to: CGPoint(x: 392, y: 207))
        path1.addQuadCurve(to: CGPoint(x: 421, y: 219), controlPoint: CGPoint(x: 399,y: 233))

        path1.move(to: CGPoint(x: 385, y: 217))
        path1.addQuadCurve(to: CGPoint(x: 409, y: 224), controlPoint: CGPoint(x: 387,y: 255))

        path1.move(to: CGPoint(x: 391, y: 259))
        path1.addQuadCurve(to: CGPoint(x: 408, y: 263), controlPoint: CGPoint(x: 401,y: 261))
        
        // 腮紅
//        let path2 = UIBezierPath()
        let path2 = UIBezierPath(arcCenter: CGPoint(x: 316, y: 206), radius: 20, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        path2.move(to: CGPoint(x: 503, y: 231))
        path2.addArc(withCenter: CGPoint(x: 483, y: 231), radius: 20, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        
        // 白底
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 355, y: 229))
        path3.addQuadCurve(to: CGPoint(x: 436, y: 235), controlPoint: CGPoint(x: 404,y: 120))
        path3.addQuadCurve(to: CGPoint(x: 377, y: 266), controlPoint: CGPoint(x: 438,y: 277))
        path3.addQuadCurve(to: CGPoint(x: 355, y: 229), controlPoint: CGPoint(x: 350,y: 250))
        
        path3.move(to: CGPoint(x: 371, y: 331))
        path3.addQuadCurve(to: CGPoint(x: 441, y: 334), controlPoint: CGPoint(x: 405,y: 260))
        path3.addQuadCurve(to: CGPoint(x: 410, y: 378), controlPoint: CGPoint(x: 452,y: 375))
        path3.addQuadCurve(to: CGPoint(x: 371, y: 331), controlPoint: CGPoint(x: 365,y: 375))
        
        
        // 粉紅兔兔嘴巴
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 385, y: 217))
        path4.addQuadCurve(to: CGPoint(x: 409, y: 224), controlPoint: CGPoint(x: 387,y: 255))
        path4.addQuadCurve(to: CGPoint(x: 392, y: 207), controlPoint: CGPoint(x: 400,y: 224))
        
        path4.move(to: CGPoint(x: 392, y: 207))
        
        
        // p助 Piske 外框
        let pathP1 = UIBezierPath()
//        pathP1.move(to: CGPoint(x: 148, y: 342))
        
        pathP1.move(to: CGPoint(x: 149, y: 371))
        
        pathP1.addCurve(to: CGPoint(x: 273, y: 296), controlPoint1: CGPoint(x: 13, y: 255), controlPoint2: CGPoint(x: 227, y: 101))
        pathP1.addCurve(to: CGPoint(x: 287, y: 395), controlPoint1: CGPoint(x: 311, y: 309), controlPoint2: CGPoint(x: 317, y: 373))
        pathP1.addCurve(to: CGPoint(x: 256, y: 409), controlPoint1: CGPoint(x: 288, y: 415), controlPoint2: CGPoint(x: 269, y: 428))
        pathP1.addCurve(to: CGPoint(x: 204, y: 413), controlPoint1: CGPoint(x: 247, y: 413), controlPoint2: CGPoint(x: 226, y: 416))
        pathP1.addCurve(to: CGPoint(x: 169, y: 399), controlPoint1: CGPoint(x: 196, y: 435), controlPoint2: CGPoint(x: 166, y: 420))
        pathP1.move(to: CGPoint(x: 176, y: 383))
        pathP1.addCurve(to: CGPoint(x: 149, y: 369), controlPoint1: CGPoint(x: 167, y: 415), controlPoint2: CGPoint(x: 138, y: 410))
        // p助 Piske 左手
        pathP1.move(to: CGPoint(x: 279, y: 347))
        pathP1.addCurve(to: CGPoint(x: 303, y: 333), controlPoint1: CGPoint(x: 263, y: 390), controlPoint2: CGPoint(x: 310, y: 386))
        // p助 Piske 腳
        pathP1.move(to: CGPoint(x: 187, y: 425))
        pathP1.addCurve(to: CGPoint(x: 175, y: 443), controlPoint1: CGPoint(x: 183, y: 436), controlPoint2: CGPoint(x: 204, y: 443))
        pathP1.move(to: CGPoint(x: 270, y: 418))
        pathP1.addCurve(to: CGPoint(x: 277, y: 442), controlPoint1: CGPoint(x: 262, y: 433), controlPoint2: CGPoint(x: 258, y: 444))
        
        // p助 Piske 臉
        pathP1.move(to: CGPoint(x: 226, y: 263))
        pathP1.addCurve(to: CGPoint(x: 235, y: 327), controlPoint1: CGPoint(x: 191, y: 278), controlPoint2: CGPoint(x: 202, y: 326))
        
        // p助 Piske 眼
        pathP1.move(to: CGPoint(x: 154, y: 309))
        pathP1.addCurve(to: CGPoint(x: 154, y: 309), controlPoint1: CGPoint(x: 143, y: 309), controlPoint2: CGPoint(x: 152, y: 321))
        
        pathP1.move(to: CGPoint(x: 197, y: 276))
        pathP1.addCurve(to: CGPoint(x: 197, y: 276), controlPoint1: CGPoint(x: 186, y: 276), controlPoint2: CGPoint(x: 195, y: 288))
        
        // p助 Piske 嘴巴
        let pathP3 = UIBezierPath()
        pathP3.move(to: CGPoint(x: 184, y: 291))
        pathP3.addCurve(to: CGPoint(x: 184, y: 291), controlPoint1: CGPoint(x: 141, y: 295), controlPoint2: CGPoint(x: 180, y: 325))
        pathP3.move(to: CGPoint(x: 193, y: 300))
        pathP3.addCurve(to: CGPoint(x: 193, y: 300), controlPoint1: CGPoint(x: 155, y: 307), controlPoint2: CGPoint(x: 193, y: 331))
        
        // p助 Piske 腮紅
        let pathP2 = UIBezierPath(arcCenter: CGPoint(x: 139, y: 332), radius: 14, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        pathP2.addArc(withCenter: CGPoint(x: 230, y: 290), radius: 16, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)

        // p助外框
        let layerP1 = CAShapeLayer()
        layerP1.path = pathP1.cgPath
        layerP1.lineWidth = 5
        layerP1.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layerP1.fillColor = UIColor.clear.cgColor
        view.layer.addSublayer(layerP1)
        
        // p助腮紅
        let layerP2 = CAShapeLayer()
        layerP2.path = pathP2.cgPath
        layerP2.fillColor = UIColor(red: 243/255, green: 167/255, blue: 180/255, alpha: 0.7).cgColor
        view.layer.addSublayer(layerP2)
        
        // p助嘴
        let layerP3 = CAShapeLayer()
        layerP3.path = pathP3.cgPath
        layerP3.lineWidth = 5
        layerP3.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layerP3.fillColor = UIColor(red: 227/255, green: 202/255, blue: 117/255, alpha: 0.8).cgColor
        view.layer.addSublayer(layerP3)
        
        
        // 粉紅兔兔外框
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 5
        layer.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layer.fillColor = UIColor(red: 238/255, green: 192/255, blue: 201/255, alpha: 1).cgColor
        view.layer.addSublayer(layer)
        
        // 粉紅兔兔腮紅
        let layer2 = CAShapeLayer()
        layer2.path = path2.cgPath
        layer2.fillColor = UIColor(red: 243/255, green: 167/255, blue: 180/255, alpha: 1).cgColor
        
        // 粉紅兔兔白色肚肚鼻子
        let layer3 = CAShapeLayer()
        layer3.path = path3.cgPath
        layer3.lineWidth = 0
        layer3.strokeColor = UIColor.brown.cgColor
        layer3.fillColor = UIColor(red: 255/255, green: 253/255, blue: 254/255, alpha: 1).cgColor
        
        // 粉紅兔兔嘴巴顏色
        let layer4 = CAShapeLayer()
        layer4.path = path4.cgPath
        layer4.fillColor = UIColor(red: 266/255, green: 168/255, blue: 180/255, alpha: 0.8).cgColor
        
        // 粉紅兔兔五官
        let layer1 = CAShapeLayer()
        layer1.path = path1.cgPath
        layer1.lineWidth = 5
        layer1.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layer1.fillColor = UIColor.clear.cgColor
        
        
        func lineStyle(object: CAShapeLayer){
            object.lineCap = .round
            object.lineJoin = .round
        }
        
        lineStyle(object: layer)
        lineStyle(object: layer1)
        lineStyle(object: layer2)
        lineStyle(object: layer3)
        lineStyle(object: layer4)
        lineStyle(object: layerP1)
        lineStyle(object: layerP2)
        lineStyle(object: layerP3)
        
        
        // layer 縮放
        func scaleAndTran(object: CAShapeLayer){
            object.setAffineTransform(CGAffineTransform(translationX: -40, y: 125).scaledBy(x: 0.7, y: 0.7))
        }
        scaleAndTran(object: layer)
        scaleAndTran(object: layer1)
        scaleAndTran(object: layer2)
        scaleAndTran(object: layer3)
        scaleAndTran(object: layer4)
        scaleAndTran(object: layerP1)
        scaleAndTran(object: layerP2)
        scaleAndTran(object: layerP3)
        
        view.layer.addSublayer(layerP1)
        view.layer.addSublayer(layerP2)
        view.layer.addSublayer(layerP3)
        view.layer.addSublayer(layer)
        view.layer.addSublayer(layer2)
        view.layer.addSublayer(layer3)
        view.layer.addSublayer(layer4)
        view.layer.addSublayer(layer1)
        
        return view
    }
    func updateUIView(_ uiView: UIView, context: Context) {
    }
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
