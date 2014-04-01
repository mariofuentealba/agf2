
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _FormulasEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ID_FORMULA", "CAMPO1", "CAMPO2", "CAMPO3", "CAMPO4", "CAMPO5", "tipoc1", "tipoc2", "tipoc3", "tipoc4", "tipoc5", "FORMULA", "CANTIDAD_CAMPOS", "DECIMALES", "cod1", "cod2", "cod3", "cod4", "cod5", "id_indice_financiero", "num_formula");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("ID_FORMULA");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ID_FORMULA", "CAMPO1", "CAMPO2", "CAMPO3", "CAMPO4", "CAMPO5", "tipoc1", "tipoc2", "tipoc3", "tipoc4", "tipoc5", "FORMULA", "CANTIDAD_CAMPOS", "DECIMALES", "cod1", "cod2", "cod3", "cod4", "cod5", "id_indice_financiero", "num_formula");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ID_FORMULA", "CAMPO1", "CAMPO2", "CAMPO3", "CAMPO4", "CAMPO5", "tipoc1", "tipoc2", "tipoc3", "tipoc4", "tipoc5", "FORMULA", "CANTIDAD_CAMPOS", "DECIMALES", "cod1", "cod2", "cod3", "cod4", "cod5", "id_indice_financiero", "num_formula");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("ID_FORMULA", "CAMPO1", "CAMPO2", "CAMPO3", "CAMPO4", "CAMPO5", "tipoc1", "tipoc2", "tipoc3", "tipoc4", "tipoc5", "FORMULA", "CANTIDAD_CAMPOS", "DECIMALES", "cod1", "cod2", "cod3", "cod4", "cod5", "id_indice_financiero", "num_formula");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Formulas";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;


    model_internal var _instance:_Super_Formulas;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FormulasEntityMetadata(value : _Super_Formulas)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ID_FORMULA"] = new Array();
            model_internal::dependentsOnMap["CAMPO1"] = new Array();
            model_internal::dependentsOnMap["CAMPO2"] = new Array();
            model_internal::dependentsOnMap["CAMPO3"] = new Array();
            model_internal::dependentsOnMap["CAMPO4"] = new Array();
            model_internal::dependentsOnMap["CAMPO5"] = new Array();
            model_internal::dependentsOnMap["tipoc1"] = new Array();
            model_internal::dependentsOnMap["tipoc2"] = new Array();
            model_internal::dependentsOnMap["tipoc3"] = new Array();
            model_internal::dependentsOnMap["tipoc4"] = new Array();
            model_internal::dependentsOnMap["tipoc5"] = new Array();
            model_internal::dependentsOnMap["FORMULA"] = new Array();
            model_internal::dependentsOnMap["CANTIDAD_CAMPOS"] = new Array();
            model_internal::dependentsOnMap["DECIMALES"] = new Array();
            model_internal::dependentsOnMap["cod1"] = new Array();
            model_internal::dependentsOnMap["cod2"] = new Array();
            model_internal::dependentsOnMap["cod3"] = new Array();
            model_internal::dependentsOnMap["cod4"] = new Array();
            model_internal::dependentsOnMap["cod5"] = new Array();
            model_internal::dependentsOnMap["id_indice_financiero"] = new Array();
            model_internal::dependentsOnMap["num_formula"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["ID_FORMULA"] = "int";
        model_internal::propertyTypeMap["CAMPO1"] = "int";
        model_internal::propertyTypeMap["CAMPO2"] = "int";
        model_internal::propertyTypeMap["CAMPO3"] = "int";
        model_internal::propertyTypeMap["CAMPO4"] = "int";
        model_internal::propertyTypeMap["CAMPO5"] = "int";
        model_internal::propertyTypeMap["tipoc1"] = "int";
        model_internal::propertyTypeMap["tipoc2"] = "int";
        model_internal::propertyTypeMap["tipoc3"] = "int";
        model_internal::propertyTypeMap["tipoc4"] = "int";
        model_internal::propertyTypeMap["tipoc5"] = "int";
        model_internal::propertyTypeMap["FORMULA"] = "String";
        model_internal::propertyTypeMap["CANTIDAD_CAMPOS"] = "int";
        model_internal::propertyTypeMap["DECIMALES"] = "int";
        model_internal::propertyTypeMap["cod1"] = "String";
        model_internal::propertyTypeMap["cod2"] = "String";
        model_internal::propertyTypeMap["cod3"] = "String";
        model_internal::propertyTypeMap["cod4"] = "String";
        model_internal::propertyTypeMap["cod5"] = "String";
        model_internal::propertyTypeMap["id_indice_financiero"] = "int";
        model_internal::propertyTypeMap["num_formula"] = "int";

        model_internal::_instance = value;
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity Formulas");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity Formulas");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Formulas");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Formulas");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Formulas");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Formulas");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();
        returnMap["ID_FORMULA"] = model_internal::_instance.ID_FORMULA;

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isID_FORMULAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCAMPO1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCAMPO2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCAMPO3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCAMPO4Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCAMPO5Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc4Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTipoc5Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isFORMULAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCANTIDAD_CAMPOSAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDECIMALESAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod1Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod2Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod3Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod4Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCod5Available():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_indice_financieroAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNum_formulaAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get ID_FORMULAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get CAMPO1Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get CAMPO2Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get CAMPO3Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get CAMPO4Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get CAMPO5Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc1Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc2Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc3Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc4Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get tipoc5Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get FORMULAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get CANTIDAD_CAMPOSStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get DECIMALESStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cod1Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cod2Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cod3Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cod4Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get cod5Style():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get id_indice_financieroStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get num_formulaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
