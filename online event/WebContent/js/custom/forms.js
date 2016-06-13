/*
 * 	Additional function for forms.html
 *	Written by ThemePixels	
 *	http://themepixels.com/
 *
 *	Copyright (c) 2012 ThemePixels (http://themepixels.com)
 *	
 *	Built for Amanda Premium Responsive Admin Template
 *  http://themeforest.net/category/site-templates/admin-templates
 */

jQuery(document).ready(function(){
	
	///// FORM TRANSFORMATION /////
	jQuery('input:checkbox, input:radio, select.uniformselect, input:file').uniform();


	///// DUAL BOX /////
	var db = jQuery('#dualselect').find('.ds_arrow .arrow');	//get arrows of dual select
	var sel1 = jQuery('#dualselect select:first-child');		//get first select element
	var sel2 = jQuery('#dualselect select:last-child');			//get second select element
	
	sel2.empty(); //empty it first from dom.
	
	db.click(function(){
		var t = (jQuery(this).hasClass('ds_prev'))? 0 : 1;	// 0 if arrow prev otherwise arrow next
		if(t) {
			sel1.find('option').each(function(){
				if(jQuery(this).is(':selected')) {
					jQuery(this).attr('selected',false);
					var op = sel2.find('option:first-child');
					sel2.append(jQuery(this));
				}
			});	
		} else {
			sel2.find('option').each(function(){
				if(jQuery(this).is(':selected')) {
					jQuery(this).attr('selected',false);
					sel1.append(jQuery(this));
				}
			});		
		}
	});
	
	
	
	///// FORM VALIDATION /////
	jQuery("#form1").validate({
		rules: {
			firstname: "required",
			foodcatname: "required",
			subcategoryname: "required",
			lastname: "required",
			catname:"required",
			catdesc:"required",
			email: {
				required: true,
				email: true,
			},
			location: "required",
			country: "required",
			state: "required",
			select: "required",
			description: "required",
			foodcatdes: "required",
			country:"required",
			countryid:"required",
			stateid:"required",
			citydescription:"required",
			city:"required",
			statedescription:"required",
			foodcategory:"required",
			fooditemname:"required",
			addstatename:"required",
			fooditempic:"required",
			fooditemdes:"required",
			fooditemprice:"required",
			foodsubcategory:"required",
			foodcate:"required",
			foodsubcatname:"required",
			foodsubcatdes:"required",
			category:"required",
			subcategory:"required",
			photoname:"required",
			photo:"required",
			photodes:"required",
			hotelname:"required",
			address1:"required",
			address2:"required",
			countryid:"required",
			stateid:"required",
			cityid:"required",
			phone1:"required",
			phone2:"required",
			fax:"required",
			hotelPhoto:"required",
			hoteldescription:"required",
			selectcategory:"required",
			selectsubcategory:"required",
			packagename:"required",
			packagedes:"required",
			schemename:"required",
			schemedes:"required",
			selectcat:"required",
			subcatdes:"required",
			invitationcard:"required",
			invitationcardpic:"required",
		},
		messages: {
			firstname: "Please enter your first name",
			lastname: "Please enter your last name",
			email: "Please enter a valid email address",
			location: "Please enter your location",
			state: "Please enter your state",
			country: "Please enter your country",
			select: "please select",
			subcategoryname:"please select subcategory",
			description:"please enter description",
			foodcatdes:"please enter foodcategory description",
			foodcatname:"please enter foodcategory",
			country:"please enter country",
			catname:"please enter category name",
			catdesc:"please enter category description",
			countryid:"please select country",
			stateid:"please select state",
			citydescription:"please enter city description",
			city:"please enter city name",
			statedescription:"please enter state description",
			addstatename:"please enter state name",
			foodcategory:"please select foodcategory",
			foodsubcategory:"please select foodsubcategory",
			fooditemname: "Please enter fooditemname",
			fooditemprice:"Please enter fooditemprice",
			fooditemdes:"Please enter fooditemdes",
			foodcate:"Please select food category",
			fooditempic:"please upload food item pic",
			foodsubcatname:"Please enter food subcategory name",
			foodsubcatdes:"Please enter food subcategory description",
			category:"please select category",
			subcategory:"please select subcategory",
			photoname:"Please enter food photo name",
			photo:"please upload photo",
			photodes:"Please enter photo description",
			hotelname:"Please enter hotel name",
			address1:"Please enter address1",
			address2:"Please enter address2",
			countryid:"please select country",
			stateid:"please select state",
			cityid:"please select city",
			phone1:"Please enter phone1",
			phone2:"Please enter phone2",
			fax:"Please enter fax",
			hotelPhoto:"Please upload hotel photo name",
			hoteldescription:"Please enter hotel description",
			selectcategory:"please select category",
			selectsubcategory:"please select subcatego",
			packagename:"Please enter package name",
			packagedes:"Please enter package description",
			schemedes:"Please enter scheme description",
			selectcat:"please select category",
			subcatdes:"Please enter subcategory description",
			invitationcard:"Please enter invitation card name",
			invitationcardpic:"Please upload invitaiton card pic",
			invitationdesc:"Please enter invitaion card description",
		}
	});
	
	
	///// TAG INPUT /////
	
	jQuery('#tags').tagsInput();

	
	///// SPINNER /////
	
	jQuery("#spinner").spinner({min: 0, max: 100, increment: 2});
	
	
	///// CHARACTER COUNTER /////
	
	jQuery("#textarea2").charCount({
		allowed: 120,		
		warning: 20,
		counterText: 'Characters left: '	
	});
	
	
	///// SELECT WITH SEARCH /////
	jQuery(".chzn-select").chosen();
	
});