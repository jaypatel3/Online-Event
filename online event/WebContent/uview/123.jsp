<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"><![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"><![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"><![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"><!--<![endif]-->


<jsp:include page="../uview/header.jsp"></jsp:include>


<!--  Page Title -->
<section class="pagetitle bg2">

	<!-- 1200 Container Start -->
	<div class="container">
		<div class="twelve columns">
        	<div class="titleWrap">
				<h1>SIGN UP</h1>
			</div>
        </div>
        <div class="four columns search">
        	<form class="searchForm" action="#" method="get" >
                <div>
                    <input class="searchField placeholderField" title="Search site..." type="text" name="search" value=""/>
                    <button class="searchIcon" type="submit">Search</button>
                </div>
            </form>
        </div>
	</div>
	<!-- 1200 Container End -->
	
</section>
<!-- Page Title End -->
<div align="left">
<section class="content">
<!--  1200 Container Start -->

<div class="container" >
   <div class="four columns" >
		<h3 class="sectionTitle" align="center">REGISTRATION</h3>
		<form action="" method="post" id="u">
            <div class="formWrap" >
               <label>FIRST NAME::</label>
               <input  title="First Name" type="text" name="name"  class="validate[required] large placeholderField text"/>
            </div>
            <div class="formWrap">
                <label>MIDDLE NAME::</label><input class="placeholderField text" title="Middle Name" type="text" name="name" required/>
            </div>
            <div class="formWrap">
                <label>LAST NAME::</label>
                <input class="placeholderField text" title="Last Name" type="text" name="name" />
            </div>
            <fieldset>
                    <label>ADDRESS:: </label>
                    <textarea title="Message" name="message" ></textarea>
                </fieldset>
            CITY::
                <select>
                        <option value='option1'>Option 1</option>
                        <option value='option2'>Option 2</option>
                        <option value='option3'>Option 3</option>
                </select>
           
             STATE::
                <select>
                        <option value='option1'>Option 1</option>
                        <option value='option2'>Option 2</option>
                        <option value='option3'>Option 3</option>
                </select>
             COUNTRY::
                <select>
                        <option value='option1'>Option 1</option>
                        <option value='option2'>Option 2</option>
                        <option value='option3'>Option 3</option>
                </select>
               
                <fieldset>
                    <label>Passport Photo:: </label>
                    <input type="file" class="upload" />
           
                </fieldset>
                
                <div class="formWrap">
                <a  href="#" class="button small grey">Submit</a>
           </div>
          
            </form>
        </div> 
        </div>   
           

	
    
    
	<!-- end #main.container -->
</section>
</div>
<div class="contentBottom"></div>

<jsp:include page="../uview/footer.jsp"></jsp:include>


</body>
</html>