// ActionScript file
import Componentes.ContenidoAcordeon;
import Componentes.DetailItemRenderer;
import Componentes.GraficoBarrasAGF;
import Componentes.HeadingItemRenderer;
import Componentes.ItemFormulario;
import Componentes.MyCallResponder;

import flash.events.Event;
import flash.events.KeyboardEvent;
import flash.events.MouseEvent;
import flash.external.ExternalInterface;
import flash.globalization.NumberFormatter;
import flash.text.engine.ContentElement;

import mx.charts.series.ColumnSeries;
import mx.charts.series.LineSeries;
import mx.charts.series.PieSeries;
import mx.collections.ArrayCollection;
import mx.containers.TabNavigator;
import mx.controls.Alert;
import mx.controls.CheckBox;
import mx.controls.LinkButton;
import mx.controls.TextInput;
import mx.core.ClassFactory;
import mx.core.IFactory;
import mx.events.CloseEvent;
import mx.events.ColorPickerEvent;
import mx.events.FlexEvent;
import mx.events.ScrollEvent;
import mx.formatters.Formatter;
import mx.graphics.SolidColor;
import mx.graphics.SolidColorStroke;
import mx.graphics.Stroke;
import mx.messaging.AbstractConsumer;
import mx.rpc.CallResponder;
import mx.rpc.events.ResultEvent;

import skins.TDFPanelSkin;

import spark.components.BorderContainer;
import spark.components.DataGrid;
import spark.components.DropDownList;
import spark.components.HGroup;
import spark.components.Label;
import spark.components.NavigatorContent;
import spark.components.RadioButton;
import spark.components.VGroup;
import spark.events.IndexChangeEvent;
import spark.layouts.VerticalLayout;

import valueObjects.GruposDatatype;

[Bindable] private var arrEmpresas:ArrayCollection = new ArrayCollection();
private var arrEmpresasTotal:ArrayCollection = new ArrayCollection();

private var arrTrimestre:ArrayCollection = new ArrayCollection();
private var arrAnual:ArrayCollection = new ArrayCollection();

[Bindable] private var torta:ArrayCollection = new ArrayCollection();
[Bindable] private var columnas:ArrayCollection = new ArrayCollection();
//[Bindable] private var seriesColumn:Array = [];

[Bindable] private var torta2:ArrayCollection = new ArrayCollection();
[Bindable] private var columnas2:ArrayCollection = new ArrayCollection();
[Bindable] private var seriesPie2:Array = [];
[Bindable] private var seriesColumn2:Array = [];

private var formula:Array = [];
private var formulaAux:Array = [];


/*
private var arrAct:ArrayCollection = new ArrayCollection();
private var arrAct2:ArrayCollection = new ArrayCollection();
private var arrAct3:ArrayCollection = new ArrayCollection();
*/


private var arrActTotal:ArrayCollection = new ArrayCollection();
import mx.managers.PopUpManager;
import Componentes.Formula;
import spark.components.ComboBox;
import Componentes.SelectItem;
import mx.olap.OLAPCube;
import Componentes.LayoutGrafic;
import Componentes.Listado;
//import mx.controls.DataGrid;

private var alert:Formula = new Formula();
private var agregaItem:SelectItem = new SelectItem();
public var _cant:Array = [];
/*private var _arr:ArrayCollection;
private var _arrReferente:ArrayCollection;
private var _arrVariacion:ArrayCollection;*/


private function vbarScroll():void {
	
	
	rect.height = bar.value;
}


protected function contenidoacordeon1_creationCompleteHandler(event:FlexEvent):void
{
	// TODO Auto-generated method stub
	
}



/***********************************************	
 private function completaGrupos(ev:Event):void{
 var arr:ArrayCollection = comboGruposResult2.lastResult;
 for(var i:int = 0; i < arr.length; i++){
 var grupo:ContenidoAcordeon = new ContenidoAcordeon();
 try{
 if(arr.getItemAt(i) is GruposDatatype){
 grupo.btnLabel = arr.getItemAt(i)['nombre'];
 grupo.listAsync.token = modelo.subGrillaSubGrupos(arr.getItemAt(i)['ID_TIPO_EMPRESA']);
 grupo.claseDespliegue = 'ContenidoAcordeon';							
 acGrupos.addElement(grupo);
 
 }	
 } catch(e:*) {
 break;
 }
 
 
 }
 }
 
 protected function acordeonGrupos_creationCompleteHandler(event:FlexEvent):void
 {
 // TODO Auto-generated method stub
 var i:int;
 var j:int;
 var arr:Array = ['Angelini', 'Cap', 'CGE', 'Claro', 'Luksic', 'Matte', 'Said', 'Yarur'];
 var arrComp:ContenidoAcordeon;
 comboGruposResult2.token = modelo.grillaGrupos();
 
 comboGruposResult2.addEventListener(ResultEvent.RESULT, completaGrupos);
 
 
 }
 ********/		
protected function bordercontainerOpcionesMenu_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var sw:Boolean = true;
	if(event.target is LinkButton){
		
		for(var i:int = 0; i < vwAdministracion.numElements; i++){
			if(vwAdministracion.getElementAt(i)['label'] == event.target.label){
				if(event.target.label == 'Asociar AGF-XBRL' || event.target.label == 'Admin. AGF' || event.target.label == 'Admin. XBRL'){
					Alert.show('Solo administradores');
					sw = false;
				}
				break;	
			}
		}
		if(sw){
			vwAdministracion.selectedIndex = i;	
		}
		
	}
	
	
}












protected function dgGrupo_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var tn:TabNavigator = event.currentTarget.parent.parent.parent.parent;
	if((event.currentTarget as spark.components.DataGrid).selectedIndex != -1){
		(tn.getElementAt(2) as NavigatorContent).enabled = true;
		
	}
}

protected function dgGrupo_doubleClickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var tn:TabNavigator = event.currentTarget.parent.parent.parent.parent;
	if((event.currentTarget as spark.components.DataGrid).selectedIndex != -1){
		(tn.getElementAt(2) as NavigatorContent).enabled = true;
		tn.selectedIndex = 2;
		var i:int = 0;
		var sw:Boolean
		switch(tn.id){						
			case 'tnSubGrupos':
				sw = false;
				if(ID_TIPO_EMPRESA != null){
					for(i = 0; i < ID_TIPO_EMPRESA.dataProvider.length; i++){
						ID_TIPO_EMPRESA.selectedIndex = i;
						if((event.currentTarget as spark.components.DataGrid).selectedItem['ID_TIPO_EMPRESA'] == ID_TIPO_EMPRESA.selectedItem['ID_TIPO_EMPRESA']){
							break;
						}
						
					}	
				} 
				
				break;
			case 'tnIndicesFinancieros':
				
					
				break;
		}
	}
}


