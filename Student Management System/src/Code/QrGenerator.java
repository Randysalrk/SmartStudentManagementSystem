/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

package Code;

import java.io.File;  
import java.io.IOException;  
import java.util.HashMap;  
import java.util.Map;  
import com.google.zxing.BarcodeFormat;  
import com.google.zxing.EncodeHintType;  
import com.google.zxing.MultiFormatWriter;  
import com.google.zxing.NotFoundException;  
import com.google.zxing.WriterException;  
import com.google.zxing.client.j2se.MatrixToImageWriter;  
import com.google.zxing.common.BitMatrix;  
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.awt.Image;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.ImageIcon;

public class QrGenerator extends JFrame{
    private Image generateQrCode(String data,int h, int w)throws WriterException, IOException {
        BitMatrix matrix = new MultiFormatWriter().encode(new String(data.getBytes("UTF-8"), "UTF-8"), BarcodeFormat.QR_CODE, w, h);  
        BufferedImage qrImage = MatrixToImageWriter.toBufferedImage(matrix);
        Image image = qrImage.getScaledInstance(-1, -1, 1);
        return image;
    }
    
    public void showQrCode(String qrContent){
        JPanel panel =  new JPanel(){
            @Override
            protected void paintComponent(Graphics g){
                super.paintComponent(g);
                Image qrImage = null;
                try{
                    qrImage = generateQrCode(qrContent,200, 200);
                }
                catch(Exception ex){
                    System.out.print("QR cod egeneration Failed." + ex.getMessage());
                } 
                if(qrImage != null){
                    g.drawImage(qrImage,0, 0, this);
                }
            }
        };
        this.getContentPane().add(panel);
        this.setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setSize(200,225);
        setLocationRelativeTo(null);
        setVisible(true);
    }
    
    
}
