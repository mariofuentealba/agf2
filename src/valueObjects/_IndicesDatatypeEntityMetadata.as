
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _IndicesDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("nombre", "oa", "id_indice_financiero");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("nombre", "oa", "id_indice_financiero");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("nombre", "oa", "id_indice_financiero");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("nombre", "oa", "id_indice_financiero");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("nombre", "oa", "id_indice_financiero");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "IndicesDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _nombreIsValid:Boolean;
    model_internal var _nombreValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreValidationFailureMessages:Array;
    
    model_internal var _oaIsValid:Boolean;
    model_internal var _oaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _oaIsValidCacheInitialized:Boolean = false;
    model_internal var _oaValidationFailureMessages:Array;
    
    model_internal var _id_indice_financieroIsValid:Boolean;
    model_internal var _id_indice_financieroValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_indice_financieroIsValidCacheInitialized:Boolean = false;
    model_internal var _id_indice_financieroValidationFailureMessages:Array;

    model_internal var _instance:_Super_IndicesDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _IndicesDatatypeEntityMetadata(value : _Super_IndicesDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["nombre"] = new Array();
            model_internal::dependentsOnMap["oa"] = new Array();
            model_internal::dependentsOnMap["id_indice_financiero"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["nombre"] = "String";
        model_internal::propertyTypeMap["oa"] = "String";
        model_internal::propertyTypeMap["id_indice_financiero"] = "String";

        model_internal::_instance = value;
        model_internal::_nombreValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombre);
        model_internal::_nombreValidator.required = true;
        model_internal::_nombreValidator.requiredFieldError = "nombre is required";
        //model_internal::_nombreValidator.source = model_internal::_instance;
        //model_internal::_nombreValidator.property = "nombre";
        model_internal::_oaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOa);
        model_internal::_oaValidator.required = true;
        model_internal::_oaValidator.requiredFieldError = "oa is required";
        //model_internal::_oaValidator.source = model_internal::_instance;
        //model_internal::_oaValidator.property = "oa";
        model_internal::_id_indice_financieroValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_indice_financiero);
        model_internal::_id_indice_financieroValidator.required = true;
        model_internal::_id_indice_financieroValidator.requiredFieldError = "id_indice_financiero is required";
        //model_internal::_id_indice_financieroValidator.source = model_internal::_instance;
        //model_internal::_id_indice_financieroValidator.property = "id_indice_financiero";
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
            throw new Error(propertyName + " is not a data property of entity IndicesDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity IndicesDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of IndicesDatatype");

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
            throw new Error(propertyName + " does not exist for entity IndicesDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity IndicesDatatype");
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
            throw new Error(propertyName + " does not exist for entity IndicesDatatype");
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
    public function get isNombreAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_indice_financieroAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnNombre():void
    {
        if (model_internal::_nombreIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombre = null;
            model_internal::calculateNombreIsValid();
        }
    }
    public function invalidateDependentOnOa():void
    {
        if (model_internal::_oaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOa = null;
            model_internal::calculateOaIsValid();
        }
    }
    public function invalidateDependentOnId_indice_financiero():void
    {
        if (model_internal::_id_indice_financieroIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_indice_financiero = null;
            model_internal::calculateId_indice_financieroIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get nombreStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombreValidator() : StyleValidator
    {
        return model_internal::_nombreValidator;
    }

    model_internal function set _nombreIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombreIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombreIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombreIsValid():Boolean
    {
        if (!model_internal::_nombreIsValidCacheInitialized)
        {
            model_internal::calculateNombreIsValid();
        }

        return model_internal::_nombreIsValid;
    }

    model_internal function calculateNombreIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombreValidator.validate(model_internal::_instance.nombre)
        model_internal::_nombreIsValid_der = (valRes.results == null);
        model_internal::_nombreIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombreValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombreValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombreValidationFailureMessages():Array
    {
        if (model_internal::_nombreValidationFailureMessages == null)
            model_internal::calculateNombreIsValid();

        return _nombreValidationFailureMessages;
    }

    model_internal function set nombreValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombreValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_nombreValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombreValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get oaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get oaValidator() : StyleValidator
    {
        return model_internal::_oaValidator;
    }

    model_internal function set _oaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_oaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_oaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get oaIsValid():Boolean
    {
        if (!model_internal::_oaIsValidCacheInitialized)
        {
            model_internal::calculateOaIsValid();
        }

        return model_internal::_oaIsValid;
    }

    model_internal function calculateOaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_oaValidator.validate(model_internal::_instance.oa)
        model_internal::_oaIsValid_der = (valRes.results == null);
        model_internal::_oaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::oaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::oaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get oaValidationFailureMessages():Array
    {
        if (model_internal::_oaValidationFailureMessages == null)
            model_internal::calculateOaIsValid();

        return _oaValidationFailureMessages;
    }

    model_internal function set oaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_oaValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_oaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get id_indice_financieroStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_indice_financieroValidator() : StyleValidator
    {
        return model_internal::_id_indice_financieroValidator;
    }

    model_internal function set _id_indice_financieroIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_indice_financieroIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_indice_financieroIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_indice_financieroIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financieroIsValid():Boolean
    {
        if (!model_internal::_id_indice_financieroIsValidCacheInitialized)
        {
            model_internal::calculateId_indice_financieroIsValid();
        }

        return model_internal::_id_indice_financieroIsValid;
    }

    model_internal function calculateId_indice_financieroIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_indice_financieroValidator.validate(model_internal::_instance.id_indice_financiero)
        model_internal::_id_indice_financieroIsValid_der = (valRes.results == null);
        model_internal::_id_indice_financieroIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_indice_financieroValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_indice_financieroValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financieroValidationFailureMessages():Array
    {
        if (model_internal::_id_indice_financieroValidationFailureMessages == null)
            model_internal::calculateId_indice_financieroIsValid();

        return _id_indice_financieroValidationFailureMessages;
    }

    model_internal function set id_indice_financieroValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_indice_financieroValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_id_indice_financieroValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_indice_financieroValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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
            case("nombre"):
            {
                return nombreValidationFailureMessages;
            }
            case("oa"):
            {
                return oaValidationFailureMessages;
            }
            case("id_indice_financiero"):
            {
                return id_indice_financieroValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
