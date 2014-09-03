package VO
{
	import VO.ObjectFiller;
	
	public class Item_Xbrl extends ObjectFiller
	{
		public var id:int;
		public var etiqueta:String;
		public var origen:int;
		public var arrContexto:Array = [];
		public var contexto:String;
		public var codigo:String = 'C';
		public var tipo:String;
		public var clone:XML;
		
		public function Item_Xbrl()
		{
			super();
		}
	}
}