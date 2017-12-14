<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="knockknock._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">


    <p>Groceries List:<input data-bind="value:groceries1" /> </p>
    <p><span data-bind="text:groceries1"></span> </p>

   <p>Groceries List:<input data-bind="value:groceries2" /> </p>
    <p><span data-bind="text:groceries2"></span> </p>

         <p>Groceries List:<input data-bind="value:groceries3" /> </p>
    <p><span data-bind="text:groceries3"></span> </p>
     <script src="Scripts/knockout-3.4.2.js"></script>
        <script>

       var food = {
           groceries1: ko.observable('item 1'),
           groceries2: ko.observable('item 2'),
           groceries3: ko.observable('item 3')
       };

           food.groceryList=ko.computed(function()
       {
               return food.groceries1() + ' ' + food.groceries2() + ' ' + food.groceries3();
           } )
            ko.applyBindings(food)

       </script>
        </form>
</body>
</html>
