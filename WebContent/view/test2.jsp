<html>
<head>
<script type="text/javascript">
function readData(x,y)
{
  alert('checking values---:');
      var excel = new ActiveXObject("Excel.Application");

      alert(excel);

      var excel_file = excel.Workbooks.Open("E:\file.xlsx");
      Excel.Visible = true;

      alert(excel_file);

      var excel_sheet = excel_file.Worksheets("Sheet1");

      alert(excel_sheet);

      var data = excel_sheet.Cells(x,y).Value;

      alert(data);

      return data;


}



</script>
</head>
<body>

<input type="button" value="SimpleButton" onclick="readData(2,3);" />
</body>
</html>