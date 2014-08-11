package VO
{
	public class IndiceVO extends ObjectFiller
	{
		public var id:int;
		public var etiqueta:String;
		public var origen:int;
		public var arrContexto:Array = [];
		public var codigo:String = 'F';
		public var contexto:String = 'no';
		public var tipo:String;
		
		public function IndiceVO()
		{
			super();
		}
	}
}