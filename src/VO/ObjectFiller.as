package VO
{
	//import com.adobe.cairngorm.vo.IValueObject;
	
	import flash.utils.describeType;
	import flash.xml.XMLDocument;
	import flash.xml.XMLNode;
	
	import mx.rpc.xml.SimpleXMLEncoder;

	public class ObjectFiller extends Object //implements IValueObject
	{
		[NoSerializable]
		public function set fill(xml:XML):void
		{
			for each (var i :XML in xml.elements()){
				this[i.localName()] = i;
			}
		}
		[NoSerializable]
		public function set fillAttributes(xml:XML):void
		{
		   for each (var i :XML in xml.attributes())
		   {
		   		this[i.localName()] = i;
		   }
		}
		
		public  function toXML(strRoot:String):XML 
		{
		   var xmlReflection :XML = flash.utils.describeType(this);
		   var objGenericVo:Object = new Object();
		   var name:String;
		   	for each (var xmlVar:XML in xmlReflection.elements())
		   	{
		   		name = String((XML(xmlVar).@name)).toString();
		   		if(this.hasOwnProperty(name) && (xmlVar.localName().toString() == "variable" || xmlVar.localName().toString() == "accessor") && xmlVar.@access != "writeonly")
		   		{
		   			objGenericVo[name] = this[name];	
		   		}		
		   	}  
	       var qName:QName = new QName(strRoot);
           var xmlDocument:XMLDocument = new XMLDocument();
           var simpleXMLEncoder:SimpleXMLEncoder = new SimpleXMLEncoder(xmlDocument);
           var xmlNode:XMLNode = simpleXMLEncoder.encodeValue(objGenericVo, qName, xmlDocument);
           var xml:XML = new XML(xmlDocument.toString());
           return xml;
		}
	}
}