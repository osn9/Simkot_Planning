// JavaScript Document
var browser=navigator.appName;

function LTrim( value ) {
	
	var re = /\s*((\S+\s*)*)/;
	return value.replace(re, "$1");
}

// Removes ending whitespaces
function RTrim( value ) 
{
	var re = /((\s*\S+)*)\s*/;
	return value.replace(re, "$1");
	
}
// Removes leading and ending whitespaces
function trim( value ) {	
	return LTrim(RTrim(value));
	
}
function doGetCaretPosition (ctrl) {

	var CaretPos = 0;
	// IE Support
	if (document.selection) {

		ctrl.focus ();
		var Sel = document.selection.createRange ();

		Sel.moveStart ('character', -ctrl.value.length);

		CaretPos = Sel.text.length;
	}
	// Firefox support
	else if (ctrl.selectionStart || ctrl.selectionStart == '0')
		CaretPos = ctrl.selectionStart;

	return (CaretPos);

}
 

function unicode_const()
{
	this.buffer='';
	this.found=false;
	this.buffStart=false;
	this.stepBack=0;
	this.cursor_position_before_hand=0;
	this.cursor_position_after_hand=0;
	this.toUnicode=toUnicode;
	this.insertAtCursor=insertAtCursor;
}

var font 	= Array('k','K','g','G','<','c','C','j','J','Y','q','Q','x','X','N','t',
		'T','d','D','n','p','P','b','B','m','y','r','l','v','s','z','S','h',
		'1','2','3','4','5','6','7','8','9','0',
		'H','A','[','{','f','F',']','}','O','W','Z',
		'.','>','e','E','o','w','u','/','?','M','V',
		'L','R','-',' ','`','~','$','a','i','I');
	var unicode = Array('क','ख','ग','घ','ङ','च','छ','ज','झ','ञ','ट','ठ','ड','ढ','ण','त',
		'थ','द','ध','न','प','फ','ब','भ','म','य','र','ल','व','स','ष','श','ह',
		'१','२','३','४','५','६','७','८','९','०',
		'अ','आ','इ','ई','उ','ऊ','ए','ऐ','ओ','औ','ऋ',
		'।','.','े','ै','ो','ौ','ु','्','?','ं','ँ',
		'॥','ृ','-',' ','़','ऽ','रु.','ा','ि','ी');//romanised unicode characters


function toUnicode(char,keyChar,fld)
{
	var init_check= Array('e','I','i',')','f','c','Q','k','O','q');
	
	if(getIndex(init_check,char)!=-1)
		this.buffStart=true;		
	if(this.buffStart)
		this.buffer+=char;	
	if(trim(char)=='')
	{
		this.buffStart=false;
		this.buffer='';
	}		
	this.cursor_position_before_hand=this.cursor_position_after_hand;
	this.cursor_position_after_hand=doGetCaretPosition(fld);
	if(caseA(this.buffer))
	{
		buffer_text=caseA(this.buffer);
		this.found=true;
		if(buffer_text=='ष' || buffer_text=='ण')
		{
			back_track=2;
			this.stepBack=1;
		}
		else if(trim(buffer_text)=='क्ष')
		{
			back_track=4;
			this.stepBack=1;
		}
		else if(trim(buffer_text)=='क्त' || trim(buffer_text)=='क्र')   
			back_track=3;
		else
			back_track=1;
		if(this.cursor_position_after_hand==this.cursor_position_before_hand+back_track || this.cursor_position_after_hand==this.cursor_position_before_hand)
		{	
			this.insertAtCursor(fld,trim(buffer_text),back_track);
			return null;
		}
		else
		{
			this.buffStart=false;
			this.buffer='';
		}
	}	
	else if(this.buffer.length > 1)
	{
		this.buffStart=false;
		this.buffer='';
		if(getIndex(init_check,char)!=-1)
		{
			this.buffStart=true;		
			this.buffer+=char;	
		}
	}
	 
	//if(getIndex(font,char) == -1){ return false; }

	if(unicode[getIndex(font,char)]!=undefined) {
		//alert(unicode[getIndex(font,char)]);
		return unicode[getIndex(font,char)];
	}	
}

