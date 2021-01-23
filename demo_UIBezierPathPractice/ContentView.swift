//
//  ContentView.swift
//  demo_UIBezierPathPractice
//
//  Created by 林佩柔 on 2021/1/19.

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        // 底圖對照: 繪圖製好時，再註解掉
        let image = UIImage(named: "粉紅兔兔.jpg")
        let imageView =  UIImageView(image: image)
        view.frame = imageView.frame
        view.addSubview(imageView)
        imageView.alpha = 0.2
        
        // 繪製:路徑
        // 粉紅兔兔外框
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 375, y: 109))
        path.addCurve(to: CGPoint(x: 415, y: 109), controlPoint1: CGPoint(x: 377, y: -8), controlPoint2: CGPoint(x: 456, y: -10))
        path.addCurve(to: CGPoint(x: 457, y: 117), controlPoint1: CGPoint(x: 406, y: 112), controlPoint2: CGPoint(x: 465, y: 112))
        path.addCurve(to: CGPoint(x: 497, y: 130), controlPoint1: CGPoint(x: 466, y: 0), controlPoint2: CGPoint(x: 545, y: 0))
        path.addCurve(to: CGPoint(x: 485, y: 287), controlPoint1: CGPoint(x: 570, y: 175), controlPoint2: CGPoint(x: 562, y: 280))
        path.addCurve(to: CGPoint(x: 470, y: 400), controlPoint1: CGPoint(x: 502, y: 345), controlPoint2: CGPoint(x: 505, y: 390))
        path.addCurve(to: CGPoint(x: 465, y: 441), controlPoint1: CGPoint(x: 470, y: 427), controlPoint2: CGPoint(x: 470, y: 435))
        path.addCurve(to: CGPoint(x: 448, y: 434), controlPoint1: CGPoint(x: 450, y: 447), controlPoint2: CGPoint(x: 437, y: 444))
        path.addCurve(to: CGPoint(x: 446, y: 409), controlPoint1: CGPoint(x: 447, y: 423), controlPoint2: CGPoint(x: 448, y: 420))
        path.addCurve(to: CGPoint(x: 380, y: 407), controlPoint1: CGPoint(x: 434, y: 407), controlPoint2: CGPoint(x: 396, y: 410))
        path.addCurve(to: CGPoint(x: 357, y: 437), controlPoint1: CGPoint(x: 381, y: 441), controlPoint2: CGPoint(x: 372, y: 446))
        path.addCurve(to: CGPoint(x: 361, y: 392), controlPoint1: CGPoint(x: 363, y: 432), controlPoint2: CGPoint(x: 358, y: 425))
        path.addCurve(to: CGPoint(x: 344, y: 298), controlPoint1: CGPoint(x: 342, y: 371), controlPoint2: CGPoint(x: 345, y: 365))
        path.addCurve(to: CGPoint(x: 273, y: 297), controlPoint1: CGPoint(x: 318, y: 299), controlPoint2: CGPoint(x: 293, y: 298))
        path.addCurve(to: CGPoint(x: 248, y: 295), controlPoint1: CGPoint(x: 264, y: 308), controlPoint2: CGPoint(x: 253, y: 308))
        path.addCurve(to: CGPoint(x: 259, y: 288), controlPoint1: CGPoint(x: 230, y: 295), controlPoint2: CGPoint(x: 226, y: 278))
        path.addCurve(to: CGPoint(x: 321, y: 277), controlPoint1: CGPoint(x: 278, y: 284), controlPoint2: CGPoint(x: 296, y: 281))
        path.addCurve(to: CGPoint(x: 375, y: 109), controlPoint1: CGPoint(x: 211, y: 215), controlPoint2: CGPoint(x: 322, y: 110))
        
        // 畫面粉紅兔兔右邊的手
        path.move(to: CGPoint(x: 485, y: 287))
        path.addCurve(to: CGPoint(x: 478, y: 350), controlPoint1: CGPoint(x: 517, y: 400), controlPoint2: CGPoint(x: 455, y: 370))
        path.addCurve(to: CGPoint(x: 473, y: 313), controlPoint1: CGPoint(x: 475, y: 331), controlPoint2: CGPoint(x: 478, y: 326))
        
        // 粉紅兔兔尾巴
        path.move(to: CGPoint(x: 497, y: 366))
        path.addCurve(to: CGPoint(x: 490, y: 391), controlPoint1: CGPoint(x: 560, y: 352), controlPoint2: CGPoint(x: 543, y: 432))
        path.close()
                
        // 粉紅兔兔五官
        let path1 = UIBezierPath()
        // 眼
        path1.move(to: CGPoint(x: 353, y: 185))
        path1.addQuadCurve(to: CGPoint(x: 367, y: 181), controlPoint: CGPoint(x: 361,y: 181))
        path1.move(to: CGPoint(x: 434, y: 195))
        path1.addQuadCurve(to: CGPoint(x: 445, y: 205), controlPoint: CGPoint(x: 441,y: 198))
        // 嘴
        path1.move(to: CGPoint(x: 390, y: 188))
        path1.addQuadCurve(to: CGPoint(x: 401, y: 191), controlPoint: CGPoint(x: 396,y: 190))

        path1.move(to: CGPoint(x: 395, y: 190))
        path1.addCurve(to: CGPoint(x: 373, y: 212), controlPoint1: CGPoint(x: 398, y: 223), controlPoint2: CGPoint(x: 378, y: 224))

        path1.move(to: CGPoint(x: 395, y: 207))
        path1.addCurve(to: CGPoint(x: 420, y: 219), controlPoint1: CGPoint(x: 399, y: 226), controlPoint2: CGPoint(x: 413, y: 228))

        path1.move(to: CGPoint(x: 385, y: 221))
        path1.addCurve(to: CGPoint(x: 411, y: 227), controlPoint1: CGPoint(x: 387, y: 252), controlPoint2: CGPoint(x: 409, y: 251))

        path1.move(to: CGPoint(x: 394, y: 259))
        path1.addQuadCurve(to: CGPoint(x: 406, y: 261), controlPoint: CGPoint(x: 401,y: 261))
        path1.close()
        
        // 腮紅
        let path2 = UIBezierPath(arcCenter: CGPoint(x: 316, y: 208), radius: 22, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        path2.move(to: CGPoint(x: 510, y: 232))
        path2.addArc(withCenter: CGPoint(x: 483, y: 232), radius: 27, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        path2.close()
        
        // 白底
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: 358, y: 229))
        path3.addCurve(to: CGPoint(x: 437, y: 229), controlPoint1: CGPoint(x: 385, y: 112), controlPoint2: CGPoint(x: 444, y: 200))
        path3.addCurve(to: CGPoint(x: 358, y: 229), controlPoint1: CGPoint(x: 440, y: 295), controlPoint2: CGPoint(x: 350, y: 271))
        
        path3.move(to: CGPoint(x: 371, y: 333))
        path3.addCurve(to: CGPoint(x: 440, y: 334), controlPoint1: CGPoint(x: 377, y: 283), controlPoint2: CGPoint(x: 428, y: 268))
        path3.addCurve(to: CGPoint(x: 371, y: 333), controlPoint1: CGPoint(x: 442, y: 405), controlPoint2: CGPoint(x: 368, y: 385))
        path3.close()
        
        // 粉紅兔兔的嘴巴顏色
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 385, y: 221))
        path4.addCurve(to: CGPoint(x: 411, y: 225), controlPoint1: CGPoint(x: 387, y: 252), controlPoint2: CGPoint(x: 409, y: 251))
        path4.addCurve(to: CGPoint(x: 395, y: 207), controlPoint1: CGPoint(x: 413, y: 227), controlPoint2: CGPoint(x: 399, y: 225))
        path4.addCurve(to: CGPoint(x: 385, y: 221), controlPoint1: CGPoint(x: 393, y: 208), controlPoint2: CGPoint(x: 395, y: 215))
        path4.close()
        
        // p助外框
        let pathP1 = UIBezierPath()
        
        pathP1.move(to: CGPoint(x: 148, y: 372))
        pathP1.addCurve(to: CGPoint(x: 273, y: 296), controlPoint1: CGPoint(x: 15, y: 275), controlPoint2: CGPoint(x: 215, y: 123))
        pathP1.addCurve(to: CGPoint(x: 289, y: 395), controlPoint1: CGPoint(x: 305, y: 315), controlPoint2: CGPoint(x: 310, y: 373))
        pathP1.addCurve(to: CGPoint(x: 255, y: 410), controlPoint1: CGPoint(x: 290, y: 417), controlPoint2: CGPoint(x: 269, y: 428))
        pathP1.addCurve(to: CGPoint(x: 204, y: 413), controlPoint1: CGPoint(x: 247, y: 411), controlPoint2: CGPoint(x: 226, y: 413))
        pathP1.addCurve(to: CGPoint(x: 167, y: 399), controlPoint1: CGPoint(x: 185, y: 430), controlPoint2: CGPoint(x: 163, y: 420))
        pathP1.move(to: CGPoint(x: 174, y: 380))
        pathP1.addCurve(to: CGPoint(x: 148, y: 372), controlPoint1: CGPoint(x: 175, y: 408), controlPoint2: CGPoint(x: 145, y: 408))
        
        // 畫面p助的右邊手
        pathP1.move(to: CGPoint(x: 280, y: 346))
        pathP1.addCurve(to: CGPoint(x: 299, y: 333), controlPoint1: CGPoint(x: 270, y: 380), controlPoint2: CGPoint(x: 300, y: 390))
        
        // p助腳
        pathP1.move(to: CGPoint(x: 186, y: 425))
        pathP1.addCurve(to: CGPoint(x: 179, y: 440), controlPoint1: CGPoint(x: 183, y: 436), controlPoint2: CGPoint(x: 200, y: 440))
        pathP1.move(to: CGPoint(x: 273, y: 419))
        pathP1.addCurve(to: CGPoint(x: 275, y: 440), controlPoint1: CGPoint(x: 267, y: 433), controlPoint2: CGPoint(x: 265, y: 443))
        
        // p助被戳的臉
        pathP1.move(to: CGPoint(x: 225, y: 263))
        pathP1.addCurve(to: CGPoint(x: 235, y: 325), controlPoint1: CGPoint(x: 195, y: 290), controlPoint2: CGPoint(x: 215, y: 320))
        
        // p助的眼
        pathP1.move(to: CGPoint(x: 152, y: 308))
        pathP1.addArc(withCenter: CGPoint(x: 152, y: 308), radius: 3.5, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        pathP1.move(to: CGPoint(x: 196, y: 277))
        pathP1.addArc(withCenter: CGPoint(x: 196, y: 277), radius: 3.5, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        pathP1.close()
        
        // p助的嘴巴
        let pathP3 = UIBezierPath()
        pathP3.move(to: CGPoint(x: 165, y: 295))
        pathP3.addCurve(to: CGPoint(x: 184, y: 289), controlPoint1: CGPoint(x: 164, y: 287), controlPoint2: CGPoint(x: 179, y: 280))
        pathP3.addCurve(to: CGPoint(x: 165, y: 295), controlPoint1: CGPoint(x: 188, y: 300), controlPoint2: CGPoint(x: 165, y: 302))
    
        pathP3.move(to: CGPoint(x: 178, y: 310))
        pathP3.addCurve(to: CGPoint(x: 195, y: 303), controlPoint1: CGPoint(x: 170, y: 309), controlPoint2: CGPoint(x: 186, y: 290))
        pathP3.addCurve(to: CGPoint(x: 178, y: 310), controlPoint1: CGPoint(x: 196, y: 313), controlPoint2: CGPoint(x: 182, y: 314))
        pathP3.close()
        
        // p助的腮紅
        let pathP2 = UIBezierPath(arcCenter: CGPoint(x: 139, y: 332), radius: 14, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        pathP2.move(to: CGPoint(x: 248, y: 290))
        pathP2.addArc(withCenter: CGPoint(x: 230, y: 292), radius: 18, startAngle: 0, endAngle: CGFloat.pi*2, clockwise: true)
        pathP2.close()
        
        // 繪製: 圖層layer
        
        imageView.alpha = 0
        
        // p助外框
        let layerP1 = CAShapeLayer()
        layerP1.path = pathP1.cgPath
        layerP1.lineWidth = 5
        layerP1.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layerP1.fillColor = UIColor.clear.cgColor
        layerP1.lineCap = .round
        layerP1.lineJoin = .round
        view.layer.addSublayer(layerP1)
        
        // p助腮紅
        let layerP2 = CAShapeLayer()
        layerP2.path = pathP2.cgPath
        layerP2.fillColor = UIColor(red: 243/255, green: 167/255, blue: 180/255, alpha: 0.7).cgColor
        layerP2.lineCap = .round
        layerP2.lineJoin = .round
        view.layer.addSublayer(layerP2)
        
        // p助嘴
        let layerP3 = CAShapeLayer()
        layerP3.path = pathP3.cgPath
        layerP3.lineWidth = 5
        layerP3.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layerP3.fillColor = UIColor(red: 227/255, green: 202/255, blue: 117/255, alpha: 0.8).cgColor
        layerP3.lineCap = .round
        layerP3.lineJoin = .round
        view.layer.addSublayer(layerP3)
        
        // 粉紅兔兔外框
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 5
        layer.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layer.fillColor = UIColor(red: 238/255, green: 192/255, blue: 201/255, alpha: 1).cgColor
        layer.lineCap = .round
        layer.lineJoin = .round
        view.layer.addSublayer(layer)
        
        // 粉紅兔兔腮紅
        let layer2 = CAShapeLayer()
        layer2.path = path2.cgPath
        layer2.fillColor = UIColor(red: 243/255, green: 167/255, blue: 180/255, alpha: 1).cgColor
        layer2.lineCap = .round
        layer2.lineJoin = .round
        view.layer.addSublayer(layer2)
        
        // 粉紅兔兔白色肚肚鼻子
        let layer3 = CAShapeLayer()
        layer3.path = path3.cgPath
        layer3.fillColor = UIColor(red: 255/255, green: 253/255, blue: 254/255, alpha: 1).cgColor
        layer3.lineCap = .round
        layer3.lineJoin = .round
        view.layer.addSublayer(layer3)
        
        // 粉紅兔兔嘴巴顏色
        let layer4 = CAShapeLayer()
        layer4.path = path4.cgPath
        layer4.fillColor = UIColor(red: 266/255, green: 168/255, blue: 180/255, alpha: 0.8).cgColor
        layer4.lineCap = .round
        layer4.lineJoin = .round
        view.layer.addSublayer(layer4)
        
        // 粉紅兔兔五官
        let layer1 = CAShapeLayer()
        layer1.path = path1.cgPath
        layer1.lineWidth = 5
        layer1.strokeColor = UIColor(red: 66/255, green: 38/255, blue: 28/255, alpha: 0.8).cgColor
        layer1.fillColor = UIColor.clear.cgColor
        layer1.lineCap = .round
        layer1.lineJoin = .round
        view.layer.addSublayer(layer1)
        
        // layer 縮放
        func scaleAndTran(object: CAShapeLayer){
            object.setAffineTransform(CGAffineTransform(translationX: -40, y: 125).scaledBy(x: 0.7, y: 0.7))
        }


        let objects = [layer, layer1, layer2, layer3, layer4, layerP1, layerP2, layerP3]
        for object in objects {
            scaleAndTran(object: object)
        }
        
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
