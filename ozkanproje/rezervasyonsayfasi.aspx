<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rezervasyonsayfasi.aspx.cs" Inherits="ozkanproje.rezervasyonsayfasi" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Uçak Rezervasyon Sistemi</title>

<style id="" media="all">/* cyrillic-ext */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459WRhyzbi.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459W1hyzbi.woff2) format('woff2');
  unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* vietnamese */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459WZhyzbi.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459Wdhyzbi.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 400;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459Wlhyw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
/* cyrillic-ext */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459WRhyzbi.woff2) format('woff2');
  unicode-range: U+0460-052F, U+1C80-1C88, U+20B4, U+2DE0-2DFF, U+A640-A69F, U+FE2E-FE2F;
}
/* cyrillic */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459W1hyzbi.woff2) format('woff2');
  unicode-range: U+0301, U+0400-045F, U+0490-0491, U+04B0-04B1, U+2116;
}
/* vietnamese */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459WZhyzbi.woff2) format('woff2');
  unicode-range: U+0102-0103, U+0110-0111, U+0128-0129, U+0168-0169, U+01A0-01A1, U+01AF-01B0, U+1EA0-1EF9, U+20AB;
}
/* latin-ext */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459Wdhyzbi.woff2) format('woff2');
  unicode-range: U+0100-024F, U+0259, U+1E00-1EFF, U+2020, U+20A0-20AB, U+20AD-20CF, U+2113, U+2C60-2C7F, U+A720-A7FF;
}
/* latin */
@font-face {
  font-family: 'Montserrat';
  font-style: normal;
  font-weight: 700;
  font-display: swap;
  src: url(/fonts.gstatic.com/s/montserrat/v25/JTUSjIg1_i6t8kCHKm459Wlhyw.woff2) format('woff2');
  unicode-range: U+0000-00FF, U+0131, U+0152-0153, U+02BB-02BC, U+02C6, U+02DA, U+02DC, U+2000-206F, U+2074, U+20AC, U+2122, U+2191, U+2193, U+2212, U+2215, U+FEFF, U+FFFD;
}
</style>

<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<link type="text/css" rel="stylesheet" href="css/style.css" />


<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
<meta name="robots" content="noindex, follow">
</head>
<body>
<div id="booking" class="section">
<div class="section-center">
<div class="container">
<div class="row">
<div class="col-md-7 col-md-push-5">
<div class="booking-cta">
<h1>Hemen biletini al !</h1>
<p>Uçak biletini en uygun fiyata en uygun zamanda al. Türkiye'nin dört bir yanına özgürce uçmanın keyfini çıkar ! 
</p>
</div>
</div>
<div class="col-md-4 col-md-pull-7 ">
<div class="booking-form">
<form name="form" method="post" action="rezervasyonsayfasi.aspx" runat="server">
<span class="form-label">Ad - Soyad</span>
    <br>
<asp:TextBox ID="adsoyad" CssClass=" form-control" placeholder="İsim Soyisim giriniz." runat="server" required></asp:TextBox>
<br>
<span class="form-label">Yaşınız</span>
    <br>
<asp:TextBox ID="yas" TextMode="Number" CssClass=" form-control" placeholder="Yaşınızı giriniz." runat="server" required></asp:TextBox>
<br>
<span class="form-label">Kalkış Yeri</span>
<asp:DropDownList ID="kalkısyer" CssClass="form-control"  runat="server" required>
    <asp:ListItem Selected="True" Value="bos"> Lütfen bir yer seçiniz. </asp:ListItem>
    <asp:ListItem Value="istanbul"> İstanbul </asp:ListItem>
</asp:DropDownList>
    <br>
    <div class="form-group">
<span class="form-label">Varış Yeri</span>
<asp:DropDownList ID="inisyeri" CssClass="form-control"  runat="server" required>
    <asp:ListItem Selected="True" Value="bos"> Lütfen bir yer seçiniz. </asp:ListItem>
    <asp:ListItem Value="istanbul"> İstanbul </asp:ListItem>
</asp:DropDownList>
</div>
<div class="row">
<div class="col-sm-6">
<div class="form-group">
<span class="form-label">Gidiş Tarihi</span>
<asp:TextBox ID="dategidis" textmode="Date" runat="server" CssClass="form-control" required></asp:TextBox>
</div>
</div>
<div class="col-sm-6">
<div class="form-group">
<span class="form-label">Dönüş Tarihi</span>
<asp:TextBox ID="datedonus" textmode="Date" runat="server" CssClass="form-control" required></asp:TextBox>

</div>
</div>
</div>
<div class="row">
<div class="col-sm-6">
<div class="form-group">
<span class="form-label">Yetişkin Yolcu</span>
<asp:DropDownList ID="DropDownList1" class="form-control" runat="server" required>
    <asp:ListItem Text="1" Value="1" Selected="True"/>
    <asp:ListItem Text="2" Value="2"/>
    <asp:ListItem Text="3" Value="3"/>
</asp:DropDownList>
<span class="select-arrow"></span>
</div>
</div>
<div class="col-sm-6">
<div class="form-group">
<span class="form-label">Çocuk Yolcu</span>
<asp:DropDownList ID="cocuksayisi" class="form-control" runat="server" required>
    <asp:ListItem Text="0" Value="0" Selected="True"/>
    <asp:ListItem Text="1" Value="1"/>
    <asp:ListItem Text="2" Value="2"/>
</asp:DropDownList>
<span class="select-arrow"></span>
</div>
</div>
</div>
<div class="form-btn  ">
<asp:CheckBox ID="bebekpuseti"  Text="Bebek puseti istiyoruz." runat="server" />
  <br>
<asp:Button class="submit-btn " ID="rezervasyonbuton" runat="server" OnClick="rezervasyonbuton_Click" Text="Rezervasyon Yap" />
</div>
<div>   
    <br />
    <asp:Label class = "label label-danger" ID="sonuclabeln" runat="server" Text=""></asp:Label>
    <asp:Label class = "label label-success" ID="sonuclabelp" runat="server" Text=""></asp:Label>
    <asp:Label class = "label label-success" ID="sonucbilgi" runat="server" Text=""></asp:Label>

</div>
</form>
</div>
</div>
</div>
</div>
</div>
</div>

<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() { dataLayer.push(arguments); }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
<script defer src="https://static.cloudflareinsights.com/beacon.min.js/vaafb692b2aea4879b33c060e79fe94621666317369993" integrity="sha512-0ahDYl866UMhKuYcW078ScMalXqtFJggm7TmlUtp0UlD4eQk0Ixfnm5ykXKvGJNFjLMoortdseTfsRT8oCfgGA==" data-cf-beacon='{"rayId":"77b7f14c98186259","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2022.11.3","si":100}' crossorigin="anonymous"></script>
</body>
</html>