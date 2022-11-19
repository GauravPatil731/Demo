<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Crud.aspx.cs" Inherits="Asp.net_JqueryAjaxMethod.Crud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

    <script type="text/javascript">
        $(function () {
            $('#btnSave').click(function () {
                debugger;
                //var sname= $('#txtname').val();
                //var address = $('#txtaddress').val();
                //var Mobile = $('#txtMobile').val();
                //var pincode = $('#txtpincode').val();
                $.ajax({
                    type: "POST",
                    url: "Crud.aspx/Crudinsert",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    data: '{name: "' + $('#txtname').val() + '" , address:  "' + $('#txtaddress').val() + '", Mobile:  "' + $('#txtMobile').val() + '" , pincode:  "' + $('#txtpincode').val() +'"}',
                    success: function (data) {
                        alert('Data Save successfully');
                    },
                    Error: function (error) {
                        alert('Data Save error');
                    }
                });
            });
        });
    </script>

    <style>
        .grid-container {
            display: grid;
            grid-template-columns: repeat(1,auto);
            border: 1px solid rgb(0, 0, 0);
            border-radius: 15px;
            width: 20rem;
            /*background-color: #2196F3;*/
            /*padding: 10px;*/
        }

        .grid-item {
            /*background-color: rgba(255, 255, 255, 0.8);*/
            /*border: 1px solid rgb(0, 0, 0);*/
            padding: 20px;
            /*font-size: 30px;*/
            /*text-align: center;*/
        }

        input[type=text], select, textarea {
            width: 90%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            resize: vertical;
        }

        #divbtn {
            justify-self: flex-end;
        }

        #btnSave {
            font-size: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="grid-container">
            <div class="grid-item">
                Enter Name
            <input type="text" name="sname" placeholder="Name" id="txtname" />
            </div>
            <div class="grid-item">
                Enter Address
            <input type="text" name="address" placeholder="Address" id="txtaddress" />
            </div>
            <div class="grid-item">
                Enter Mobile
            <input type="text" name="Mobile" placeholder="Mobile" id="txtMobile" />
            </div>
            <div class="grid-item">
                Enter Pin Code
            <input type="text" name="pincode" placeholder="PinCode" id="txtpincode" />
            </div>
            <div class="grid-item" id="divbtn">
                <input type="button" id="btnSave" value="Save" />
            </div>
        </div>
    </form>
</body>
</html>
