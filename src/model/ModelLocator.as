package model
{
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.Application;
	
	
	[Bindable]
	public class ModelLocator
	{
		private static var modelLocator:ModelLocator;
		
		
		/**********************Contienen Todo***********************************/
		
		public var arrEmpresas:ArrayCollection = new ArrayCollection();
		public var arrItemManual:ArrayCollection = new ArrayCollection();
		public var arrItemXbrl:ArrayCollection = new ArrayCollection();
		public var arrIndices:ArrayCollection = new ArrayCollection();
		public var arrPeriodos:ArrayCollection = new ArrayCollection();
		
		
		/*******************************************************************/
		
		public static function getInstance():ModelLocator
		{
			if ( modelLocator == null ){
				modelLocator = new ModelApp();
			}
			
			return modelLocator;
		}
		
		public function ModelLocator()
		{
			if(modelLocator){
				throw new Error("Singleton... use getInstance()");
			} 
			modelLocator = this;
		}
		
		
	}
}