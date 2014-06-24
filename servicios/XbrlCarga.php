<?xml version="1.0" encoding="utf-8"?>
<s:Application xmlns:fx="http://ns.adobe.com/mxml/2009"
			   xmlns:s="library://ns.adobe.com/flex/spark"
			   xmlns:mx="library://ns.adobe.com/flex/mx"
			   xmlns:xbrlcarga="services.xbrlcarga.*"
			   minWidth="955" minHeight="600"
			   creationComplete="application1_creationCompleteHandler(event)">
	
	<fx:Script>
		<![CDATA[
			import flash.xml.XMLDocument;
			import flash.xml.XMLNode;
			import flash.xml.XMLNodeType;
			
			import mx.collections.ArrayCollection;
			import mx.controls.Alert;
			import mx.events.FlexEvent;
			import mx.rpc.events.FaultEvent;
			import mx.rpc.events.ResultEvent;
			
			
			private function errorHttpService(event:FaultEvent):void
			{
				Alert.show("Error en carga de archivo configurador de WebService: " + event.message, "Fault");
			}
			
			private var arrContextos:Array = [];
			private var arrTag:Array = [];
			private var objContextos:Object = {};
			[Bindable] private var arrPer:ArrayCollection = new ArrayCollection([{per: '03-2009'}, {per: '06-2009'}, {per: '09-2009'}, {per: '12-2009'}, {per: '03-2010'}, {per: '06-2010'}, {per: '09-2010'}, {per: '12-2010'}, {per: '03-2011'}, {per: '06-2011'}, {per: '09-2011'}, {per: '12-2011'}, {per: '03-2012'}, {per: '06-2012'}, {per: '09-2012'}, {per: '12-2012'}, {per: '03-2013'}, {per: '06-2013'}, {per: '09-2013'}, {per: '12-2013'}, {per: '03-2014'}, {per: '06-2014'}, {per: '09-2014'}, {per: '12-2014'}])
			
			
			private function muestra(event:ResultEvent):void{
				txtXML.text = event.result.toString();
			}
			
			private function cargarXML(event:ResultEvent):void
			{
				try
				{
					var xml:XML=new XML(event.result);
					
					var xmlParam:XMLDocument = new XMLDocument();
					var xmlParamSub:XMLNode = new XMLNode(1, 'Tags');
					
					var xmlNode:XMLNode;
					
					
					var clabberList:XMLList = xml.children();
					for (var i:int = 0; i < clabberList.length(); i++) {						
						var userGroup:XML = clabberList[i];
						if(userGroup.@contextRef[0] != null){
							//trace(userGroup.name()['localName']);
							arrTag.push({idTag: userGroup.name()['localName'], valor: String(userGroup.text()), decimals: String(userGroup.@decimals), unitRef: String(userGroup.@unitRef)});
							
							if(String(userGroup.@unitRef) != ''){
								/*for(var j:int = 0; j < arrContextos.length; j++){
								if(){
								break;
								}
								}*/
								trace(objContextos[String(userGroup.@contextRef)]);
								if(objContextos[String(userGroup.@contextRef)] == String(userGroup.@contextRef)){
									xmlNode = new XMLNode(1, 'tag');
									xmlNode.attributes = {idTag: userGroup.name()['localName'], valor: String(userGroup.text()), decimals: String(userGroup.@decimals), unitRef: String(userGroup.@unitRef), contextRef: String(userGroup.@contextRef)}
									xmlParamSub.appendChild(xmlNode);
									
								}
								
							}
							//xmlNode.@idTag = userGroup.name()['localName'];	
							//<tag idTag={userGroup.name()['localName']} valor={String(userGroup.text())} decimals={String(userGroup.@decimals)} unitRef={String(userGroup.@unitRef)}/>
							
							
						} else {
							if(userGroup.name()['localName'] == 'context' && userGroup.children()[2] == null){
								//trace(userGroup.name()['localName']);
								var info:XMLList = userGroup.children();
								var infoPer:XMLList = info[1].children();
								var arrPer:Array = [];
								for(var j:int = 0; j < infoPer.length(); j++){
									arrPer.push(String(infoPer[j]));
								}
								
								arrContextos.push({idTag: String(userGroup.@id), entity: String(info[0].children()[0]), period: arrPer});
								objContextos[String(userGroup.@id)] = String(userGroup.@id);
							}
						}
					}
					xmlParam.appendChild(xmlParamSub);
					insertarValorResult.token = xbrlCarga.insertarValor({xmlParam: String(xmlParam)});
					insertarValorResult.addEventListener(ResultEvent.RESULT, muestra);
					
				}
				catch (e:Error)
				{
					trace(e.getStackTrace());
				}
			}
			
			
			protected function application1_creationCompleteHandler(event:FlexEvent):void
			{
				// TODO Auto-generated method stub
				httpXML.send();
				
				
				
			}
			
			protected function btnDescarga_clickHandler(event:MouseEvent):void
			{
				// TODO Auto-generated method stub
				descargaSVSResult.token = xbrlCarga.recursivo(ddlPeriodo.selectedItem['per']);
				descargaSVSResult.addEventListener(ResultEvent.RESULT, listarEmpresas);
			}
			
			[Bindable] private var arrRut:ArrayCollection = new ArrayCollection();
			
			private function listarEmpresas(event:ResultEvent):void{
				var xml:XML=new XML(event.result);
				var rutList:XMLList = xml.children();
				for each(var node:XML in rutList){
					arrRut.addItem({rut: node.toString()});
				}
			}
			
			protected function btnProcXBRL_clickHandler(event:MouseEvent):void
			{
				// TODO Auto-generated method stub
				var str:String = '';
				if(lstRut.selectedItems.length > 0){
					for(var i:int = 0; i < lstRut.selectedItems.length; i++){
						str +=  lstRut.selectedItems[i]['rut'] + ';';
					}
				}
				str = str.substr(0, str.length - 1);
				descargaSeleccionResult.token = xbrlCarga.descargaSeleccion(str);
				descargaSeleccionResult.addEventListener(ResultEvent.RESULT, descargaZipResult);
			}
			
			
			private function descargaZipResult(event:ResultEvent):void{
				Alert.show('Descargado archivos', 'Fin Proceso');
			}
			
			
		]]>
	</fx:Script>
	
	<fx:Declarations>
		<!-- Place non-visual elements (e.g., services, value objects) here -->
		<s:HTTPService id="httpXML"
					   concurrency="multiple"
					   url="81062300_201303_C.xbrl"
					   result="cargarXML(event)"
					   fault="errorHttpService(event)"
					   useProxy="false"
					   resultFormat="e4x"/>
		<s:CallResponder id="insertarValorResult"/>
		<xbrlcarga:XbrlCarga id="xbrlCarga"
							 fault="Alert.show(event.fault.faultString + '\n' + event.fault.faultDetail)"
							 showBusyCursor="true"/>
		<s:CallResponder id="descargaSVSResult"/>
		<s:CallResponder id="descargaSeleccionResult"/>
	</fx:Declarations>
	<s:TextArea id="txtXML" x="177" y="232" width="676"/>
	<s:Button x="86" y="139" label="descargar Información de SVS" id="btnDescarga" click="btnDescarga_clickHandler(event)"/>
	<s:DropDownList id="ddlPeriodo" x="86" y="110" dataProvider="{arrPer}" labelField="per">
		
	</s:DropDownList>
	<s:List x="497" y="48" id="lstRut" dataProvider="{arrRut}" labelField="rut" allowMultipleSelection="true"></s:List>
	<s:Button id="btnProcXBRL" x="497" y="180" label="Procesar XBRL" click="btnProcXBRL_clickHandler(event)"/>
</s:Application>
