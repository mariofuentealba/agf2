package VO
{
	[Bindable]
	public class IndiceFinanciero extends ObjectFiller
	{
		
		public var id_indice_financiero:Number;
		public var id_grupo_indice_financiero:Number;
		public var nombre:String;
		public var formula:String;
		public var id_formula:String;
		/*public var descripcion:String;
		public var formula_desc:String;
		public var rango_inferior:String;
		public var rango_superior:String;
		public var decimales:String;*/
		public var arrFormulas:Array = new Array();
		public var empresas:Array = new Array();
		private var _Formulas:XML;
		
		public function IndiceFinanciero()
		{
			
		}

		public function get Formulas():XML
		{
			return _Formulas;
		}

		public function set Formulas(value:XML):void
		{
			_Formulas = value;
			
			var list:XMLList = value..formulas;
			for each(var node:XML in list){
				var formula:FormulaVO = new FormulaVO();
				formula.fillAttributes = node;
				arrFormulas.push(formula);
			}
		}

	}
}