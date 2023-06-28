<%-- 
    Document   : Customer
    Created on : Jun 27, 2023, 9:27:02 PM
    Author     : CIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Page</title>
        <style>
            /*
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
*/
/* 
    Created on : May 2, 2023, 7:51:34 PM
    Author     : CIT
*/
/*enquiry form*/

            td{
                font-weight:bolder;
                font-size:20px;
            }
            button{
                width:100%;
                font-weight:bolder;
                background-color:blue;
            }
.container{
  max-width: 700px;
  width: 100%;
  background-color: #fff;
  padding: 25px 30px;
  border-radius: 5px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.15);
}
.container .title{
  font-size: 30px;
  font-weight: 500;
  position: relative;
  margin-bottom:5px;
}

 form input{
     width:250px;
     border:1px solid black;
 }
 form .button{
   height: 50px;
   width:60%;
   margin: 35px 0;
   margin-left: 80px;
   
 }
 form .button input{
   height: 100%;
   width: 100%;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

        </style>
    </head>
    <body>
         <center>
            <div class="container">
                <div class="title" style="font-weight:bolder">FORM</div>
                <div class="content">
                    <form action="InsertCustomerData" method="post"><center>
            <table>
                 <tr>
                    <td>Customer ID</td><!-- comment -->
                    <td><input type="text" name="id"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Order Date</td><!-- comment -->
                    <td><input type="date" id="orderDate" name="orderDate"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Company</td><!-- comment -->
                    <td><input type="text" name="company"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Owner</td><!-- comment -->
                    <td><input type="text" name="owner"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Item</td><!-- comment -->
                    <td><input type="text" name="item"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Quantity</td><!-- comment -->
                    <td><input type="number" name="qty"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Weight</td><!-- comment -->
                    <td><input type="text" name="weight"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Request for Shipment</td><!-- comment -->
                    <td><input type="text" name="req"></td><!-- comment -->
                    
                </tr>
                <tr>
                    <td>Tracking ID</td><!-- comment -->
                    <td><input type="text" name="trackId"></td><!-- comment --> 
                </tr>
                <tr>
                    <td>Shipment Size</td><!-- comment -->
                    <td><input type="number" name="size"></td><!-- comment --> 
                </tr>
                <tr>
                    <td>Box Count</td><!-- comment -->
                    <td><input type="number" name="boxCount"></td><!-- comment --> 
                </tr>
                <tr>
                    <td>Specification</td><!-- comment -->
                    <td><input type="text" name="specification"></td><!-- comment --> 
                </tr>
                <tr>
                    <td>Checklist Quantity</td><!-- comment -->
                    <td><input type="text" name="checklistQty"></td><!-- comment --> 
                </tr>
                
            </table></center>
        
                            <div class="button">
                                <input type="submit" value="Submit">
                            </div>

                        </div>
      </form>
    </div>
  </div>
        </center>
    </body>
</html>
