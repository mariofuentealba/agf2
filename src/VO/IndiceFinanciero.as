package VO
{
	[Bindable]
	public class IndiceFinanciero
	{
		
		public var id_indice_financiero:Number;
		public var id_grupo_indice_financiero:Number;
		public var nombre:String;				
		public var descripcion:String;
		public var formula_desc:String;
		public var rango_inferior:String;
		public var rango_superior:String;
		public var decimales:String;
		public var formulas:Array = new Array();
		public var empresas:Array = new Array();
		
		public function IndiceFinanciero()
		{
			
		}
	}
}