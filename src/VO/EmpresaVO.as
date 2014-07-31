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
		public var idSubgrupo:Object = {};
		private var _SubGrupos:XML;
		
		
		
		public function EmpresaVO()
		{
		}
		
		public function get SubGrupos():XML
		{
			return _SubGrupos;
		}

		public function set SubGrupos(value:XML):void
		{
			_SubGrupos = value;
			
			var list:XMLList = value..subgrupo;
			for each(var node:XML in list){
				idSubgrupo[node.@ID_SUBGRUPO[0]] = node.@ID_SUBGRUPO[0];
			}
			
		}

		/*override public function set fill(xml:XML):void
		{
			// TODO Auto Generated method stub
			super.fill = xml;
		}*/
		
	}
}