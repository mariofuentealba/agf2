package VO
{

	[Bindable] public class EmpresaVO extends ObjectFiller
	{
		public var idInterno:String;
		public var id:String;
		public var nombre:String;
		public var tipoEntidad:String;
		public var vigencia:String;
		public var incluida:Boolean;
		public var idSubgrupo:Array = new Array();
		
		
		
		public function EmpresaVO()
		{
		}
	}
}