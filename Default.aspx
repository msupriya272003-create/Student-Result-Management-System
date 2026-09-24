<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentMarksheet.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Result Management</title>

    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #dfe9f3, #ffffff);
            margin: 0;
            padding: 0;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 18px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #003366;
            margin-bottom: 25px;
            font-size: 28px;
            border-bottom: 2px solid #0078D7;
            padding-bottom: 10px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
            font-size: 16px;
            color: #333;
        }

        input[type=text] {
            width: 96%;
            padding: 10px;
            border: 1px solid #b0b0b0;
            border-radius: 8px;
            font-size: 15px;
            transition: 0.3s;
        }

        input[type=text]:focus {
            border-color: #0078D7;
            box-shadow: 0 0 8px rgba(0,120,215,0.4);
            outline: none;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(90deg, #0078D7, #005a9e);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn:hover {
            background: linear-gradient(90deg, #005a9e, #003f73);
            transform: scale(1.02);
        }

        .result-box {
            margin-top: 25px;
            padding: 15px;
            border-radius: 10px;
            background: #f0fff0;
            border-left: 6px solid #28a745;
            font-size: 18px;
            font-weight: bold;
            color: #155724;
            line-height: 1.8;
        }

        .footer {
            text-align: center;
            margin-top: 20px;
            font-size: 13px;
            color: gray;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h2>🎓 Student Result Management</h2>

            <table>
                <tr>
                    <td>Enrollment No:</td>
                    <td><asp:TextBox ID="txtEnroll" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Student Name:</td>
                    <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Subject 1:</td>
                    <td><asp:TextBox ID="txtSub1" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Subject 2:</td>
                    <td><asp:TextBox ID="txtSub2" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Subject 3:</td>
                    <td><asp:TextBox ID="txtSub3" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Subject 4:</td>
                    <td><asp:TextBox ID="txtSub4" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Subject 5:</td>
                    <td><asp:TextBox ID="txtSub5" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button
                            ID="btnCalculate"
                            runat="server"
                            Text="Calculate Result"
                            CssClass="btn"
                            OnClick="btnCalculate_Click" />
                    </td>
                </tr>
            </table>

            <div class="result-box">
                <asp:Label ID="lblResult" runat="server"></asp:Label>
            </div>

            <div class="footer">
                ASP.NET Web Forms Practical | MCA Project
            </div>

        </div>

    </form>
</body>
</html>