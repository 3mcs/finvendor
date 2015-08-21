<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.finvendor.util.RequestConstans"%>
<script>
	function setTarget(name) {
		//window.alert(name);
		url = "demo.jsp";
		target = "divTarget";
		//use timeout coz mousehover fires several times
	}
</script>
	<div class="nav-srch" id="nav-srch">
			<div class="nav-srch-cnt">
				<ul class="sf-menu" id="example">
					<li><img src="<%=request.getContextPath() %>/resources/images/hm.png" alt="" title="" /></li>
					<li><a href="#">SOLUTIONS</a>
						<ul>
							<li><a href="<%=request.getContextPath()%>/<%=RequestConstans.MarketAggregators.MARKETAGGREGATORS%>">Market Data Vendors (Aggregators) Directory</a></li>
							<li><a href="#tav">Trading Application Vendors Directory</a></li>
							<li><a href="#faa">Financial Analytics Application Vendors Directory</a></li>
							<li><a href="#frrp">Financial Research Report Providers Directory</a></li>
							<li><a href="#afv" onclick="setTarget('Advanced Financial Vendors Directory')">Advanced Financial Vendors Directory</a></li>
						</ul>
					</li>
					<li><a href="#">SERVICES</a>
						<ul>
							<li><a href="#dadd" onclick="setTarget('Data Aggregator Due diligence')">Data Aggregator Due diligence</a></li>
							<li><a href="#tapdd" onclick="setTarget('Trading Application providers due diligence')">Trading Application providers due diligence</a></li>
							<li><a href="#aapdd" onclick="setTarget('Analytics Application providers due diligence')">Analytics Application providers due diligence</a></li>
							<li><a href="#rrpdd" onclick="setTarget('Research report Providers due diligence')">Research Report Providers due diligence</a></li>
							<li><a href="#itc" onclick="setTarget('IT Consulting')">IT Consulting</a></li>
						</ul>
					</li>
					<li><a href="#">RESOURCES</a>
						<ul>
							<li><a href="#Brochures" onclick="setTarget('Brochures')">Brochures</a></li>
							<li><a href="#Whitepapers" onclick="setTarget('Whitepapers')">Whitepapers</a></li>
							<li><a href="#Blogs" onclick="setTarget('Blogs')">Blogs</a></li>
							<li><a href="#Casestudies" onclick="setTarget('Case Studies')">Case Studies</a></li>
							<li><a href="#Spotlights" onclick="setTarget('Spotlights')">Spotlights</a></li>
						</ul>
				  </li>
				</ul>
				<input name="" type="text" class="srch" value="Search">
				<div class="clearfix"></div>
			</div>
	</div>
