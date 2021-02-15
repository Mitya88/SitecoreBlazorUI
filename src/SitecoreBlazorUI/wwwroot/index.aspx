<%@ Page AutoEventWireup="true" Inherits="Sitecore.Speak.Integration.Spa.SecureSpaPage" Language="C#" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>SitecoreBlazorUI</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <base href="/sitecore/shell/client/Applications/sitecoreblazorui/">
    <link rel="icon" type="image/x-icon" href="favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic" rel="stylesheet" type="text/css">

    <!-- The css file below is used from https://sitecore.myget.org/feed/sc-npm-packages/package/npm/@speak/styling package -->
    <link href="css/sitecore.css" rel="stylesheet" type="text/css">

    <!-- The css file below is used from https://sitecore.myget.org/feed/sc-npm-packages/package/npm/@speak/icon-fonts package -->
    <link href="css/sitecore-icons.css" rel="stylesheet" type="text/css">
</head>

<body>
 <div id="app"><div class="progress-indicator-panel show">
    <div class="pip-overlay">
        <div class="pip-loader">
            <div class="pip-square-1"></div>
            <div class="pip-square-2"></div>
            <div class="pip-square-3"></div>
            <div class="pip-square-4"></div>
            <div class="pip-square-5"></div>
            <div class="pip-square-6"></div>
            <div class="pip-square-7"></div>
            <div class="pip-square-8"></div>
            <div class="pip-square-9"></div>
        </div>
    </div>
    <div class="pip-background"></div>
</div></div>
    <script src="_framework/blazor.webassembly.js"></script>
<script type="text/javascript">
        window.methods = {
            GetCookie: function (cname) {
  var name = cname + "=";
  var decodedCookie = decodeURIComponent(document.cookie);
  var ca = decodedCookie.split(';');
  for(var i = 0; i <ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0) == ' ') {
      c = c.substring(1);
    }
    if (c.indexOf(name) == 0) {
      return c.substring(name.length, c.length);
    }
  }
  return "";
}
        }
    </script>
</body>

</html>