function insertAtCursor(myField, myValue,back_track)
{
  pos =doGetCaretPosition(myField);
  if (document.selection)
  {
	  if(!this.found)
	  {
	  	  myField.focus();
		  sel = document.selection.createRange();
		  sel.text = myValue;
		  sel.select();
	  }
	  else
	  {
	  	  myField.value = myField.value.substring(0, pos-back_track)+myValue+myField.value.substring(pos, myField.value.length);
		  var range = myField.createTextRange();
		  range.collapse(true);
		  range.moveEnd('character', pos-this.stepBack);
		  range.moveStart('character', pos-this.stepBack);
		  range.select();
		  this.found=false;
		  this.stepBack=0;
	  }
  }
  //MOZILLA/NETSCAPE support
  else if (myField.selectionStart || myField.selectionStart == '0')
  {
    
	  var startPos = myField.selectionStart - back_track;
	  var endPos = myField.selectionEnd;
	  
      var newEndPos = startPos + myValue.length;
      myField.value = myField.value.substring(0, startPos)+myValue+myField.value.substring(endPos, myField.value.length);
      myField.setSelectionRange(newEndPos, newEndPos);
  }
  else 
  {
      var newEndPos = myField.value.length + myValue.length;
      myField.value += myValue;
      myField.setSelectionRange(newEndPos, newEndPos);
  }
}

function caseA(val)
{
	var index_case_a=new Array('em','If','if',')f','f]','f}','cf','cf]','cf}','Qm','km','O{','qm');
	var value_case_a=new Array('झ','क्ष ','ष','ण','ो','ौ','आ','ओ','औ','क्त','फ','ई','क्र');
	if(getIndex(index_case_a,val)!=-1)
		return value_case_a[getIndex(index_case_a,val)];
	else
		return false;
}

function getIndex(arr,ch) 
{
	var myPosition=-1;
	for (var i=0;i<arr.length;i++)
	{
		if(trim(arr[i])==trim(ch)) 
		{
			myPosition = i;
			break;
		}
	}
	return myPosition;
}

function setUnicode(e,field)
{
	//alert(e.keyCode);
	if(e.ctrlKey){
		return true;
	}
	//if(e.shiftKey)  return false;

	//alert(e.charCode);
	try 
	{
		(eval('obj_'+field.name));				
	}
	catch(ex)
	{
		eval('obj_'+field.name+'=new unicode_const()');
	}
	var unicode=e.charCode; //? e.charCode : e.keyCode;
	//alert(String.fromCharCode(unicode));
	if(getIndex(font, String.fromCharCode(unicode)) == -1){ 
		return true; 
	}

	//alert(unicode);
	var check=true;
	/* if(browser=="Netscape" && e.keyCode!=0)
		check=false;
	alert(check);
	*/
	if(check){				
		new_value=eval('obj_'+field.name+'.toUnicode(String.fromCharCode(unicode),unicode,field)');	
		if(new_value==null)
			return false;
		if(new_value=="")
			new_value=String.fromCharCode(unicode);			
		eval('obj_'+field.name+'.insertAtCursor(field,new_value,0)');	
		return false; //disable key press		
	}
}

function ascii_value (c)
{
	// restrict input to a single character
	c = c . charAt (0);

	// loop through all possible ASCII values
	var i;
	for (i = 0; i < 256; ++ i)
	{
		// convert i into a 2-digit hex string
		var h = i . toString (16);
		if (h . length == 1)
			h = "0" + h;

		// insert a % character into the string
		h = "%" + h;

		// determine the character represented by the escape code
		h = unescape (h);

		// if the characters match, we've found the ASCII value
		if (h == c)
			break;
	}
	return i;
}