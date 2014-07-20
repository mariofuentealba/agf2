package VO
{
	import VO.ObjectFiller;
	
	public class Item_Xbrl extends ObjectFiller
	{
		public var ID_TAG_AGF:int;
		public var etiqueta:String;
		public var num:int;
		public var arrContexto:Array = [];
		public var codigo:String = 'C';
		
		public function Item_Xbrl()
		{
			super();
		}
	}
}