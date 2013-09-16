
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
internal class _FormItemsDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("nombre", "id_tag_agf", "valor");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("nombre", "id_tag_agf", "valor");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("nombre", "id_tag_agf", "valor");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("nombre", "id_tag_agf", "valor");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("nombre", "id_tag_agf", "valor");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "FormItemsDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _nombreIsValid:Boolean;
    model_internal var _nombreValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreValidationFailureMessages:Array;
    
    model_internal var _id_tag_agfIsValid:Boolean;
    model_internal var _id_tag_agfValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_tag_agfIsValidCacheInitialized:Boolean = false;
    model_internal var _id_tag_agfValidationFailureMessages:Array;
    
    model_internal var _valorIsValid:Boolean;
    model_internal var _valorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _valorIsValidCacheInitialized:Boolean = false;
    model_internal var _valorValidationFailureMessages:Array;

    model_internal var _instance:_Super_FormItemsDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _FormItemsDatatypeEntityMetadata(value : _Super_FormItemsDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["nombre"] = new Array();
            model_internal::dependentsOnMap["id_tag_agf"] = new Array();
            model_internal::dependentsOnMap["valor"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["nombre"] = "String";
        model_internal::propertyTypeMap["id_tag_agf"] = "String";
        model_internal::propertyTypeMap["valor"] = "String";

        model_internal::_instance = value;
        model_internal::_nombreValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombre);
        model_internal::_nombreValidator.required = true;
        model_internal::_nombreValidator.requiredFieldError = "nombre is required";
        //model_internal::_nombreValidator.source = model_internal::_instance;
        //model_internal::_nombreValidator.property = "nombre";
        model_internal::_id_tag_agfValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_tag_agf);
        model_internal::_id_tag_agfValidator.required = true;
        model_internal::_id_tag_agfValidator.requiredFieldError = "id_tag_agf is required";
        //model_internal::_id_tag_agfValidator.source = model_internal::_instance;
        //model_internal::_id_tag_agfValidator.property = "id_tag_agf";
        model_internal::_valorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForValor);
        model_internal::_valorValidator.required = true;
        model_internal::_valorValidator.requiredFieldError = "valor is required";
        //model_internal::_valorValidator.source = model_internal::_instance;
        //model_internal::_valorValidator.property = "valor";
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
            throw new Error(propertyName + " is not a data property of entity FormItemsDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity FormItemsDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of FormItemsDatatype");

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
            throw new Error(propertyName + " does not exist for entity FormItemsDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity FormItemsDatatype");
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
            throw new Error(propertyName + " does not exist for entity FormItemsDatatype");
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
    public function get isId_tag_agfAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isValorAvailable():Boolean
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
    public function invalidateDependentOnId_tag_agf():void
    {
        if (model_internal::_id_tag_agfIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_tag_agf = null;
            model_internal::calculateId_tag_agfIsValid();
        }
    }
    public function invalidateDependentOnValor():void
    {
        if (model_internal::_valorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfValor = null;
            model_internal::calculateValorIsValid();
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
    public function get id_tag_agfStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_tag_agfValidator() : StyleValidator
    {
        return model_internal::_id_tag_agfValidator;
    }

    model_internal function set _id_tag_agfIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_tag_agfIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_tag_agfIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_tag_agfIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_tag_agfIsValid():Boolean
    {
        if (!model_internal::_id_tag_agfIsValidCacheInitialized)
        {
            model_internal::calculateId_tag_agfIsValid();
        }

        return model_internal::_id_tag_agfIsValid;
    }

    model_internal function calculateId_tag_agfIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_tag_agfValidator.validate(model_internal::_instance.id_tag_agf)
        model_internal::_id_tag_agfIsValid_der = (valRes.results == null);
        model_internal::_id_tag_agfIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_tag_agfValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_tag_agfValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_tag_agfValidationFailureMessages():Array
    {
        if (model_internal::_id_tag_agfValidationFailureMessages == null)
            model_internal::calculateId_tag_agfIsValid();

        return _id_tag_agfValidationFailureMessages;
    }

    model_internal function set id_tag_agfValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_tag_agfValidationFailureMessages;

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
            model_internal::_id_tag_agfValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_tag_agfValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get valorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get valorValidator() : StyleValidator
    {
        return model_internal::_valorValidator;
    }

    model_internal function set _valorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_valorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_valorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get valorIsValid():Boolean
    {
        if (!model_internal::_valorIsValidCacheInitialized)
        {
            model_internal::calculateValorIsValid();
        }

        return model_internal::_valorIsValid;
    }

    model_internal function calculateValorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_valorValidator.validate(model_internal::_instance.valor)
        model_internal::_valorIsValid_der = (valRes.results == null);
        model_internal::_valorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::valorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::valorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get valorValidationFailureMessages():Array
    {
        if (model_internal::_valorValidationFailureMessages == null)
            model_internal::calculateValorIsValid();

        return _valorValidationFailureMessages;
    }

    model_internal function set valorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_valorValidationFailureMessages;

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
            model_internal::_valorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valorValidationFailureMessages", oldValue, value));
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
            case("id_tag_agf"):
            {
                return id_tag_agfValidationFailureMessages;
            }
            case("valor"):
            {
                return valorValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