protected function guardar_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var b:Boolean;
	//Alert.show('' + event.target);
	var tabla:String;
	var fn:Function;
	var dat:String = (event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).id;
	switch(dat){
		case 'tnGrupos':
			tabla = 'tipos_empresas';
			break;
		case 'tnSubGrupos':
			tabla = 'subgrupos';
			break;
		case 'tnEmpresas':
			tabla = 'Empresas';
			break;
		case 'tnIndicesFinancieros':
			tabla = 'Indices_Financieros';
			break;
		case 'tnGrupoIndices':
			tabla = 'grupos_Indices_Financieros';
			break;
		case 'tnMonedas':
			tabla = 'monedas';
			break;
		
	}
	
	var arr:Array = [];
	var param:Array = [];
	var n:int = (event.target.parent.parent.parent as BorderContainer).numElements;
	for(var i:int = 0; i < n; i++){
		if((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'TextInput' ||
			(event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'TextArea'
		){
			arr[arr.length] = (event.target.parent.parent.parent as BorderContainer).getElementAt(i)['text'];
		} else {
			if((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'DropDownList'){
				var ddl:DropDownList = ((event.target.parent.parent.parent as BorderContainer).getElementAt(i) as DropDownList)
				switch(dat){
					case 'tnEmpresas':
						arr[arr.length] = ddl.selectedItem['data'];
						break;
					case 'tnSubGrupos':
						param[param.length] = ddl.selectedItem[ddl.name];
						break;
					case 'tnIndicesFinancieros':
						if(ddl.selectedIndex != -1){
							arr[arr.length] = ddl.selectedItem[ddl.name];	
						} else {
							arr[arr.length] = -1;
						}
						
						break;
					case 'tnMonedas':
						arr[arr.length] = ddl.selectedItem['data'];
						break;
				}	
				
			}
		}
	}
	
	switch(dat){
		case 'tnSubGrupos':
			modelo.insertarSubgrupo(arr, tabla, param);
			break;
		/*case 'tnIndicesFinancieros':
		modelo.insertarIndicesFinancieros(arr, tabla);
		break;*/
		default:
			modelo.insertar(arr, tabla);
			break;
	}
	
	
	
	
	
	for(i = 0; i < n; i++){
		if(((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'TextInput' && (event.target.parent.parent.parent as BorderContainer).getElementAt(i)['visible'] == true) ||
			((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'TextArea' && (event.target.parent.parent.parent as BorderContainer).getElementAt(i)['visible'] == true)
		){
			(event.target.parent.parent.parent as BorderContainer).getElementAt(i)['text'] = '';
			//(event.target.parent.parent.parent.parent.parent.parent as NavigatorContent).getElementAt(0)['token'] = modelo.grillaGrupos(); 
		} else {
			if((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'DropDownList'){
				ddl = ((event.target.parent.parent.parent as BorderContainer).getElementAt(i) as DropDownList)
				ddl.selectedIndex = -1;
			}
		}
		
		//grillaGruposResult.token = modelo.grillaGrupos();
	}
	(event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).selectedIndex = 0
	//(this[((((event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).selectedChild as NavigatorContent).getElementAt(1) as TextInput).text)] as CallResponder).token = modelo.grillaGrupos();
	//var results:String = ((((event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).selectedChild as NavigatorContent).getElementAt(1) as mx.controls.TextInput).text);
	var results:String = event.target.parent.parent.parent.parent.parent.parent.parent.selectedChild.getElementAt(1).text
	//Alert.show('' + (this['grillaGruposResult'] as CallResponder).token);
	switch(results){
		case 'grillaGruposResult':
			(this[results] as CallResponder).token = modelo.grillaGrupos();
			break;
		case 'grillaSubGruposResult':
			(this[results] as CallResponder).token = modelo.grillaSubGrupos();
			break;
		case 'grillaIndicesFinancierosResult':
			(this[results] as CallResponder).token = modelo.grillaIndicesFinancieros();
			break;
		case 'grillaGrupoIndicesResult':
			(this[results] as CallResponder).token = modelo.grillaGrupoIndices();
			break;
		case 'grillaMonedasResult':
			(this[results] as CallResponder).token = modelo.grillaMonedas();
			break;
		
	}
	
	
	
}




protected function editar_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var b:Boolean;
	
	var tabla:String;
	var dat:String = (event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).id;
	switch(dat){
		case 'tnGrupos':
			tabla = 'tipos_empresas';
			break;
		case 'tnSubGrupos':
			tabla = 'subgrupos';
			break;
		case 'tnEmpresas':
			tabla = 'empresas';
			break;
		case 'tnIndicesFinancieros':
			tabla = 'Indices_Financieros';
			break;
		case 'tnGrupoIndices':
			tabla = 'grupos_Indices_Financieros';
			break;
	}
	
	var o:Object = {};
	var param:Array = [];
	var n:int = (event.target.parent.parent.parent as BorderContainer).numElements;
	
	var n1:String = (event.target.parent.parent.parent as BorderContainer).getElementAt(0)['name'];
	var n2:String = (event.target.parent.parent.parent as BorderContainer).getElementAt(0)['text'];
	
	for(var i:int = 1; i < n; i++){
		if((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'TextInput' ||
			(event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'TextArea'
		){
			o[(event.target.parent.parent.parent as BorderContainer).getElementAt(i)['name']] = (event.target.parent.parent.parent as BorderContainer).getElementAt(i)['text'];
		} else {
			if((event.target.parent.parent.parent as BorderContainer).getElementAt(i)['className'] == 'DropDownList'){
				var ddl:DropDownList = ((event.target.parent.parent.parent as BorderContainer).getElementAt(i) as DropDownList)
				switch(dat){						
					case 'tnSubGrupos':
						param[param.length] = ddl.selectedItem[ddl.name];
						break;	
					case 'tnEmpresas':
						o[ddl.name] = ddl.selectedItem['data'];
						break;
					case 'tnIndicesFinancieros':
						if(ddl.selectedIndex > -1){
							if(ddl.id == 'campo1' || ddl.id == 'campo2' || ddl.id == 'campo3'){
								o[ddl.name] = ddl.selectedItem['ID_tag_agf'];										
							} else {
								o[ddl.name] = ddl.selectedItem['ID_GRUPO_INDICE_FINANCIERO'];
							}
						}									
						break;
				}	
				
			}
		}	
	}
	
	
	
	
	
	switch(dat){					
		case 'tnSubGrupos':
			modelo.editarSubGrupo(o, tabla, n1 + ' = ' + n2, param, int(n2)); 
			break;
		case 'tnIndicesFinancieros':
			modelo.editarIndicesFinancieros(o, tabla, n1 + ' = ' + n2);
			break;
		default:
			modelo.editar(o, tabla, n1 + ' = ' + n2);		
	}
	
	
	
	
	(event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).selectedIndex = 0
	//(this[((((event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).selectedChild as NavigatorContent).getElementAt(1) as TextInput).text)] as CallResponder).token = modelo.grillaGrupos();
	//((((event.target.parent.parent.parent.parent.parent.parent.parent as TabNavigator).selectedChild as NavigatorContent)	
		
	var nc:NavigatorContent = event.target.parent.parent.parent.parent.parent.parent.parent.selectedChild
	for(i = 0; i < nc.numElements; i++){
		if(nc.getElementAt(i) is spark.components.TextInput){
			var results:String = nc.getElementAt(i)['text'];
			break;
		}
	}
	//	var results:String = '';
	//Alert.show('' + (this['grillaGruposResult'] as CallResponder).token);
	switch(results){
		case 'grillaGruposResult':
			(this[results] as CallResponder).token = modelo.grillaGrupos();
			break;
		case 'grillaSubGruposResult':
			(this[results] as CallResponder).token = modelo.grillaSubGrupos();
			break;
		case 'grillaEmpresaResult':
			(this[results] as CallResponder).token = modelo.grillaEmpresa();
			break;
		case 'grillaIndicesFinancieros':
			(this[results] as CallResponder).token = modelo.grillaIndicesFinancieros();
			break;
		case 'grillaGrupoIndicesResult':
			(this[results] as CallResponder).token = modelo.grillaGrupoIndices(); 
			break;
	}
	
}



private function act(event:Event):void{
	var i:int = 0;
	if(event.currentTarget.dataProvider.length > 0){
		for(i = 0; i < event.currentTarget.dataProvider.length; i++){
			event.currentTarget.selectedIndex = i;
			
			if(dgSubGrupo.selectedItem['ID_TIPO_EMPRESA'] == event.currentTarget.selectedItem['ID_TIPO_EMPRESA']){
				break;
			}
			
		}	
		(event.currentTarget as DropDownList).removeEventListener(Event.ENTER_FRAME, act);
	}
	
	
}


protected function dropDownList_creationCompleteHandler(event:FlexEvent):void
{
	comboGruposResult.token = modelo.comboGrupos();
	
	if((event.currentTarget as DropDownList).id == 'ID_TIPO_EMPRESA')
		(event.currentTarget as DropDownList).addEventListener(Event.ENTER_FRAME, act);
	
	
}


protected function dropDownListxxx_creationCompleteHandler(event:FlexEvent):void
{
	grillaTodasEmpresaResult2.token = modelo.grillaTodasEmpresa();
}
protected function dgGrupo0_creationCompleteHandler(event:FlexEvent):void
{
	grillaEmpresaResult.token = modelo.grillaEmpresa();
	
	grillaIndicesFinancierosResult.token = modelo.grillaIndicesFinancieros();
}

protected function dgEmpresa_creationCompleteHandler(event:FlexEvent):void
{
	grillaEmpresaResult.token = modelo.grillaEmpresa();
}

public function myRendererFunction(item:*):IFactory
{
	/*if (item.isHeading)
	return new ClassFactory(HeadingItemRenderer);
	else*/
	return new ClassFactory(DetailItemRenderer);
}


protected function dropDownList2_creationCompleteHandler(event:FlexEvent):void
{
	comboSubGruposResult.token = modelo.comboSubGrupos();
}

protected function dropDownList2_changeHandler(event:IndexChangeEvent):void
{
	// TODO Auto-generated method stub
	grillaEmpresaDelSubGrupoResult.token = modelo.grillaEmpresaDelSubGrupo((event.target as DropDownList).selectedItem['ID_SUBGRUPO']);
	grillaEmpresaSinSubGrupoResult.token = modelo.grillaEmpresaSinSubGrupo((event.target as DropDownList).selectedItem['ID_SUBGRUPO']);
}

protected function button1_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	//Alert.show('' + event.target);
	var padre:HGroup = event.target.parent.parent;
	var arr:Vector.<int> = (padre.getElementAt(0) as CheckList).selectedIndices;
	for(var i:int = 0; i < arr.length; i++){
		(padre.getElementAt(2) as CheckList).dataProvider.addItem((padre.getElementAt(0) as CheckList).dataProvider.getItemAt(arr[i]));
		(padre.getElementAt(0) as CheckList).dataProvider.removeItemAt(arr[i]);
		for(var j:int = i + 1; j < arr.length; j++){
			if(arr[i] < arr[j]){
				arr[j]--;	
			}
			
		}
	}
	
}

protected function button2_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var padre:HGroup = event.target.parent.parent;
	var arr:Vector.<int> = (padre.getElementAt(2) as CheckList).selectedIndices;
	for(var i:int = 0; i < arr.length; i++){
		(padre.getElementAt(0) as CheckList).dataProvider.addItem((padre.getElementAt(2) as CheckList).dataProvider.getItemAt(arr[i]));
		(padre.getElementAt(2) as CheckList).dataProvider.removeItemAt(arr[i]);
		for(var j:int = i + 1; j < arr.length; j++){
			if(arr[i] < arr[j]){
				arr[j]--;	
			}
			
		}
	}
}

protected function insertComplete(event:ResultEvent):void{
	Alert.show('Transacción exitosa');
}

protected function button3_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	
	var ch:CheckList = ((event.target.parent.parent as VGroup).getElementAt(1) as HGroup).getElementAt(2) as CheckList;
	var ddl:DropDownList = (event.target.parent.parent as VGroup).getElementAt(0) as DropDownList;
	var arr:Array = [];
	for(var i:int = 0; i < ch.dataProvider.length; i++){
		arr[arr.length] = ch.dataProvider.getItemAt(i)['ID_EMPRESA'];
	}
	insertarResult.token = modelo.insertarSubgrupoEmpresa(int(ddl.selectedItem['ID_SUBGRUPO']), arr);
	insertarResult.addEventListener(ResultEvent.RESULT, insertComplete);
}

protected function dropDownList3_creationCompleteHandler(event:FlexEvent):void
{
	comboItemsResult.token = modelo.comboItems();
}




protected function dropDownList9_creationCompleteHandler(event:FlexEvent):void
{
	comboGrupoIndicesFinancierosResult.token = modelo.comboGrupoIndicesFinancieros();
}



private function llenaSubGrupos(event:ResultEvent):void{
	dgSubGrupo.dataProvider = event.result as ArrayCollection;
}


protected function dgSubGrupo_creationCompleteHandler(event:FlexEvent):void
{
	grillaSubGruposResult.token = modelo.grillaSubGrupos();
	grillaSubGruposResult.addEventListener(ResultEvent.RESULT, llenaSubGrupos);
}


protected function completaIndices(event:ResultEvent):void{
	dgGrupoIndices.dataProvider = grillaGrupoIndicesResult.lastResult
}

/*
protected function dgGrupoIndices_creationCompleteHandler(event:FlexEvent):void
{
	grillaGrupoIndicesResult.token = modelo.grillaGrupoIndices();
	grillaGrupoIndicesResult.addEventListener(ResultEvent.RESULT, completaIndices)
}*/

protected function dgMonedas_creationCompleteHandler(event:FlexEvent):void
{
	grillaMonedasResult.token = modelo.grillaMonedas();
}



private function generaPagina(event:ResultEvent):void{
	
	if(gruposFinancierosResult.lastResult != null && subGruposFinancierosResult.lastResult && empresasResult.lastResult){
		var arrGrupos:ArrayCollection = gruposFinancierosResult.lastResult;
		var arrSubGrupo:ArrayCollection = subGruposFinancierosResult.lastResult;
		var arrEmpresas:ArrayCollection = empresasResult.lastResult;
		try{
			for(var i:int = 0; i < arrGrupos.length; i++){
				var comp:ContenidoAcordeon = new ContenidoAcordeon();
				comp.btnLabel = arrGrupos.getItemAt(i)['nombre'];
				acGrupos.addElement(comp);
				comp.heightClick = 20;
				try{
					for(var j:int = 0; j < arrSubGrupo.length; j++){
						if(arrGrupos.getItemAt(i)['ID_TIPO_EMPRESA'] == arrSubGrupo.getItemAt(j)['ID_TIPO_EMPRESA']){
							var subComp:ContenidoAcordeon = new ContenidoAcordeon();
							subComp.height = 20;
							subComp.width = 180;
							subComp.setStyle('fontSize', 10);
							subComp.btnLabel = arrSubGrupo.getItemAt(j)['nombre'];
							comp.contenido.push(subComp);
							comp.heightClick += subComp.height;
							
							try{
								for(var x:int = 0; x < arrEmpresas.length; x++){
									if(arrEmpresas.getItemAt(x)['ID_SUBGRUPO'] == arrSubGrupo.getItemAt(j)['ID_SUBGRUPO']){
										var chk:CheckBox = new CheckBox();
										chk.label = arrEmpresas.getItemAt(x)['RSO'];	
										chk.data = arrEmpresas.getItemAt(x);
										chk.addEventListener(MouseEvent.CLICK, agregaEmpresa);
										chk.height = 20;
										chk.width = 180;
										subComp.contenido.push(chk);
										subComp.heightClick += chk.height;	
									}
									
								}	
							} catch(s:*){
								
							}
							
							
							
						}
						
					}	
				} catch(h:*){
					
				}
				
			}	
		} catch(e:*){
			Alert.show('' + e);
		}
		
	}
	
}

protected function crearEsquema_creationCompleteHandler(event:FlexEvent):void
{
	// TODO Auto-generated method stub
	//Alert.show('' + ExternalInterface.available);
	gruposFinancierosResult.token = modelo.grillaTodosGrupos();
	subGruposFinancierosResult.token = modelo.grillaTodoSubGrupos();
	empresasResult.token = modelo.grillaTodasEmpresa();
	
	gruposFinancierosResult.addEventListener(ResultEvent.RESULT, generaPagina);
	subGruposFinancierosResult.addEventListener(ResultEvent.RESULT, generaPagina);
	empresasResult.addEventListener(ResultEvent.RESULT, generaPagina);
}

private function agregaEmpresa(event:MouseEvent):void{
	if((event.target as CheckBox).selected == true){
		if(!listEmpresaSelect.dataProvider){
			listEmpresaSelect.dataProvider = new ArrayCollection();
		}
		listEmpresaSelect.dataProvider.addItem({label:(event.target as CheckBox).data['NOMBRE_FANTASIA'], cod:(event.target as CheckBox).data['ID_EMPRESA']});
		
	} else{
		for(var i:int = 0; i < listEmpresaSelect.dataProvider.length; i++){
			if(listEmpresaSelect.dataProvider[i]['cod'] == (event.target as CheckBox).data['ID_EMPRESA']){
				listEmpresaSelect.dataProvider.removeItemAt(i);
			}
		}
	}
}


private function agregaIndice(event:MouseEvent):void{
	if((event.target as CheckBox).selected == true){
		if(!listIndices.dataProvider){
			listIndices.dataProvider = new ArrayCollection();
		}
		listIndices.dataProvider.addItem({label:(event.target as CheckBox).data['NOMBRE'], cod:(event.target as CheckBox).data['ID_INDICE_FINANCIERO']});
		
	} else{
		for(var i:int = 0; i < listIndices.dataProvider.length; i++){
			if(listIndices.dataProvider[i]['cod'] == (event.target as CheckBox).data['ID_INDICE_FINANCIERO']){
				listIndices.dataProvider.removeItemAt(i);
			}
		}
	}
}


private function generaPagina2(event:ResultEvent):void{
	vgIndices.removeAllElements();
	if(grillaGrupoIndicesResult.lastResult != null && grillaIndicesFinancierosResult.lastResult){
		var arrGrupoIndices:ArrayCollection = grillaGrupoIndicesResult.lastResult;
		var arrIndicesFinancieros:ArrayCollection = grillaIndicesFinancierosResult.lastResult;
		try{
			for(var i:int = 0; i < arrGrupoIndices.length; i++){
				var comp:ContenidoAcordeon = new ContenidoAcordeon();
				comp.btnLabel = arrGrupoIndices.getItemAt(i)['nombre'];
				vgIndices.addElement(comp);
				comp.heightClick = 20;
				try{
					for(var x:int = 0; x < arrIndicesFinancieros.length; x++){
						if(arrIndicesFinancieros.getItemAt(x)['ID_GRUPO_INDICE_FINANCIERO'] == arrGrupoIndices.getItemAt(i)['ID_GRUPO_INDICE_FINANCIERO']){
							var chk:CheckBox = new CheckBox();
							
							chk.addEventListener(MouseEvent.CLICK, agregaIndice);
							chk.label = arrIndicesFinancieros.getItemAt(x)['NOMBRE'];	
							chk.data = arrIndicesFinancieros.getItemAt(x);
							chk.height = 20;
							chk.width = 180;
							comp.contenido.push(chk);
							comp.heightClick += chk.height;	
						}
						
					}	
				} catch(s:*){
					Alert.show('' + s);
				}
				
			}	
		} catch(e:*){
			Alert.show('' + e);
		}
		
	}
	
}

protected function vgIndices_creationCompleteHandler(event:FlexEvent):void
{
	// TODO Auto-generated method stub
	grillaIndicesFinancierosResult.token = modelo.grillaTodoIndicesFinancieros();
	grillaGrupoIndicesResult.token = modelo.grillaTodosGrupoIndices();
	
	grillaIndicesFinancierosResult.addEventListener(ResultEvent.RESULT, generaPagina2);
	grillaGrupoIndicesResult.addEventListener(ResultEvent.RESULT, generaPagina2);
	//listPeriodo.dataProvider.removeAll();
}



protected function dropdownlist1_changeHandler(event:IndexChangeEvent):void
{
	// TODO Auto-generated method stub
	//switch(event)
	event.stopImmediatePropagation();
	var arr:ArrayCollection = new ArrayCollection();
	switch(event.newIndex){
		case 0:
			listPeriodo.dataProvider = arrAnual;
			break;
		case 1:
			listPeriodo.dataProvider = arrTrimestre;
			break;
		case 2:
			
			break;
	}
}






[Bindable]private var ComboBoxEmpresaPrincipalSelectedIndex:int; 
protected function llenaComboEmpresas(event:ResultEvent):void{
	arrEmpresas = event.result as ArrayCollection;
	arrEmpresasTotal = event.result as ArrayCollection;
	var i:int = 0;
	for each(var o:Object in arrEmpresasTotal){
		if(o['ID_EMPRESA'] == 730){
			ComboBoxEmpresaPrincipalSelectedIndex = i;
			break;
		}
		i++;
		
	}
	
}


protected function comboBox_creationCompleteHandler(event:FlexEvent):void
{
	grillaTodasEmpresaResult.token = modelo.comboEmpresa();
	grillaTodasEmpresaResult.addEventListener(ResultEvent.RESULT, llenaComboEmpresas);
}


private function actDrop(event:Event):void{
	Alert.show('');
}

protected function comboBox_keyDownHandler(event:KeyboardEvent):void
{
	// TODO Auto-generated method stub
	arrEmpresas = new ArrayCollection();
	var patt:RegExp = new RegExp("(^)" + event.target.text, 'i');
	for(var i:int = 0; i < arrEmpresasTotal.length; i++){
		if((arrEmpresasTotal.getItemAt(i)['NOMBRE_FANTASIA'] as String).search(patt) > -1){
			arrEmpresas.addItem(arrEmpresasTotal.getItemAt(i));
		}
	}
	//comboBoxEmpresa.dropDown.addEventListener(Event.ACTIVATE, actDrop);
	
}

protected function comboBoxEmpresa_changeHandler(event:IndexChangeEvent):void
{
	// TODO Auto-generated method stub
	var o:Object = {label:comboBoxEmpresa.selectedItem['NOMBRE_FANTASIA'], cod:comboBoxEmpresa.selectedItem['ID_EMPRESA']};
	
	//Alert.show('' + o.className)
	if(listEmpresaSelect.dataProvider == null){
		listEmpresaSelect.dataProvider = new ArrayCollection(); 
	}
	listEmpresaSelect.dataProvider.addItem(o);
}

private function borrarEmpresa():Boolean{
	if(listEmpresaSelect.dataProvider.length > 0){
		return true;	
	} else{
		return false;
	}
	
}

protected function btnBorrarEmpresa_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	var n:int = listEmpresaSelect.selectedIndices.length;
	for each(var i:int in listEmpresaSelect.selectedIndices){
		
		listEmpresaSelect.dataProvider.removeItemAt(i);
	}
}
protected function button4_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	try{
		acAplicacion.selectedIndex = 1;
		var empresas:String = '';
		var periodos:String = 'AND a.id_periodo in (0';
		var tagAgf:String = 'AND b.id_indice_financiero in (0';
		listSeleccionEmpresas.dataGroup.getChildAt(0)
		var item:Object;
		var x:int = 0;
		var y:int = 0;
		for(var i:int = 0; i < listSeleccionEmpresas.dataProvider.length; i++){
			item = listSeleccionEmpresas.dataProvider.getItemAt(i);
			empresas += '0';
			/*for each(o in item.listEmpresas.selectedItems){
				empresas += ', ' + o['id_empGrupo'];
				
			}*/	
			var count:int = 0;
			var arrData:ArrayCollection = (item.asociados as ArrayCollection);
				
			for(var j:int = 0; j < arrData.length; j++){
				if(arrData.getItemAt(j)['sel'] == true){
					empresas += ', ' + arrData.getItemAt(j)['id_empGrupo'];
					count++;
				}
			}
			
			empresas += '):';
			_cant[i] = count;//item.listEmpresas.selectedItems.length;
		}
		//y = listSeleccionEmpresas.dataGroup.numElements
		
		//_cant = x * y;
		
		empresas += ')';
		
		if(rbPeriodosActivos.selected == true){
			for each(var o:Object in listPeriodo.selectedItems){
				periodos += ', ' + o['id_periodo'];
			}
			periodos += ')';	
		} else {
			periodos = ' ';
		}
		
		
		for each(o in listSeleccionEmpresas.dataProvider){
			tagAgf += ', ' + o['id_indice'];
		}
		tagAgf += ')';
		bloqueo.width = this.width;
		bloqueo.height = this.height;
		PopUpManager.addPopUp(bloqueo, this);
		
		if(ComboBoxEmpresaPrincipal.selectedIndex == -1){
			ComboBoxEmpresaPrincipal.selectedIndex = ComboBoxEmpresaPrincipalSelectedIndex; 
		}
		valoresResult.token = modelo.valores(ComboBoxEmpresaPrincipal.selectedItem['ID_EMPRESA'], empresas, periodos, tagAgf, ddlPeriodo.selectedItem['data']);
		valoresResult.addEventListener(ResultEvent.RESULT, grafica_);
		/*
		nvGrafico.removeAllElements();
		tnGrafico.selectedIndex = 2;*/
		tnGrafico.removeAllElements();
		
		
	} catch(e:*){
		Alert.show('Debe completar todos los campos para poder graficar', 'Atención');
		PopUpManager.removePopUp(bloqueo);
	}
	
}



private var arrGraf:ArrayCollection;
private function grafica_(event:ResultEvent):void{	
	var arr:ArrayCollection = event.result as ArrayCollection;
	var i:int = 0;
	for each(var o:Object in arr){
		
		var arrParam:ArrayCollection = new ArrayCollection(o as Array);
		if(arrParam.length > 0){
			var nc:NavigatorContent = new NavigatorContent();
			//var gr:LayoutGrafic = (listSeleccionEmpresas.dataGroup.getElementAt(i) as Listado).removeElement((listSeleccionEmpresas.dataGroup.getElementAt(i) as Listado)['graficoPoint']) as LayoutGrafic;
			var gr:LayoutGrafic = new LayoutGrafic();
			nc.label = listSeleccionEmpresas.dataProvider.getItemAt(i)['indice'];
			tnGrafico.addElement(nc);
			nc.addElement(gr);
			nc.setStyle('fontSize', 14);
			gr.setStyle('fontSize', 11);
			gr.horizontalCenter = 0;
			gr.verticalCenter = 0;
			gr.width = 1000;
			//gr.visible = false
			grafica(arrParam, i++);	
		} else {
			PopUpManager.removePopUp(bloqueo);
		}
		
	}
}


private function grafica(arr:ArrayCollection, ind:int):void{
	
	
	var gr:LayoutGrafic = (tnGrafico.getElementAt(ind) as NavigatorContent).getElementAt(0) as LayoutGrafic;
	gr.flatData = new ArrayCollection();
	gr._arrReferente = new ArrayCollection();
	gr._arrVariacion = new ArrayCollection();
	
	var str_inicial:String = '' + arr.getItemAt(0)['id_tag_agf'];
	
	gr._arr = new ArrayCollection();
	gr.arrAct = new ArrayCollection();
	gr.arrAct2 = new ArrayCollection();
	gr.arrAct3 = new ArrayCollection();
	var idPeriodo:String = arr[0]['label'];
	//var format:NumberFormatter = new NumberFormatter('de-DE');
	
	var obAdd:Object = {};
	obAdd['label'] = idPeriodo;
	var sw:Boolean = true;
	var i:int = 0;
	gr.seriesColumn = new Array();
	
	for(var x:int = 0; x < _cant[ind] ; x++){
		gr.seriesColumn[x] = new ColumnSeries();
		(gr.seriesColumn[x] as ColumnSeries).yField = 'a'+x;
		(gr.seriesColumn[x] as ColumnSeries).visible = false;
		
	}
	
	
	
	
	
	
	for each(var o:Object in arr){
		if(o['graf'] == 2){
			break;
		}
		obAdd['nombre'] = o['nombre_final'] + '(' + o['label'] + ')';
		if(idPeriodo == o['label']){
			obAdd['a'+i] = roundDecimals(o['valor'] as Number, 1);///1000;
			if(obAdd['arr'] == null){
				var a:Array = [];
				obAdd['arr'] = a;
			}
			obAdd['arr'].push(roundDecimals(o['valor'] as Number, 1));///1000);
			//if(sw){
			
			
			var stro:SolidColorStroke = new SolidColorStroke();
			var colorLine:SolidColor = new SolidColor();
			stro.weight = 2;
			colorLine.alpha = 1;
			stro.color = o['color'];
			colorLine.color = o['color'];
			if(sw){
				(gr.seriesColumn[i] as ColumnSeries).setStyle('fill', colorLine);
				(gr.seriesColumn[i] as ColumnSeries).displayName = o['nombre_final'];
				(gr.seriesColumn[i] as ColumnSeries).setStyle('showDataEffect', interpolateIn);				
				(gr.seriesColumn[i] as ColumnSeries).visible = true;					
			}
			
			//	}
		} else{
			sw = false;
			
			gr.arrAct.addItem(obAdd);
			obAdd = {};
			idPeriodo = o['label'];
			obAdd['label'] = idPeriodo;
			i = 0;
			obAdd['a' + i] = roundDecimals(o['valor'] as Number, 1);///1000;
			if(obAdd['arr'] == null){
				a = [];
				obAdd['arr'] = a;
			}
			obAdd['arr'].push(roundDecimals(o['valor'] as Number, 1));///1000);
		}
		i++;
	}
	
	gr.arrAct.addItem(obAdd);
	
	
	
	for(i = 1; i < gr.arrAct.length; i++){
		o = new Object();
		o['arrVal'] = [];
		for(var str:String in gr.arrAct.getItemAt(i)){
			o[str] = gr.arrAct.getItemAt(i)[str];	
		}
		for(j = 0; j < gr.arrAct.getItemAt(i)['arr'].length; j++){
			gr.arrAct.getItemAt(i)['QAnt' + j] = gr.arrAct.getItemAt(i - 1)['arr'][j];	
			//o['a' + j] = roundDecimals((((o['a' + j]/gr.arrAct.getItemAt(i - 1)['arr'][j]) - 1) * 100) as Number, 1);
			o['a' + j] = roundDecimals((((o['a' + j]/gr.arrAct.getItemAt(i - 1)['arr'][j]) - 1) * 100) as Number, 1);
			o['arrVal'].push(o['a' + j]);
		}
		gr.arrAct3.addItem(o);
	}
	
	obAdd = {};
	idPeriodo = arr[0]['label'];
	i = 0;
	for each(o in arr){
		if(o['graf'] == 2){
			
			if(idPeriodo == o['label']){
				obAdd['nombre'] = o['nombre_final'] + '(' + o['label'] + ')';
				obAdd['a'+i] = roundDecimals(o['valor'] as Number, 1);
				if(sw){
					
					
					
					
				}
			} else{
				sw = false;
				gr.arrAct2.addItem(obAdd);
				obAdd = {};
				idPeriodo = o['label'];
				obAdd['label'] = idPeriodo;
				i = 0;
				obAdd['a' + i] = roundDecimals(o['valor'] as Number, 1);
			}
			i++;
		}
	}
	
	gr.arrAct2.addItem(obAdd);
	columnas = gr.arrAct;
	
	var h:int = 0;
	/*while(gr['columnasChart'] == null){
		h++;
	}*/
	
//	gr['nvGrafico'].addElement(gr['columnasChart']);
//	gr['columnasChart']['rbInicial']['selected'] = true;
//	gr['columnasChart']['rbInicial'].dispatchEvent(new MouseEvent(MouseEvent.CLICK));
	PopUpManager.removePopUp(bloqueo);
	
	
	for each(var o:Object in arr){
		if(o['graf'] == 1){
			gr._arr.addItem({periodo: o['label'], rso: o['rso'], valor: roundDecimals(o['valor'] as Number, 1), year: o['year']});
		}
		
	}
	
	for each(o in arr){
		if(o['graf'] == 2){
			gr._arrReferente.addItem({periodo: o['label'], rso: o['rso'], valor: roundDecimals(o['valor'] as Number, 1), year: o['year']});
		}
		
	}
	var j:int = 0;
	var count:int = 0;
	x = 0;
	
		
	
	for each(o in arr){
		if(o['graf'] == 3){
			gr._arrVariacion.addItem({periodo: o['label'], rso: o['rso'], valor: roundDecimals(o['valor'] as Number, 1), year: o['year']});
		}
		
	}
	
	
	
	
	listSeleccionEmpresas.dataProvider.getItemAt(ind).flatData = listSeleccionEmpresas.dataProvider.getItemAt(ind)._arr;
	//listSeleccionEmpresas.dataGroup.getElementAt(ind)['grafico']['myMXMLCube'].refresh();
	//tnGrafico.selectedIndex = 0;
	gr['visible'] = true;
}


private function graficaResp(event:ResultEvent):void{
	
	/*
	flatData = new ArrayCollection();
	this._arrReferente = new ArrayCollection();
	this._arrVariacion = new ArrayCollection();
	
	
	if(ArrayCollection(event.result).length){
		var arr:ArrayCollection = event.result as ArrayCollection;
		
		var str_inicial:String = '' + arr.getItemAt(0)['id_tag_agf'];
		
		
		
		
		
		
		this._arr = new ArrayCollection();
		arrAct = new ArrayCollection();
		arrAct2 = new ArrayCollection();
		arrAct3 = new ArrayCollection();
		var idPeriodo:String = arr[0]['label'];
		//var format:NumberFormatter = new NumberFormatter('de-DE');
		
		var obAdd:Object = {};
		obAdd['label'] = idPeriodo;
		var sw:Boolean = true;
		i = 0;
		seriesColumn = new Array();
		
		for(x = 0; x < _cant ; x++){
			seriesColumn[x] = new ColumnSeries();
			(seriesColumn[x] as ColumnSeries).yField = 'a'+x;
			(seriesColumn[x] as ColumnSeries).visible = false;
			
		}
		
		
		
		
		
		
		for each(o in arr){
			if(o['graf'] == 2){
				break;
			}
			obAdd['nombre'] = o['nombre_final'] + '(' + o['label'] + ')';
			if(idPeriodo == o['label']){
				obAdd['a'+i] = roundDecimals(o['valor'] as Number, 1);///1000;
				if(obAdd['arr'] == null){
					var a:Array = [];
					obAdd['arr'] = a;
				}
				obAdd['arr'].push(roundDecimals(o['valor'] as Number, 1));///1000);
				//if(sw){
				
				
				var stro:SolidColorStroke = new SolidColorStroke();
				var colorLine:SolidColor = new SolidColor();
				stro.weight = 2;
				colorLine.alpha = 1;
				stro.color = o['color'];
				colorLine.color = o['color'];
				if(sw){
					(seriesColumn[i] as ColumnSeries).setStyle('fill', colorLine);
					(seriesColumn[i] as ColumnSeries).displayName = o['nombre_final'];
					(seriesColumn[i] as ColumnSeries).setStyle('showDataEffect', interpolateIn);				
					(seriesColumn[i] as ColumnSeries).visible = true;					
				}
				
				//	}
			} else{
				sw = false;
				
				arrAct.addItem(obAdd);
				obAdd = {};
				idPeriodo = o['label'];
				obAdd['label'] = idPeriodo;
				i = 0;
				obAdd['a' + i] = roundDecimals(o['valor'] as Number, 1);///1000;
				if(obAdd['arr'] == null){
					a = [];
					obAdd['arr'] = a;
				}
				obAdd['arr'].push(roundDecimals(o['valor'] as Number, 1));///1000);
			}
			i++;
		}
		
		arrAct.addItem(obAdd);
		
		
		
		for(i = 1; i < arrAct.length; i++){
			o = new Object();	
			for(var str:String in arrAct.getItemAt(i)){
				o[str] = arrAct.getItemAt(i)[str];	
			}
			for(var j:int = 0; j < arrAct.getItemAt(i)['arr'].length; j++){
				arrAct.getItemAt(i)['QAnt' + j] = arrAct.getItemAt(i - 1)['arr'][j];	
				o['a' + j] = roundDecimals((((o['a' + j]/arrAct.getItemAt(i - 1)['arr'][j]) - 1) * 100) as Number, 1);
			}
			arrAct3.addItem(o);
		}
		
		obAdd = {};
		idPeriodo = arr[0]['label'];
		i = 0;
		for each(o in arr){
			if(o['graf'] == 2){
				
				if(idPeriodo == o['label']){
					obAdd['nombre'] = o['nombre_final'] + '(' + o['label'] + ')';
					obAdd['a'+i] = roundDecimals(o['valor'] as Number, 1);
					if(sw){
						
						
						
						
					}
				} else{
					sw = false;
					arrAct2.addItem(obAdd);
					obAdd = {};
					idPeriodo = o['label'];
					obAdd['label'] = idPeriodo;
					i = 0;
					obAdd['a' + i] = roundDecimals(o['valor'] as Number, 1);
				}
				i++;
			}
		}
		arrAct2.addItem(obAdd);
		columnas = arrAct;	
		nvGrafico.addElement(columnasChart);
		columnasChart.rbInicial.selected = true;
		columnasChart.rbInicial.dispatchEvent(new MouseEvent(MouseEvent.CLICK));
		PopUpManager.removePopUp(bloqueo);
	}
	
	for each(var o:Object in arr){
		if(o['graf'] == 1){
			this._arr.addItem({periodo: o['label'], rso: o['rso'], valor: roundDecimals(o['valor'] as Number, 1), year: o['year']});
		}
		
	}
	
	for each(o in arr){
		if(o['graf'] != 1){
			this._arrReferente.addItem({periodo: o['label'], rso: o['rso'], valor: roundDecimals(o['valor'] as Number, 1), year: o['year']});
		}
		
	}
	var j:int = 0;
	var count:int = 0;
	var x:int = 0;
	
	count = arrAct3.getItemAt(0)['arr']['length'];
	
	
	for(var i:int = count; i < arr.length; i++){
		o = arr.getItemAt(i);
		if(o['graf'] == 1){
			if(j < count){
			} else {
				x++;
				j = 0;
			}
			this._arrVariacion.addItem({periodo: o['label'], rso: o['rso'], valor: roundDecimals(arrAct3.getItemAt(x)['a' + (j++)] as Number, 1), year: o['year']});
		}
	}
	
	arrGraf.addItem({arrAct: arrAct, arrAct2: arrAct2, arrAct3: arrAct3});
	
	
	
	
	flatData = this._arr;
	//	myMXMLCube = new OLAPCube();
	myMXMLCube.refresh();
	tnGrafico.selectedIndex = 0;
	//nvGrafico.addElement(columnasChart);*/
}


protected function setRandToPie():void {
	var i:int;
	var cnt:int = Math.round(Math.random()*5) + 3;
	var item:Object;
	var toSet:ArrayCollection = new ArrayCollection();
	
	
	for (i = 0; i < cnt; i++) {
		item = {title: (i + 1) + " : ", value: Math.random() * 100};
		toSet.addItem(item);
	}
	
	var temp:Array = [];
	var str:String = "[";
	
	
	for (i = 0; i < cnt; i++) {
		var colorItem:Object = {};
		colorItem.r = Math.round(Math.random() * 255);
		colorItem.g = Math.round(Math.random() * 255);
		colorItem.b = Math.round( Math.random() * 255);
		str += "{r:" + colorItem.r + ", g:" + colorItem.g + ", b:" + colorItem.b + "}";
		
		
		if (i < cnt - 1) {
			str += ", ";
		}
		temp.push(colorItem);
	}
	str += "]";
}



private function cargaPeriodos(event:ResultEvent):void{
	for each(var i:Object in event.result){
		if(i['oa'] == 1){
			
			arrTrimestre.addItem(i);
		} else{
			arrAnual.addItem(i);
		}
	}
	listPeriodo.dataProvider = arrTrimestre;
}


protected function listPeriodo_creationCompleteHandler(event:FlexEvent):void
{
	periodosResult.token = modelo.periodos();
	periodosResult.addEventListener(ResultEvent.RESULT, cargaPeriodos);
}




private function resp(event:ResultEvent):void{
	agregaItem.dataGrid.dataProvider = event.result as ArrayCollection;
	
}

protected function dataGrid_creationCompleteHandler(event:FlexEvent):void
{
	grillaAgfResult.token = modelo.grillaAgf();
	grillaAgfResult.addEventListener(ResultEvent.RESULT, resp);
}
protected function button6_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	this.currentState = 'item';
}