<div class="banner" id="banner">
  <div class="container">
    <div id="slider2_container" style="position: relative; top: 0px; left: 0px; width: 1000px; height: 391px;  overflow: hidden; ">
      <div u="slides" style="width:1000px; height:391px;  overflow: hidden;">
        <div>
          <div style=" overflow: hidden;" class="hm-slide-1">
            <div class="home-slider-wrap">
              <div class="content">
                <h2> <span>Insurance</span> <span>Investment</span> <span>Management</span> </h2>
                <h3>OPERATIONS KIT</h3>
                <div class="para">
                  <p> Transform your Insurance Investment Management Operations</p>
                  <p>Download our kit to learn everything you need to know</p>
                </div>
              </div>
            </div>
          </div>
          <div u="thumb"><img src="<%=request.getContextPath() %>/resources/images/slected-ico.png" alt="" title="" /><a href="#view1">SLIDE ONE <span>HEADING GOES HERE</span></a></div>
        </div>
        <div>
          <div style="overflow: hidden;" class="hm-slide-2">
            <div class="home-slider-wrap">
              <div class="content">
                <h2> <span>Insurance</span> <span>Investment</span> <span>Management</span> </h2>
                <h3>OPERATIONS KIT</h3>
                <div class="para">
                  <p> Transform your Insurance Investment Management Operations</p>
                  <p>Download our kit to learn everything you need to know</p>
                </div>
              </div>
            </div>
          </div>
          <div u="thumb"><img src="<%=request.getContextPath() %>/resources/images/slected-ico.png" alt="" title="" /><i></i><a href="#view2">SLIDE TWO <span>HEADING GOES HERE</span></a></div>
        </div>
        <div>
          <div style="overflow: hidden; " class="hm-slide-3">
            <div class="home-slider-wrap">
              <div class="content">
                <h2> <span>Insurance</span> <span>Investment</span> <span>Management</span> </h2>
                <h3>OPERATIONS KIT</h3>
                <div class="para">
                  <p> Transform your Insurance Investment Management Operations</p>
                  <p>Download our kit to learn everything you need to know</p>
                </div>
              </div>
            </div>
          </div>
          <div u="thumb"><img src="<%=request.getContextPath() %>/resources/images/slected-ico.png" alt="" title="" /><i></i><a href="#view3">SLIDE THREE <span>HEADING GOES HERE</span></a></div>
        </div>
        <div>
          <div style="overflow: hidden;" class="hm-slide-4">
            <div class="home-slider-wrap">
              <div class="content">
                <h2> <span>Insurance</span> <span>Investment</span> <span>Management</span> </h2>
                <h3>OPERATIONS KIT</h3>
                <div class="para">
                  <p> Transform your Insurance Investment Management Operations</p>
                  <p>Download our kit to learn everything you need to know</p>
                </div>
              </div>
            </div>
          </div>
          <div u="thumb"><img src="<%=request.getContextPath() %>/resources/images/slected-ico.png" alt="" title="" /><i></i><a href="#view4">SLIDE FOUR <span>HEADING GOES HERE</span></a></div>
        </div>
      </div>
      <div u="thumbnavigator" class="jssort12">
        <div u="slides">
          <div u="prototype" class="p">
            <div class=w>
              <div u="thumbnailtemplate" class="c"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="clearfix"></div>
  <div class="main-wrap" id="main-wrap">
    <div class="main-content-wrap"> <img src="<%=request.getContextPath() %>/resources/images/main-img-1.png" alt="" title="" class="main-img" />
      <h2>Market Data <span>Vendors</span></h2>
      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac feugiat justo, quis condimentum leo. Ut nisl dui, interdum id libero in, sodales lobortis risus. Ut in condimentum mauris. Etiam arcu.</p>
      <a href="#"><img src="<%=request.getContextPath() %>/resources/images/rd-mr.png" alt="" title="" class="read-more"/></a> </div>
    <div class="main-content-wrap"> <img src="<%=request.getContextPath() %>/resources/images/main-img-2.png" alt="" title="" class="main-img" />
      <h2>Trading Application <span>Vendors</span></h2>
      <p>Ut nisl dui, interdum id libero in, sodales lobortis risus. Ut in condimentum mauris. Etiam arcu magna, vulputate porttitor nisl non, ultrices porta felis. Phasellus venenatis justo quis dolor.</p>
      <a href="#"><img src="<%=request.getContextPath() %>/resources/images/rd-mr.png" alt="" title="" class="read-more"/></a> </div>
    <div class="main-content-wrap"> <img src="<%=request.getContextPath() %>/resources/images/main-img-3.png" alt="" title="" class="main-img" />
      <h2>Financial Analytics <span>Vendors</span></h2>
      <p>Etiam arcu magna, vulputate porttitor nisl non, ultrices porta felis. Phasellus venenatis justo quis dolor euismod, quis ullamcorper dui tincidunt. Lorem ipsum dolor sit amet.</p>
      <a href="#"><img src="<%=request.getContextPath() %>/resources/images/rd-mr.png" alt="" title="" class="read-more"/></a> </div>
    <div class="main-content-wrap last-child"> <img src="<%=request.getContextPath() %>/resources/images/main-img-4.png" alt="" title="" class="main-img" />
      <h2>Financial Research <span>Report Vendors</span></h2>
      <p>Phasellus venenatis justo quis dolor euismod, quis ullamcorper dui tincidunt. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac feugiat justo, quis condimentum. </p>
      <a href="#"><img src="<%=request.getContextPath() %>/resources/images/rd-mr.png" alt="" title="" class="read-more"/></a> </div>
    <div class="clearfix"></div>
  </div>
  <div class="slider-home" id="slider-home"> <img src="<%=request.getContextPath() %>/resources/images/hear.png" alt="" title="" class="slider-hr" />
    <h2> Hear what people are saying about Fin Vendor</h2>
    <div class="slider2">
      <div class="slide">
        <p>orem ipsum dolor sit amet, consectetur adipiscing elit. Integer eget cursus ipsum. Integer eu gravida erat, vel tempor diam. Praesent elementum efficitur placerat. Vestibulum vel nunc eget leo interdum fringilla quis id lorem. Nullam sollicitudin elit id ipsum posuere rutrum. Quisque nec mauris odio. Quisque cursus, mauris vel ornare suscipit, metus ante aliquet felis, vel rhoncus velit leo at quam. </p>
        <p class="signature"> <strong>Jith Puthoor</strong> <span>Lead Designer, CreativeLeaves</span></p>
      </div>
      <div class="slide">
        <p>orem ipsum dolor sit amet, consectetur adipiscing elit. Integer eget cursus ipsum. Integer eu gravida erat, vel tempor diam. Praesent elementum efficitur placerat. Vestibulum vel nunc eget leo interdum fringilla quis id lorem. Nullam sollicitudin elit id ipsum posuere rutrum. Quisque nec mauris odio. Quisque cursus, mauris vel ornare suscipit, metus ante aliquet felis, vel rhoncus velit leo at quam. </p>
        <p class="signature"> <strong>Jith Puthoor</strong> <span>Lead Designer, CreativeLeaves</span></p>
      </div>
      <div class="slide">
        <p>orem ipsum dolor sit amet, consectetur adipiscing elit. Integer eget cursus ipsum. Integer eu gravida erat, vel tempor diam. Praesent elementum efficitur placerat. Vestibulum vel nunc eget leo interdum fringilla quis id lorem. Nullam sollicitudin elit id ipsum posuere rutrum. Quisque nec mauris odio. Quisque cursus, mauris vel ornare suscipit, metus ante aliquet felis, vel rhoncus velit leo at quam. </p>
        <p class="signature"> <strong>Jith Puthoor</strong> <span>Lead Designer, CreativeLeaves</span></p>
      </div>
    </div>
  </div>
<div class="clearfix"></div>
