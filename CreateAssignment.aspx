<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.Master" AutoEventWireup="true" CodeBehind="CreateAssignment.aspx.cs" Inherits="ERPAssignmentModule.CreateAssignment" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Create Assignment</title>
    <link rel="stylesheet" href="./stylesheets/pages/create.css" />
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h3 class="text-center pt-2"><u>Create Assignments</u></h3>

    <div class="container border p-5 mt-5">

        <%--program & Sem DDL--%>
        <div class="row">
            <div class="col col-md-6 col-sm-12">
                <asp:DropDownList ID="programDDL" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="--Select Program--" Value="0" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="programDDLRV" ControlToValidate="programDDL" runat="server" ErrorMessage="Select Proper program" InitialValue="0" ForeColor="Red" Display="Dynamic" ValidationGroup="upload"/>
            </div>
            <div class="col col-md-6 col-sm-12">
                <asp:DropDownList ID="semDDL" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="--Select Semester--" Value="0" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="semDDLRV" ControlToValidate="semDDL" runat="server" ErrorMessage="Select Proper Semester" InitialValue="0" ForeColor="Red" Display="Dynamic" ValidationGroup="upload"/>
            </div>

        </div>



        <%--Batch & Cource DDL--%>
        <div class="row mt-4">
            <div class="col col-md-6 col-sm-12">
                <asp:DropDownList ID="batchDDL" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="--Select Batch--" Value="0" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="batchDDLRV" ControlToValidate="batchDDL" runat="server" ErrorMessage="Select Proper Batch" InitialValue="0" ForeColor="Red" Display="Dynamic" ValidationGroup="upload"/>
            </div>
            <div class="col col-md-6 col-sm-12">
                <asp:DropDownList ID="CourceDDL" runat="server" CssClass="dropdown">
                    <asp:ListItem Text="--Select Cource--" Value="0" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="CourceDDLRV" ControlToValidate="CourceDDL" runat="server" ErrorMessage="Select Proper Cource" InitialValue="0" ForeColor="Red" Display="Dynamic" ValidationGroup="upload"/>
            </div>
        </div>


        <%--assignment types group--%>
        <div class="row mt-4">
            <div class="row">
                <div class="col input-group input-group-sm mb-3">
                    <span class="input-group-text">Objective Assignment</span>
                    <asp:TextBox ID="objAssNo" runat="server" CssClass="col-4 form-control" TextMode="Number" placeholder="Enter No of Assignments" />
                    <asp:RequiredFieldValidator ID="objAssNoRFV" ControlToValidate="objAssNo" runat="server" ForeColor="Red" Display="Dynamic" Text="*" ValidationGroup="upload"/>
                </div>

                <div class="col input-group input-group-sm mb-3 mr-2">
                    <span class="input-group-text">Subjective Assignment</span>
                    <asp:TextBox ID="subAssNo" runat="server" CssClass="col-4 form-control" TextMode="Number" placeholder="Enter No of Assignments" />
                    <asp:RequiredFieldValidator ID="subAssNoRFV" ControlToValidate="subAssNo" runat="server" ForeColor="Red" Display="Dynamic" Text="*" ValidationGroup="upload"/>
                </div>
            </div>

            <div class="row">
                <asp:Button ID="generateBTN" runat="server" CssClass="col-3 btn btn btn-outline-success" Text="Generate" OnClick="generateBTN_Click1"/>
            </div>
        </div>





        <%--FEILDSET  FOR  Objective ASSIGNMENT--%>
        <%--<div id="FeildsetForObjAss" runat="server">
            <%--<fieldset class='mt-5 border p-4'><legend class='float-none fs-5'>Assignment I</legend>
                <div class='row'>
                    <div class='col d-flex justify-content-end'>
                        <asp:Button ID='downloadTempAss1' runat='server' Text='Download Template' CssClass='btn btn-success' ValidationGroup='upload' />
                    </div>
                </div>
                <div class='row'>
                    <div class='col col-md-6 col-sm-12'>
                        <asp:TextBox ID='Ass1NoOfQuestions' runat='server' placeholder='No. of Questions' TextMode='Number' />
                        <asp:RequiredFieldValidator ID='Ass1NoOfQuestionsRFV' ControlToValidate='Ass1NoOfQuestions' runat='server' ErrorMessage='*' ForeColor='Red' Display='Dynamic' ValidationGroup='upload' />
                        <asp:RangeValidator ID='Ass1NoOfQuestionsRV' ControlToValidate='Ass1NoOfQuestions' ErrorMessage='Invalid No Of Questions' Display='Dynamic' ForeColor='Red' MinimumValue='1' MaximumValue='100' runat='server' Type='Integer' ValidationGroup='upload' />
                    </div>
                    <div class='col col-md-6 col-sm-12'>
                        <asp:FileUpload ID='assignment1File' runat='server' ToolTip='Upload Your Assignment File' Style='background: beige; cursor: pointer;' CssClass='form-control form-control-sm' />
                        <asp:RequiredFieldValidator ID='assignmentFileRV' ControlToValidate='assignment1File' runat='server' ErrorMessage='Select File' ForeColor='Red' Display='Dynamic' ValidationGroup='upload' />
                    </div>
                    <div class='col-12 mt-3'>
                        <asp:Panel ID='Assignment1Panel' runat='server' Visible='false'>
                            <asp:Button ID='ass1UploadBtn' Text='Upload Assignment' runat='server' CssClass='btn btn-primary' />
                            <asp:Panel ID='Assignment1SubPanel' runat='server' Visible='false'>
                                <asp:Button ID='ass1ExcelBtn' Text='Export To Excel' runat='server' CssClass='btn btn-primary' />
                                <asp:Button ID='ass1ModifyBtn' Text='Modify Questions' runat='server' CssClass='btn btn-primary' />
                            </asp:Panel>
                        </asp:Panel>
                    </div>
                </div>
            </fieldset>
           </div>--%>

    <div id="FeildsetForObjAss" runat="server">
        <asp:Panel ID="FeildsetForObjAssDemo" runat="server">
            <fieldset class='mt-5 border p-4'>
                <legend class='float-none fs-5'>Assignment I</legend>
                <div class='row'>
                    <div class='col d-flex justify-content-end' id="objAssTempBtn" runat="server">
                        <%--<asp:Button ID='downloadTempAss1' runat='server' Text='Download Template' CssClass='btn btn-success' ValidationGroup='upload' />--%>
                    </div>
                </div>
                <div class='row'>
                    <div class='col col-md-6 col-sm-12' id="objAssNoOfQuestions" runat="server">
                        <asp:TextBox ID='Ass1NoOfQuestions' runat='server' placeholder='No. of Questions' TextMode='Number' />
                        <asp:RequiredFieldValidator ID='Ass1NoOfQuestionsRFV' ControlToValidate='Ass1NoOfQuestions' runat='server' ErrorMessage='*' ForeColor='Red' Display='Dynamic' ValidationGroup='upload' />
                        <asp:RangeValidator ID='Ass1NoOfQuestionsRV' ControlToValidate='Ass1NoOfQuestions' ErrorMessage='Invalid No Of Questions' Display='Dynamic' ForeColor='Red' MinimumValue='1' MaximumValue='100' runat='server' Type='Integer' ValidationGroup='upload' />
                    </div>
                    <div class='col col-md-6 col-sm-12' id="objAssFile" runat="server">
                        <asp:FileUpload ID='assignment1File' runat='server' ToolTip='Upload Your Assignment File' Style='background: beige; cursor: pointer;' CssClass='form-control form-control-sm' />
                        <asp:RequiredFieldValidator ID='assignmentFileRV' ControlToValidate='assignment1File' runat='server' ErrorMessage='Select File' ForeColor='Red' Display='Dynamic' ValidationGroup='upload' />
                    </div>
                    <div class='col-12 mt-3'>
                        <asp:Panel ID='Assignment1Panel' runat='server' Visible='false'>
                            <asp:Button ID='ass1UploadBtn' Text='Upload Assignment' runat='server' CssClass='btn btn-primary' />
                            <asp:Panel ID='Assignment1SubPanel' runat='server' Visible='false'>
                                <asp:Button ID='ass1ExcelBtn' Text='Export To Excel' runat='server' CssClass='btn btn-primary' />
                                <asp:Button ID='ass1ModifyBtn' Text='Modify Questions' runat='server' CssClass='btn btn-primary' />
                            </asp:Panel>
                        </asp:Panel>
                    </div>
                </div>
            </fieldset>
        </asp:Panel>
    </div>



    <%--FEILDSET  FOR Subjective ASSIGNMENT --%>
        <div id="FeildSetForSubAss">
            <fieldset class="mt-5 border p-4">
                <legend class="float-none fs-5">Assignment II</legend>

                <%--download temp btn--%>
                <div class="row">
                    <div class="col d-flex justify-content-end">
                        <asp:Button ID="downloadTempAss2" runat="server" Text="Download Template" CssClass="btn btn-success"  ValidationGroup="upload"/>
                    </div>
                </div>

                <%--no of question--%>
                <div class="row">
                    <div class="col col-md-6 col-sm-12">
                        <asp:TextBox ID="Ass2NoOfQuestions" runat="server" placeholder="No. of Questions" TextMode="Number" />
                        <asp:RequiredFieldValidator ID="Ass2NoOfQuestionsRFV" ControlToValidate="Ass2NoOfQuestions" runat="server" ErrorMessage="*" ForeColor="Red" Display="Dynamic" ValidationGroup="upload" />
                        <asp:RangeValidator ID="Ass2NoOfQuestionsRV" ControlToValidate="Ass2NoOfQuestions" ErrorMessage="Invalid No Of Questions" Display="Dynamic" ForeColor="Red" MaximumValue="100" MinimumValue="1" runat="server" Type="Integer" ValidationGroup="upload" />
                    </div>

                    <%--file--%>
                    <div class="col col-md-6 col-sm-12">
                        <asp:FileUpload ID="assignment2File" runat="server" ToolTip="Upload Your Assignment File" Style="background: beige; cursor: pointer;" CssClass="form-control form-control-sm" />
                        <asp:RequiredFieldValidator ID="assignment2FileRFV" ControlToValidate="assignment2File" runat="server" ErrorMessage="Select File" ForeColor="Red" Display="Dynamic" ValidationGroup="upload" />
                    </div>

                    <%--buttons enable when file choosed--%>
                    <div class="col-12 mt-3">
                        <asp:Panel ID="Assignment2Panel" runat="server" Visible="false">
                            <asp:Button ID="ass2UploadBtn" Text="Upload Assignment" runat="server" CssClass="btn btn-primary" />
                            <%--panel options to display after file is uploaded in DB--%>
                            <asp:Panel ID="Assignment2SubPanel" runat="server" Visible="false">
                                <asp:Button ID="ass2ExcelBtn" Text="Export To Excel" runat="server" CssClass="btn btn-primary" />
                                <asp:Button ID="ass2ModifyBtn" Text="Modify Questions" runat="server" CssClass="btn btn-primary" />
                            </asp:Panel>
                        </asp:Panel>
                    </div>
                </div>
            </fieldset>
        </div>


        <hr class="mt-5" />
        <hr class="" />


        <%--CREATE ASSIGNMENT Section 2--%>
                <%--Assignment Name--%>
        





    </div>
</asp:Content>





<%--script--%>
<asp:Content ContentPlaceHolderID="Jscript" runat="server">
    <script async>

        const FeildsetForObjAss = document.getElementById("FeildsetForObjAss");
        const FeildsetForSubAss = document.getElementById("FeildsetForSubAss");
        const generateBtn = document.querySelector("#generateBTN");
        const objAssNo = document.getElementById("ContentPlaceHolder1_objAssNo");
        const subAssNo = document.querySelector("#ContentPlaceHolder1_subAssNo");

        //rendering tamplate for objective assignment
        const generateObjectiveAssignment = () => {
            const str = ``

            FeildsetForObjAss.insertAdjacentHTML("beforeend", str);
        }

        //rendering tamplate for subjective assignment

        if (objAssNo.value >= 1 & subAssNo.value >= 1)
        {
            generateBtn.addEventListener("click", () =>
            {
                for (let i = 0; i < objAssNo.value; i++)
                {
                    generateObjectiveAssignment();
                }
                for (let i = 0; i < subAssNo.value; i++) {
                    //generateSubjectiveAssignment();
                }
            })
        }

    </script>
</asp:Content>
