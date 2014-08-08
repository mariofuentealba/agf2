package model
{
	
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.Application;
	
	
	[Bindable]
	public class ModelApp
	{
		private static var modelLocator:ModelApp;
		public var arrXBRL:ArrayCollection = new ArrayCollection();
		public var arrFormulas:ArrayCollection = new ArrayCollection();
		public var arrFormulasIndice:ArrayCollection;
		public var arrEmpresas:ArrayCollection;
		
		public var arrRut:ArrayCollection = new ArrayCollection();
		public var arrEmpresasASelec:ArrayCollection = new ArrayCollection();
		public var arrSubGrupo:ArrayCollection = new ArrayCollection();
		
		public var xmlEmpresas:XML;
		public var arrdropDownListEmpresa:ArrayCollection = new ArrayCollection();
		
		/*******************************************************************/
		
		public var arrEmpresas2:ArrayCollection = new ArrayCollection();
		public var arrItemManual:ArrayCollection = new ArrayCollection();
		public var arrIndice:ArrayCollection = new ArrayCollection();
		public var arrItemXBRL:ArrayCollection = new ArrayCollection();
		public var arrContextos:ArrayCollection = new ArrayCollection();
		public var arrPeriodos:ArrayCollection = new ArrayCollection();
		
		
		
		/*******************************************************************/
		
		public static function getInstance():ModelApp
		{
			if ( modelLocator == null ){
				modelLocator = new ModelApp();
			}
			
			return modelLocator;
		}
		
		public function ModelApp()
		{
			if(modelLocator){
				throw new Error("Singleton... use getInstance()");
			} 
			modelLocator = this;
		}
		
		
	}
}