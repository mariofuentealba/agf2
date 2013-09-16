
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
internal class _ItemsDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("nombre", "componente", "ID_tag_agf", "etiqueta", "origen");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("nombre", "componente", "ID_tag_agf", "etiqueta", "origen");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("nombre", "componente", "ID_tag_agf", "etiqueta", "origen");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("nombre", "componente", "ID_tag_agf", "etiqueta", "origen");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("nombre", "componente", "ID_tag_agf", "etiqueta", "origen");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ItemsDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _nombreIsValid:Boolean;
    model_internal var _nombreValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreValidationFailureMessages:Array;
    
    model_internal var _componenteIsValid:Boolean;
    model_internal var _componenteValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _componenteIsValidCacheInitialized:Boolean = false;
    model_internal var _componenteValidationFailureMessages:Array;
    
    model_internal var _ID_tag_agfIsValid:Boolean;
    model_internal var _ID_tag_agfValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ID_tag_agfIsValidCacheInitialized:Boolean = false;
    model_internal var _ID_tag_agfValidationFailureMessages:Array;
    
    model_internal var _etiquetaIsValid:Boolean;
    model_internal var _etiquetaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _etiquetaIsValidCacheInitialized:Boolean = false;
    model_internal var _etiquetaValidationFailureMessages:Array;
    
    model_internal var _origenIsValid:Boolean;
    model_internal var _origenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _origenIsValidCacheInitialized:Boolean = false;
    model_internal var _origenValidationFailureMessages:Array;

    model_internal var _instance:_Super_ItemsDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ItemsDatatypeEntityMetadata(value : _Super_ItemsDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["nombre"] = new Array();
            model_internal::dependentsOnMap["componente"] = new Array();
            model_internal::dependentsOnMap["ID_tag_agf"] = new Array();
            model_internal::dependentsOnMap["etiqueta"] = new Array();
            model_internal::dependentsOnMap["origen"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["nombre"] = "String";
        model_internal::propertyTypeMap["componente"] = "String";
        model_internal::propertyTypeMap["ID_tag_agf"] = "String";
        model_internal::propertyTypeMap["etiqueta"] = "String";
        model_internal::propertyTypeMap["origen"] = "String";

        model_internal::_instance = value;
        model_internal::_nombreValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombre);
        model_internal::_nombreValidator.required = true;
        model_internal::_nombreValidator.requiredFieldError = "nombre is required";
        //model_internal::_nombreValidator.source = model_internal::_instance;
        //model_internal::_nombreValidator.property = "nombre";
        model_internal::_componenteValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForComponente);
        model_internal::_componenteValidator.required = true;
        model_internal::_componenteValidator.requiredFieldError = "componente is required";
        //model_internal::_componenteValidator.source = model_internal::_instance;
        //model_internal::_componenteValidator.property = "componente";
        model_internal::_ID_tag_agfValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForID_tag_agf);
        model_internal::_ID_tag_agfValidator.required = true;
        model_internal::_ID_tag_agfValidator.requiredFieldError = "ID_tag_agf is required";
        //model_internal::_ID_tag_agfValidator.source = model_internal::_instance;
        //model_internal::_ID_tag_agfValidator.property = "ID_tag_agf";
        model_internal::_etiquetaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForEtiqueta);
        model_internal::_etiquetaValidator.required = true;
        model_internal::_etiquetaValidator.requiredFieldError = "etiqueta is required";
        //model_internal::_etiquetaValidator.source = model_internal::_instance;
        //model_internal::_etiquetaValidator.property = "etiqueta";
        model_internal::_origenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForOrigen);
        model_internal::_origenValidator.required = true;
        model_internal::_origenValidator.requiredFieldError = "origen is required";
        //model_internal::_origenValidator.source = model_internal::_instance;
        //model_internal::_origenValidator.property = "origen";
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
            throw new Error(propertyName + " is not a data property of entity ItemsDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity ItemsDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ItemsDatatype");

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
            throw new Error(propertyName + " does not exist for entity ItemsDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ItemsDatatype");
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
            throw new Error(propertyName + " does not exist for entity ItemsDatatype");
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
    public function get isComponenteAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isID_tag_agfAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isEtiquetaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isOrigenAvailable():Boolean
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
    public function invalidateDependentOnComponente():void
    {
        if (model_internal::_componenteIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfComponente = null;
            model_internal::calculateComponenteIsValid();
        }
    }
    public function invalidateDependentOnID_tag_agf():void
    {
        if (model_internal::_ID_tag_agfIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfID_tag_agf = null;
            model_internal::calculateID_tag_agfIsValid();
        }
    }
    public function invalidateDependentOnEtiqueta():void
    {
        if (model_internal::_etiquetaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfEtiqueta = null;
            model_internal::calculateEtiquetaIsValid();
        }
    }
    public function invalidateDependentOnOrigen():void
    {
        if (model_internal::_origenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfOrigen = null;
            model_internal::calculateOrigenIsValid();
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
    public function get componenteStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get componenteValidator() : StyleValidator
    {
        return model_internal::_componenteValidator;
    }

    model_internal function set _componenteIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_componenteIsValid;         
        if (oldValue !== value)
        {
            model_internal::_componenteIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "componenteIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get componenteIsValid():Boolean
    {
        if (!model_internal::_componenteIsValidCacheInitialized)
        {
            model_internal::calculateComponenteIsValid();
        }

        return model_internal::_componenteIsValid;
    }

    model_internal function calculateComponenteIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_componenteValidator.validate(model_internal::_instance.componente)
        model_internal::_componenteIsValid_der = (valRes.results == null);
        model_internal::_componenteIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::componenteValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::componenteValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get componenteValidationFailureMessages():Array
    {
        if (model_internal::_componenteValidationFailureMessages == null)
            model_internal::calculateComponenteIsValid();

        return _componenteValidationFailureMessages;
    }

    model_internal function set componenteValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_componenteValidationFailureMessages;

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
            model_internal::_componenteValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "componenteValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ID_tag_agfStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ID_tag_agfValidator() : StyleValidator
    {
        return model_internal::_ID_tag_agfValidator;
    }

    model_internal function set _ID_tag_agfIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ID_tag_agfIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ID_tag_agfIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_tag_agfIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ID_tag_agfIsValid():Boolean
    {
        if (!model_internal::_ID_tag_agfIsValidCacheInitialized)
        {
            model_internal::calculateID_tag_agfIsValid();
        }

        return model_internal::_ID_tag_agfIsValid;
    }

    model_internal function calculateID_tag_agfIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ID_tag_agfValidator.validate(model_internal::_instance.ID_tag_agf)
        model_internal::_ID_tag_agfIsValid_der = (valRes.results == null);
        model_internal::_ID_tag_agfIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ID_tag_agfValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ID_tag_agfValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ID_tag_agfValidationFailureMessages():Array
    {
        if (model_internal::_ID_tag_agfValidationFailureMessages == null)
            model_internal::calculateID_tag_agfIsValid();

        return _ID_tag_agfValidationFailureMessages;
    }

    model_internal function set ID_tag_agfValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ID_tag_agfValidationFailureMessages;

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
            model_internal::_ID_tag_agfValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_tag_agfValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get etiquetaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get etiquetaValidator() : StyleValidator
    {
        return model_internal::_etiquetaValidator;
    }

    model_internal function set _etiquetaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_etiquetaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_etiquetaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "etiquetaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get etiquetaIsValid():Boolean
    {
        if (!model_internal::_etiquetaIsValidCacheInitialized)
        {
            model_internal::calculateEtiquetaIsValid();
        }

        return model_internal::_etiquetaIsValid;
    }

    model_internal function calculateEtiquetaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_etiquetaValidator.validate(model_internal::_instance.etiqueta)
        model_internal::_etiquetaIsValid_der = (valRes.results == null);
        model_internal::_etiquetaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::etiquetaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::etiquetaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get etiquetaValidationFailureMessages():Array
    {
        if (model_internal::_etiquetaValidationFailureMessages == null)
            model_internal::calculateEtiquetaIsValid();

        return _etiquetaValidationFailureMessages;
    }

    model_internal function set etiquetaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_etiquetaValidationFailureMessages;

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
            model_internal::_etiquetaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "etiquetaValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get origenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get origenValidator() : StyleValidator
    {
        return model_internal::_origenValidator;
    }

    model_internal function set _origenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_origenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_origenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "origenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get origenIsValid():Boolean
    {
        if (!model_internal::_origenIsValidCacheInitialized)
        {
            model_internal::calculateOrigenIsValid();
        }

        return model_internal::_origenIsValid;
    }

    model_internal function calculateOrigenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_origenValidator.validate(model_internal::_instance.origen)
        model_internal::_origenIsValid_der = (valRes.results == null);
        model_internal::_origenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::origenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::origenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get origenValidationFailureMessages():Array
    {
        if (model_internal::_origenValidationFailureMessages == null)
            model_internal::calculateOrigenIsValid();

        return _origenValidationFailureMessages;
    }

    model_internal function set origenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_origenValidationFailureMessages;

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
            model_internal::_origenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "origenValidationFailureMessages", oldValue, value));
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
            case("componente"):
            {
                return componenteValidationFailureMessages;
            }
            case("ID_tag_agf"):
            {
                return ID_tag_agfValidationFailureMessages;
            }
            case("etiqueta"):
            {
                return etiquetaValidationFailureMessages;
            }
            case("origen"):
            {
                return origenValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