private function guardaItem(event:MouseEvent):void{
	//Alert.show('' + event.target);
	insertarResult.token = modelo.insertarItem([(event.target.parent.parent as ItemFormulario).txtAgregarItem.text, (event.target.parent.parent as ItemFormulario).txtAgregarItem.text, 'NO ESPECIFICA', 'MANUAL', 1], 'tag_agf', dropDownListEmpresa.selectedItem['ID_EMPRESA']);
	(event.target.parent.parent as ItemFormulario).currentState = 'normal';
	insertarResult.addEventListener(ResultEvent.RESULT, reCreaForm);
}

private function valorGuardado(event:ResultEvent):void{
	Alert.show('Formulario Guardado con Exito');
}




protected function btnAccion_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	switch(event.target.label){
		case 'Crear Item':
			var item:ItemFormulario = new ItemFormulario();
			item.currentState = 'creando';
			item.clickGuardar = guardaItem;
			item.deleteGuardar = EliminaItemFormulario;
			
			
			tbFormulario.selectedIndex = tbFormulario.numElements - 1;
			
			if(tbFormulario.numElements == 0){
				nc = new NavigatorContent();
				tbFormulario.addElement(nc);
			}
			
			if((tbFormulario.selectedChild as NavigatorContent).numElements > 7){
				var nc:NavigatorContent = new NavigatorContent();
				nc.layout = new VerticalLayout();
				nc.label = 'Parte ' + tbFormulario.numElements;
				tbFormulario.addElement(nc);
				
			}
			tbFormulario.selectedIndex = tbFormulario.numElements - 1;
			(tbFormulario.getElementAt(tbFormulario.selectedIndex) as NavigatorContent).addElement(item);
			break;
		case 'Guardar Formulario':
			var arr:Array = tbFormulario.getChildren();
			var arrRes:Array = [];
			for(var i:int = 0; i < arr.length; i++){
				var n:int = (arr[i] as NavigatorContent).numElements;
				for(var j:int = 0; j < n; j++){
					if(((arr[i] as NavigatorContent).getElementAt(j) as ItemFormulario).txtValorItem.text != ''){
						//arrRes.push(({label : ((arr[i] as NavigatorContent).getElementAt(j) as ItemFormulario).lblItem.text, valor : ((arr[i] as NavigatorContent).getElementAt(j) as ItemFormulario).txtValorItem.text});
						valoresGuardadosResult.token = modelo.insertarValor([((arr[i] as NavigatorContent).getElementAt(j) as ItemFormulario).lblItem.text,  dropDownListEmpresa.selectedItem['ID_EMPRESA'], dropDownListPeriodo.selectedItem['id_periodo'], ((arr[i] as NavigatorContent).getElementAt(j) as ItemFormulario).txtValorItem.text]);
						valoresGuardadosResult.addEventListener(ResultEvent.RESULT, valorGuardado);
					}
					
				}
			}
			break;
		case 'Agregar Item':
			agregaItem.dataGrid_completo = dataGrid_creationCompleteHandler;
			agregaItem.button_clickHandler = button5_clickHandler;
			agregaItem.titlewindow_closeHandler = titlewindow1_closeHandler;
			agregaItem.width = this.width;
			agregaItem.height = this.height;
			
			PopUpManager.addPopUp(agregaItem, this);
			break;
	}
}

