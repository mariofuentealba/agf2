package VO
{
	import VO.ObjectFiller;
	
	public class Item_Xbrl extends ObjectFiller
	{
		public var id:int;
		public var etiqueta:String;
		public var num:int;
		public var arrContexto:Array = [];
		public var contexto:String;
		public var codigo:String = 'C';
		
		public function Item_Xbrl()
		{
			super();
		}
	}
}