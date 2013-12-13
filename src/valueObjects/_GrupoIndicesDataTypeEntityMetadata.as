
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
internal class _GrupoIndicesDataTypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("ID_TIPO_EMPRESA", "nombre", "descripcion", "ID_GRUPO_INDICE_FINANCIERO");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("ID_TIPO_EMPRESA", "nombre", "descripcion", "ID_GRUPO_INDICE_FINANCIERO");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("ID_TIPO_EMPRESA", "nombre", "descripcion", "ID_GRUPO_INDICE_FINANCIERO");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("ID_TIPO_EMPRESA", "nombre", "descripcion", "ID_GRUPO_INDICE_FINANCIERO");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("ID_TIPO_EMPRESA", "nombre", "descripcion", "ID_GRUPO_INDICE_FINANCIERO");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "GrupoIndicesDataType";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _ID_TIPO_EMPRESAIsValid:Boolean;
    model_internal var _ID_TIPO_EMPRESAValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _ID_TIPO_EMPRESAIsValidCacheInitialized:Boolean = false;
    model_internal var _ID_TIPO_EMPRESAValidationFailureMessages:Array;
    
    model_internal var _nombreIsValid:Boolean;
    model_internal var _nombreValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombreIsValidCacheInitialized:Boolean = false;
    model_internal var _nombreValidationFailureMessages:Array;
    
    model_internal var _descripcionIsValid:Boolean;
    model_internal var _descripcionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _descripcionIsValidCacheInitialized:Boolean = false;
    model_internal var _descripcionValidationFailureMessages:Array;

    model_internal var _instance:_Super_GrupoIndicesDataType;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _GrupoIndicesDataTypeEntityMetadata(value : _Super_GrupoIndicesDataType)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["ID_TIPO_EMPRESA"] = new Array();
            model_internal::dependentsOnMap["nombre"] = new Array();
            model_internal::dependentsOnMap["descripcion"] = new Array();
            model_internal::dependentsOnMap["ID_GRUPO_INDICE_FINANCIERO"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["ID_TIPO_EMPRESA"] = "String";
        model_internal::propertyTypeMap["nombre"] = "String";
        model_internal::propertyTypeMap["descripcion"] = "String";
        model_internal::propertyTypeMap["ID_GRUPO_INDICE_FINANCIERO"] = "String";

        model_internal::_instance = value;
        model_internal::_ID_TIPO_EMPRESAValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForID_TIPO_EMPRESA);
        model_internal::_ID_TIPO_EMPRESAValidator.required = true;
        model_internal::_ID_TIPO_EMPRESAValidator.requiredFieldError = "ID_TIPO_EMPRESA is required";
        //model_internal::_ID_TIPO_EMPRESAValidator.source = model_internal::_instance;
        //model_internal::_ID_TIPO_EMPRESAValidator.property = "ID_TIPO_EMPRESA";
        model_internal::_nombreValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombre);
        model_internal::_nombreValidator.required = true;
        model_internal::_nombreValidator.requiredFieldError = "nombre is required";
        //model_internal::_nombreValidator.source = model_internal::_instance;
        //model_internal::_nombreValidator.property = "nombre";
        model_internal::_descripcionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForDescripcion);
        model_internal::_descripcionValidator.required = true;
        model_internal::_descripcionValidator.requiredFieldError = "descripcion is required";
        //model_internal::_descripcionValidator.source = model_internal::_instance;
        //model_internal::_descripcionValidator.property = "descripcion";
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
            throw new Error(propertyName + " is not a data property of entity GrupoIndicesDataType");
            
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
            throw new Error(propertyName + " is not a collection property of entity GrupoIndicesDataType");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of GrupoIndicesDataType");

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
            throw new Error(propertyName + " does not exist for entity GrupoIndicesDataType");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity GrupoIndicesDataType");
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
            throw new Error(propertyName + " does not exist for entity GrupoIndicesDataType");
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
        returnMap["ID_GRUPO_INDICE_FINANCIERO"] = model_internal::_instance.ID_GRUPO_INDICE_FINANCIERO;

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
    public function get isID_TIPO_EMPRESAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombreAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDescripcionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isID_GRUPO_INDICE_FINANCIEROAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnID_TIPO_EMPRESA():void
    {
        if (model_internal::_ID_TIPO_EMPRESAIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfID_TIPO_EMPRESA = null;
            model_internal::calculateID_TIPO_EMPRESAIsValid();
        }
    }
    public function invalidateDependentOnNombre():void
    {
        if (model_internal::_nombreIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombre = null;
            model_internal::calculateNombreIsValid();
        }
    }
    public function invalidateDependentOnDescripcion():void
    {
        if (model_internal::_descripcionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfDescripcion = null;
            model_internal::calculateDescripcionIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get ID_TIPO_EMPRESAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get ID_TIPO_EMPRESAValidator() : StyleValidator
    {
        return model_internal::_ID_TIPO_EMPRESAValidator;
    }

    model_internal function set _ID_TIPO_EMPRESAIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_ID_TIPO_EMPRESAIsValid;         
        if (oldValue !== value)
        {
            model_internal::_ID_TIPO_EMPRESAIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_TIPO_EMPRESAIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get ID_TIPO_EMPRESAIsValid():Boolean
    {
        if (!model_internal::_ID_TIPO_EMPRESAIsValidCacheInitialized)
        {
            model_internal::calculateID_TIPO_EMPRESAIsValid();
        }

        return model_internal::_ID_TIPO_EMPRESAIsValid;
    }

    model_internal function calculateID_TIPO_EMPRESAIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_ID_TIPO_EMPRESAValidator.validate(model_internal::_instance.ID_TIPO_EMPRESA)
        model_internal::_ID_TIPO_EMPRESAIsValid_der = (valRes.results == null);
        model_internal::_ID_TIPO_EMPRESAIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::ID_TIPO_EMPRESAValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::ID_TIPO_EMPRESAValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get ID_TIPO_EMPRESAValidationFailureMessages():Array
    {
        if (model_internal::_ID_TIPO_EMPRESAValidationFailureMessages == null)
            model_internal::calculateID_TIPO_EMPRESAIsValid();

        return _ID_TIPO_EMPRESAValidationFailureMessages;
    }

    model_internal function set ID_TIPO_EMPRESAValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_ID_TIPO_EMPRESAValidationFailureMessages;

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
            model_internal::_ID_TIPO_EMPRESAValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_TIPO_EMPRESAValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
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
    public function get descripcionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get descripcionValidator() : StyleValidator
    {
        return model_internal::_descripcionValidator;
    }

    model_internal function set _descripcionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_descripcionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_descripcionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get descripcionIsValid():Boolean
    {
        if (!model_internal::_descripcionIsValidCacheInitialized)
        {
            model_internal::calculateDescripcionIsValid();
        }

        return model_internal::_descripcionIsValid;
    }

    model_internal function calculateDescripcionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_descripcionValidator.validate(model_internal::_instance.descripcion)
        model_internal::_descripcionIsValid_der = (valRes.results == null);
        model_internal::_descripcionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::descripcionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::descripcionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get descripcionValidationFailureMessages():Array
    {
        if (model_internal::_descripcionValidationFailureMessages == null)
            model_internal::calculateDescripcionIsValid();

        return _descripcionValidationFailureMessages;
    }

    model_internal function set descripcionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_descripcionValidationFailureMessages;

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
            model_internal::_descripcionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get ID_GRUPO_INDICE_FINANCIEROStyle():com.adobe.fiber.styles.Style
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
            case("ID_TIPO_EMPRESA"):
            {
                return ID_TIPO_EMPRESAValidationFailureMessages;
            }
            case("nombre"):
            {
                return nombreValidationFailureMessages;
            }
            case("descripcion"):
            {
                return descripcionValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