protected function button5_clickHandler(dataGrid:DataGrid):void
{
	// TODO Auto-generated method stub
	if(dataGrid.selectedIndex > -1){
		var item:ItemFormulario = new ItemFormulario();
		//item.currentState = 'creando';
		item.clickGuardar = guardaItem;
		item.deleteGuardar = EliminaItemFormulario;
		tbFormulario.selectedIndex = tbFormulario.numElements - 1;
		
		if(tbFormulario.numElements == 0 || (tbFormulario.selectedChild as NavigatorContent).numElements > 7){
			var nc:NavigatorContent = new NavigatorContent();
			nc.layout = new VerticalLayout();
			nc.label = 'Parte ' + tbFormulario.numElements;
			tbFormulario.addElement(nc);
			
		}
		item.lblItem = new Label();
		item.label = dataGrid.selectedItem['nombre'];
		
		item.lblItem.text = dataGrid.selectedItem['nombre'];
		tbFormulario.selectedIndex = tbFormulario.numElements - 1;
		(tbFormulario.getElementAt(tbFormulario.selectedIndex) as NavigatorContent).addElement(item);
		PopUpManager.removePopUp(agregaItem);
		insertarResult.token = modelo.insertarItemExistente(dropDownListEmpresa.selectedItem['ID_EMPRESA'], dataGrid.selectedItem['id_tag_agf']);
		tbFormulario.removeAll();
		nc = new NavigatorContent();
		nc.label = 'Parte ' + tbFormulario.numElements;
		tbFormulario.addElement(nc);
		insertarResult.addEventListener(ResultEvent.RESULT, reCreaForm);
	}
}
protected function titlewindow1_closeHandler():void
{
	// TODO Auto-generated method stub
	PopUpManager.removePopUp(agregaItem);
}


