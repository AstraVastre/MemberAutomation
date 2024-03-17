using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MemberAutomationSystem;

namespace MemberAutomationSystem.Pages
{
    public partial class memberRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_save_Click(object sender, EventArgs e)
        {

            //Kayıt işlemleri
            transactions transactions = new transactions();

            
            if(txt_tcno.Text.Length != 11)
            {
                
                    lbl_warning.Text = "Lütfen Geçerli Bir Tc Giriniz!!";
                    lbl_warning.Visible = true;
                return;
                }
            //Textboxlara boş değer girilip girilmediğini kontrol etme
            if (!string.IsNullOrEmpty(txt_name.Text) && !string.IsNullOrEmpty(txt_surname.Text) && !string.IsNullOrEmpty(txt_tcno.Text)&&!string.IsNullOrEmpty(txt_doBirth.Text)&& !string.IsNullOrEmpty(txt_doBirth.Text))
            {
                string name = txt_name.Text.ToUpper().Trim();
                string surname = txt_surname.Text.ToUpper().Trim();
                string tc = txt_tcno.Text.Trim();
                DateTime doBirth = DateTime.Parse(txt_doBirth.Text);  
               lbl_warning.Visible = false;
                var control = transactions.memberControl(tc);
                if (control==false) {
                    try
                    {
                      var savingcontrol= transactions.memberRegistration(name, surname, tc, doBirth);
                        if (savingcontrol)
                        {
                            lbl_warning.Text = "Personel Kayıdı Başarılı";
                            lbl_warning.Visible = true;
                        }
                        else
                        {
                            lbl_warning.Text = "Bir Hata Meydana Geldi!!";
                            lbl_warning.Visible = true;
                        }
                       
                    }
                    catch(Exception x)
                    {

                        lbl_warning.Text = "Bir Hata Meydana Geldi!!";
                        lbl_warning.Visible = true;
                        Console.WriteLine(x.Message);

                    }

                }
                else
                {
                    lbl_warning.Text = "Bu Kişi Zaten Sistemde Kayıtlı!!";
                    lbl_warning.Visible = true;
                }
            }
            else
            {
                lbl_warning.Text = "Lütfen Tüm Alanları Doldurunuz!!";
                lbl_warning.Visible = true;
              
            }


           

            
           
        }

        protected void txt_tcno_TextChanged(object sender, EventArgs e)
        {

        }
    }
}