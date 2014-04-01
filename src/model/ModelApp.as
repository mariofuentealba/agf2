package model
{
	
	import flash.utils.Timer;
	
	import mx.collections.ArrayCollection;
	
	import spark.components.Application;
	
	
	[Bindable]
	public class ModelApp
	{
		private static var modelLocator:ModelApp;
		public var arrXBRL:ArrayCollection = new ArrayCollection;
		public var arrFormulas:ArrayCollection = new ArrayCollection;
		public var arrFormulasIndice:ArrayCollection;
		
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