private function reCreaForm(event:ResultEvent):void{
	//tbFormulario.removeAllElements();
	valores2Result.token = modelo.valores2(dropDownListEmpresa.selectedItem['ID_EMPRESA'], dropDownListPeriodo.selectedItem['id_periodo']);	
}

private function EliminaItemFormulario(event:MouseEvent):void{
	//Alert.show(event.target.parent.parent);
	formGuardadosResult.token = modelo.deleteFormularioItem(dropDownListEmpresa.selectedItem['ID_EMPRESA'], (event.target.parent as ItemFormulario).idTagAgf);
	formGuardadosResult.addEventListener(ResultEvent.RESULT, reCreaForm);
	(event.target.parent.parent.parent.parent as NavigatorContent).removeAllElements();
	
}


private function creaForm(event:ResultEvent):void{
	var arr:ArrayCollection = event.result as ArrayCollection;
	tbFormulario.removeAll();
	
	
	for each(var o:Object in arr){
		var item:ItemFormulario = new ItemFormulario();
		//tbFormulario.removeAll();
		//item.currentState = 'creando';
		tbFormulario.selectedIndex = tbFormulario.numElements - 1;
		if(tbFormulario.selectedIndex < 0 || (tbFormulario.selectedChild as NavigatorContent).numElements > 7){
			var nc:NavigatorContent = new NavigatorContent();
			nc.layout = new VerticalLayout();
			nc.label = 'Parte ' + (tbFormulario.numElements + 1);
			tbFormulario.addElement(nc);
			
		}
		item.lblItem = new Label();
		item.label = o['nombre'];
		item.width = 600;
		item.idTagAgf = o['id_tag_agf'];
		item.lblItem.text = o['nombre'];
		item.txtValorItem = new spark.components.TextInput();
		item.deleteGuardar = EliminaItemFormulario;
		if(o['valor'] == null){
			o['valor'] = '';
		}
		item.valor = '' + o['valor'];
		tbFormulario.selectedIndex = tbFormulario.numElements - 1;
		(tbFormulario.getElementAt(tbFormulario.selectedIndex) as NavigatorContent).addElement(item);
	}
	//modelo.comboItems();
	if(tbFormulario.numElements > 0){
		tbFormulario.selectedIndex = 0;
	}
	
}

