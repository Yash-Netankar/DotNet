using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;


namespace ERPAssignmentModule
{
    public partial class CreateAssignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["loggedIN"]) != true)
            {
                Response.Write(Session["loggedIN"]);
                Response.Redirect("/");
            }
        }


        //RenderMethod ASS upload template
        //protected void GenerateBTN_Click(object sender, EventArgs e)
        //{
        //    string ObjAssTemp = "<fieldset class='mt-5 border p-4'> <legend class='float-none fs-5'>Assignment I</legend> <div class='row'> <div class='col d-flex justify-content-end'> <asp:Button ID='downloadTempAss1' runat='server' Text='Download Template' CssClass='btn btn-success' ValidationGroup='upload' /> </div> </div> <div class='row'> <div class='col col-md-6 col-sm-12'> <asp:TextBox ID='Ass1NoOfQuestions' runat='server' placeholder='No. of Questions' TextMode='Number' /> <asp:RequiredFieldValidator ID='Ass1NoOfQuestionsRFV' ControlToValidate='Ass1NoOfQuestions' runat='server' ErrorMessage='*' ForeColor='Red' Display='Dynamic' ValidationGroup='upload' /> <asp:RangeValidator ID='Ass1NoOfQuestionsRV' ControlToValidate='Ass1NoOfQuestions' ErrorMessage='Invalid No Of Questions' Display='Dynamic' ForeColor='Red' MinimumValue='1' MaximumValue='100' runat='server' Type='Integer' ValidationGroup='upload' /> </div> <div class='col col-md-6 col-sm-12'> <asp:FileUpload ID='assignment1File' runat='server' ToolTip='Upload Your Assignment File' Style='background: beige; cursor: pointer;' CssClass='form-control form-control-sm' /> <asp:RequiredFieldValidator ID='assignmentFileRV' ControlToValidate='assignment1File' runat='server' ErrorMessage='Select File' ForeColor='Red' Display='Dynamic' ValidationGroup='upload' /> </div> <div class='col-12 mt-3'> <asp:Panel ID='Assignment1Panel' runat='server' Visible='false'> <asp:Button ID='ass1UploadBtn' Text='Upload Assignment' runat='server' CssClass='btn btn-primary' />  <asp:Panel ID='Assignment1SubPanel' runat='server' Visible='false'> <asp:Button ID='ass1ExcelBtn' Text='Export To Excel' runat='server' CssClass='btn btn-primary' /> <asp:Button ID='ass1ModifyBtn' Text='Modify Questions' runat='server' CssClass='btn btn-primary' /> </asp:Panel> </asp:Panel> </div> </div></fieldset>";


        //    int objAss = Convert.ToInt32(objAssNo.Text);
        //    int subAss = Convert.ToInt32(subAssNo.Text);

        //    if(objAss >= 1 && subAss >= 1)
        //    {
        //        for(int i=0; i<objAss; i++)
        //        {
        //            FeildsetForObjAss.InnerHtml += ObjAssTemp;
        //        }
        //    }
        ////}









        private void RenderTemplateForObjectiveAssignment(int i)
        {
            string btnControl = "<asp:Button ID='downloadTempAss1' runat='server' Text='Download Template' CssClass='btn btn-success' ValidationGroup='upload' />";
            Panel pnl = new Panel();
            pnl.ID = "FeildsetForObjAssDemo" + i;

            string yourHTMLstring = "<fieldset class='mt-5 border p-4'> <legend class='float-none fs-5'>Assignment I</legend> <div class='row'> <div class='col d-flex justify-content-end' id='objAssTempBtn' runat='server'></div> </div></fieldset >";
            FeildsetForObjAssDemo.Controls.Add(new LiteralControl(yourHTMLstring));

            Button btn = new Button();
            btn.ID = "downloadTempAss" + i;
            btn.Text = "Download Template";
            btn.CssClass = "btn btn-success";
            btn.ValidationGroup = "upload";

            FeildsetForObjAssDemo.Visible = false;
            objAssTempBtn.Controls.Add(btn);
            FeildsetForObjAssDemo.Controls.Add(objAssTempBtn);
            FeildsetForObjAss.Controls.Add(pnl);
        }



        protected void generateBTN_Click1(object sender, EventArgs e)
        {
            int objAss = Convert.ToInt32(objAssNo.Text);
            int subAss = Convert.ToInt32(subAssNo.Text);

            if(objAss>=1 && subAss >= 1)
            {
                for(int i= 0; i < objAss; i++)
                {
                    RenderTemplateForObjectiveAssignment(i);
                }
            }
        }
    }
}