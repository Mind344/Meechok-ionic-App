import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { ActionSheetController } from 'ionic-angular';
import { AlertController } from 'ionic-angular';

@IonicPage()
@Component({
  selector: 'page-register',
  templateUrl: 'register.html',
})
export class RegisterPage {

  constructor(public navCtrl: NavController, public navParams: NavParams, public actionSheetCtrl: ActionSheetController, public alertCtrl: AlertController) {
  }

  ionViewDidLoad() {
    console.log('ionViewDidLoad RegisterPage');
  }
  proPic() {
    let actionSheet = this.actionSheetCtrl.create({
      title: 'เพิ่มรูปโปรไฟล์',
      buttons: [
        {
          text: 'เลือกรูปจากคลัง',
          role: 'destructive',
          handler: () => {
            console.log('Destructive clicked');
          }
        }, {
          text: 'ถ่ายรูป',
          handler: () => {
            console.log('Archive clicked');
          }
        }, {
          text: 'ยกเลิก',
          role: 'cancel',
          handler: () => {
            console.log('Cancel clicked');
          }
        }
      ]
    });
    actionSheet.present();
  }
  confirm() {
    let alert = this.alertCtrl.create({
      // if(condition) {
        title: '<center style="font-family: \'bangna\';">\
              <img src="img/smile1.png" width="50">\n \
              </center>\
              ',
          subTitle: ' <center>ยินดีต้อนรับสมาชิก<br> \
                  <h3>มีโชคพลาซ่า</h3>\
                  </center>\
                ',
            buttons: ['ตกลง']
      // }else{

        // title: '<center style="font-family: \'bangna\';">\
        //         <img src="img/sad1.png" width="50">\n \
        //         </center>\
        //         ',
        // subTitle: ' <center>บันทึกข้อมูลไม่สำเร็จ<br> \
        //         กรุณาตรวจสอบข้อมูลอีกครั้ง\
        //         </center>\
        //   ',
        // buttons: ['ตกลง','ยกเลิก']
      

    });
    alert.present();
  }

}
