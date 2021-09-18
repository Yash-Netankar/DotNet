using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                welcome.Text = "Welcome";
            else
                welcome.Text = "Calculator";
        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            screen.Text += Button1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            screen.Text += Button2.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            screen.Text += Button3.Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            screen.Text += Button4.Text;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            screen.Text += Button5.Text;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            screen.Text += Button6.Text;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            screen.Text += Button7.Text;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            screen.Text += Button8.Text;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            screen.Text += Button9.Text;
        }

        //Cancel
        protected void Cancel_Click(object sender, EventArgs e)
        {
            char[] arr = screen.Text.ToCharArray();
            screen.Text = "";

            for (int i = 0; i<arr.Length-1; i++)
                screen.Text += arr[i].ToString();

        }

        protected void Button0_Click(object sender, EventArgs e)
        {
            screen.Text += Button0.Text;
        }






        //Equal
        protected void Equal_Click(object sender, EventArgs e)
        {
            double result = 0;
            

            switch (ViewState["op"].ToString())
            {
                case "add":
                    result = (Convert.ToDouble(hiddenF.Value)) + (Convert.ToDouble(screen.Text));
                    screen.Text = hiddenF.Value = result.ToString();
                    break;

                case "sub":
                    result = (Convert.ToDouble(hiddenF.Value)) - (Convert.ToDouble(screen.Text));
                    screen.Text = hiddenF.Value = result.ToString();
                    break;

                case "mul":
                    result = (Convert.ToDouble(hiddenF.Value)) * (Convert.ToDouble(screen.Text));
                    screen.Text = hiddenF.Value = result.ToString();
                    break;

                case "div":
                    result = (Convert.ToDouble(hiddenF.Value)) / (Convert.ToDouble(screen.Text));
                    screen.Text = hiddenF.Value = result.ToString();
                    break;
            }
        }   






        //Operations
        protected void Add_Btn_Click(object sender, EventArgs e)
        {
            double scr_data = Convert.ToDouble(screen.Text);
            if (scr_data >= 0)
                hiddenF.Value = screen.Text;
            else hiddenF.Value = 0.ToString();
            screen.Text = "";
            ViewState["op"] = "add";
        }

        protected void Sub_Btn_Click(object sender, EventArgs e)
        {
            if(Convert.ToDouble(hiddenF.Value) > 0 == false)
                hiddenF.Value = screen.Text;
            ViewState["op"] = "sub";
            screen.Text = "";
        }

        protected void Mul_Btn_Click(object sender, EventArgs e)
        {
            if (Convert.ToDouble(hiddenF.Value) > 0 == false)
                hiddenF.Value = screen.Text;
            ViewState["op"] = "mul";
            screen.Text = "";
        }

        protected void Div_Btn_Click(object sender, EventArgs e)
        {
            if (Convert.ToDouble(hiddenF.Value) > 0 == false)
                hiddenF.Value = screen.Text;
            ViewState["op"] = "div";
            screen.Text = "";
        }
    }
}