protected function dropDownListEmpresa_changeHandler(event:IndexChangeEvent):void
{
	// TODO Auto-generated method stub
	if(dropDownListEmpresa.selectedIndex > -1 && dropDownListPeriodo.selectedIndex > -1){
		valores2Result.addEventListener(ResultEvent.RESULT, creaForm);
		tbFormulario.removeAllElements();
		var v:NavigatorContent = new NavigatorContent();
		tbFormulario.addElement(v);
		v.layout = new VerticalLayout;
		v.label = 'Parte ' + tbFormulario.numElements;
		valores2Result.token = modelo.valores2(dropDownListEmpresa.selectedItem['ID_EMPRESA'], dropDownListPeriodo.selectedItem['id_periodo']);
	}
}


protected function dgGrupo_creationCompleteHandler(event:FlexEvent):void
{
	grillaGruposResult.token = modelo.grillaGrupos();
}


protected function indicesResult(event:ResultEvent):void
{
	dgIndicesFinancieros.dataProvider = (event.result as ArrayCollection);
}

protected function dgIndicesFinancieros_creationCompleteHandler(event:FlexEvent):void
{
	grillaEmpresaResult.token = modelo.grillaEmpresa();
	
	
	grillaIndicesFinancierosResult.token = modelo.grillaIndicesFinancieros();
	grillaIndicesFinancierosResult.addEventListener(ResultEvent.RESULT, indicesResult);
}

/*protected function columnasChart_clickHandler(event:MouseEvent):void
{
	// TODO Auto-generated method stub
	flatData = new ArrayCollection();
	if(event.target.className == 'RadioButton'){
		switch(event.target.label){
			case 'Normal':
				columnasChart.prov = arrAct;
				flatData = this._arr;

				break;
			case 'Referente':
				columnasChart.prov = arrAct2;
				flatData = this._arrReferente;

				break;
			case 'Variación':
				columnasChart.prov = arrAct3;
				var j:int = 0;
				var count:int = 0;
				var x:int = 0;
				
				count = arrAct3.getItemAt(0)['arr']['length'];
				flatData = this._arrVariacion;
				

				break;
		}
		
	}
	
	myMXMLCube.refresh();
}*/

public function roundDecimals(value:Number, decimals:int):Number
{
	var multiple:String = "1";
	for( var i = 0; i<decimals; i++)
	{
		multiple += "0";
	}
	var multi:Number = new Number(multiple)
	return ( Math.round( value * multi ) / multi);
	
}
