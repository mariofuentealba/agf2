
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
internal class _ValoresDatatypeEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("id_tag_agf", "color", "valor", "id_periodo", "label", "nombre_final", "graf", "id_empresa");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("id_tag_agf", "color", "valor", "id_periodo", "label", "nombre_final", "graf", "id_empresa");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("id_tag_agf", "color", "valor", "id_periodo", "label", "nombre_final", "graf", "id_empresa");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("id_tag_agf", "color", "valor", "id_periodo", "label", "nombre_final", "graf", "id_empresa");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("id_tag_agf", "color", "valor", "id_periodo", "label", "nombre_final", "graf", "id_empresa");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "ValoresDatatype";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _id_tag_agfIsValid:Boolean;
    model_internal var _id_tag_agfValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_tag_agfIsValidCacheInitialized:Boolean = false;
    model_internal var _id_tag_agfValidationFailureMessages:Array;
    
    model_internal var _colorIsValid:Boolean;
    model_internal var _colorValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _colorIsValidCacheInitialized:Boolean = false;
    model_internal var _colorValidationFailureMessages:Array;
    
    model_internal var _id_periodoIsValid:Boolean;
    model_internal var _id_periodoValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_periodoIsValidCacheInitialized:Boolean = false;
    model_internal var _id_periodoValidationFailureMessages:Array;
    
    model_internal var _labelIsValid:Boolean;
    model_internal var _labelValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _labelIsValidCacheInitialized:Boolean = false;
    model_internal var _labelValidationFailureMessages:Array;
    
    model_internal var _nombre_finalIsValid:Boolean;
    model_internal var _nombre_finalValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nombre_finalIsValidCacheInitialized:Boolean = false;
    model_internal var _nombre_finalValidationFailureMessages:Array;
    
    model_internal var _id_empresaIsValid:Boolean;
    model_internal var _id_empresaValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _id_empresaIsValidCacheInitialized:Boolean = false;
    model_internal var _id_empresaValidationFailureMessages:Array;

    model_internal var _instance:_Super_ValoresDatatype;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _ValoresDatatypeEntityMetadata(value : _Super_ValoresDatatype)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["id_tag_agf"] = new Array();
            model_internal::dependentsOnMap["color"] = new Array();
            model_internal::dependentsOnMap["valor"] = new Array();
            model_internal::dependentsOnMap["id_periodo"] = new Array();
            model_internal::dependentsOnMap["label"] = new Array();
            model_internal::dependentsOnMap["nombre_final"] = new Array();
            model_internal::dependentsOnMap["graf"] = new Array();
            model_internal::dependentsOnMap["id_empresa"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["id_tag_agf"] = "String";
        model_internal::propertyTypeMap["color"] = "String";
        model_internal::propertyTypeMap["valor"] = "Number";
        model_internal::propertyTypeMap["id_periodo"] = "String";
        model_internal::propertyTypeMap["label"] = "String";
        model_internal::propertyTypeMap["nombre_final"] = "String";
        model_internal::propertyTypeMap["graf"] = "int";
        model_internal::propertyTypeMap["id_empresa"] = "String";

        model_internal::_instance = value;
        model_internal::_id_tag_agfValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_tag_agf);
        model_internal::_id_tag_agfValidator.required = true;
        model_internal::_id_tag_agfValidator.requiredFieldError = "id_tag_agf is required";
        //model_internal::_id_tag_agfValidator.source = model_internal::_instance;
        //model_internal::_id_tag_agfValidator.property = "id_tag_agf";
        model_internal::_colorValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForColor);
        model_internal::_colorValidator.required = true;
        model_internal::_colorValidator.requiredFieldError = "color is required";
        //model_internal::_colorValidator.source = model_internal::_instance;
        //model_internal::_colorValidator.property = "color";
        model_internal::_id_periodoValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_periodo);
        model_internal::_id_periodoValidator.required = true;
        model_internal::_id_periodoValidator.requiredFieldError = "id_periodo is required";
        //model_internal::_id_periodoValidator.source = model_internal::_instance;
        //model_internal::_id_periodoValidator.property = "id_periodo";
        model_internal::_labelValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForLabel);
        model_internal::_labelValidator.required = true;
        model_internal::_labelValidator.requiredFieldError = "label is required";
        //model_internal::_labelValidator.source = model_internal::_instance;
        //model_internal::_labelValidator.property = "label";
        model_internal::_nombre_finalValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForNombre_final);
        model_internal::_nombre_finalValidator.required = true;
        model_internal::_nombre_finalValidator.requiredFieldError = "nombre_final is required";
        //model_internal::_nombre_finalValidator.source = model_internal::_instance;
        //model_internal::_nombre_finalValidator.property = "nombre_final";
        model_internal::_id_empresaValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId_empresa);
        model_internal::_id_empresaValidator.required = true;
        model_internal::_id_empresaValidator.requiredFieldError = "id_empresa is required";
        //model_internal::_id_empresaValidator.source = model_internal::_instance;
        //model_internal::_id_empresaValidator.property = "id_empresa";
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
            throw new Error(propertyName + " is not a data property of entity ValoresDatatype");
            
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
            throw new Error(propertyName + " is not a collection property of entity ValoresDatatype");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of ValoresDatatype");

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
            throw new Error(propertyName + " does not exist for entity ValoresDatatype");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity ValoresDatatype");
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
            throw new Error(propertyName + " does not exist for entity ValoresDatatype");
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
    public function get isId_tag_agfAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isColorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isValorAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_periodoAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLabelAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNombre_finalAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isGrafAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isId_empresaAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnId_tag_agf():void
    {
        if (model_internal::_id_tag_agfIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_tag_agf = null;
            model_internal::calculateId_tag_agfIsValid();
        }
    }
    public function invalidateDependentOnColor():void
    {
        if (model_internal::_colorIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfColor = null;
            model_internal::calculateColorIsValid();
        }
    }
    public function invalidateDependentOnId_periodo():void
    {
        if (model_internal::_id_periodoIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_periodo = null;
            model_internal::calculateId_periodoIsValid();
        }
    }
    public function invalidateDependentOnLabel():void
    {
        if (model_internal::_labelIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfLabel = null;
            model_internal::calculateLabelIsValid();
        }
    }
    public function invalidateDependentOnNombre_final():void
    {
        if (model_internal::_nombre_finalIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfNombre_final = null;
            model_internal::calculateNombre_finalIsValid();
        }
    }
    public function invalidateDependentOnId_empresa():void
    {
        if (model_internal::_id_empresaIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId_empresa = null;
            model_internal::calculateId_empresaIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
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
    public function get colorStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get colorValidator() : StyleValidator
    {
        return model_internal::_colorValidator;
    }

    model_internal function set _colorIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_colorIsValid;         
        if (oldValue !== value)
        {
            model_internal::_colorIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "colorIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get colorIsValid():Boolean
    {
        if (!model_internal::_colorIsValidCacheInitialized)
        {
            model_internal::calculateColorIsValid();
        }

        return model_internal::_colorIsValid;
    }

    model_internal function calculateColorIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_colorValidator.validate(model_internal::_instance.color)
        model_internal::_colorIsValid_der = (valRes.results == null);
        model_internal::_colorIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::colorValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::colorValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get colorValidationFailureMessages():Array
    {
        if (model_internal::_colorValidationFailureMessages == null)
            model_internal::calculateColorIsValid();

        return _colorValidationFailureMessages;
    }

    model_internal function set colorValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_colorValidationFailureMessages;

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
            model_internal::_colorValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "colorValidationFailureMessages", oldValue, value));
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

    [Bindable(event="propertyChange")]   
    public function get id_periodoStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_periodoValidator() : StyleValidator
    {
        return model_internal::_id_periodoValidator;
    }

    model_internal function set _id_periodoIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_periodoIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_periodoIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_periodoIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_periodoIsValid():Boolean
    {
        if (!model_internal::_id_periodoIsValidCacheInitialized)
        {
            model_internal::calculateId_periodoIsValid();
        }

        return model_internal::_id_periodoIsValid;
    }

    model_internal function calculateId_periodoIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_periodoValidator.validate(model_internal::_instance.id_periodo)
        model_internal::_id_periodoIsValid_der = (valRes.results == null);
        model_internal::_id_periodoIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_periodoValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_periodoValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_periodoValidationFailureMessages():Array
    {
        if (model_internal::_id_periodoValidationFailureMessages == null)
            model_internal::calculateId_periodoIsValid();

        return _id_periodoValidationFailureMessages;
    }

    model_internal function set id_periodoValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_periodoValidationFailureMessages;

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
            model_internal::_id_periodoValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_periodoValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get labelStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get labelValidator() : StyleValidator
    {
        return model_internal::_labelValidator;
    }

    model_internal function set _labelIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_labelIsValid;         
        if (oldValue !== value)
        {
            model_internal::_labelIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "labelIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get labelIsValid():Boolean
    {
        if (!model_internal::_labelIsValidCacheInitialized)
        {
            model_internal::calculateLabelIsValid();
        }

        return model_internal::_labelIsValid;
    }

    model_internal function calculateLabelIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_labelValidator.validate(model_internal::_instance.label)
        model_internal::_labelIsValid_der = (valRes.results == null);
        model_internal::_labelIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::labelValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::labelValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get labelValidationFailureMessages():Array
    {
        if (model_internal::_labelValidationFailureMessages == null)
            model_internal::calculateLabelIsValid();

        return _labelValidationFailureMessages;
    }

    model_internal function set labelValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_labelValidationFailureMessages;

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
            model_internal::_labelValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "labelValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nombre_finalStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nombre_finalValidator() : StyleValidator
    {
        return model_internal::_nombre_finalValidator;
    }

    model_internal function set _nombre_finalIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nombre_finalIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nombre_finalIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombre_finalIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nombre_finalIsValid():Boolean
    {
        if (!model_internal::_nombre_finalIsValidCacheInitialized)
        {
            model_internal::calculateNombre_finalIsValid();
        }

        return model_internal::_nombre_finalIsValid;
    }

    model_internal function calculateNombre_finalIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nombre_finalValidator.validate(model_internal::_instance.nombre_final)
        model_internal::_nombre_finalIsValid_der = (valRes.results == null);
        model_internal::_nombre_finalIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nombre_finalValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nombre_finalValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nombre_finalValidationFailureMessages():Array
    {
        if (model_internal::_nombre_finalValidationFailureMessages == null)
            model_internal::calculateNombre_finalIsValid();

        return _nombre_finalValidationFailureMessages;
    }

    model_internal function set nombre_finalValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nombre_finalValidationFailureMessages;

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
            model_internal::_nombre_finalValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombre_finalValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get grafStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get id_empresaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get id_empresaValidator() : StyleValidator
    {
        return model_internal::_id_empresaValidator;
    }

    model_internal function set _id_empresaIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_id_empresaIsValid;         
        if (oldValue !== value)
        {
            model_internal::_id_empresaIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_empresaIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get id_empresaIsValid():Boolean
    {
        if (!model_internal::_id_empresaIsValidCacheInitialized)
        {
            model_internal::calculateId_empresaIsValid();
        }

        return model_internal::_id_empresaIsValid;
    }

    model_internal function calculateId_empresaIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_id_empresaValidator.validate(model_internal::_instance.id_empresa)
        model_internal::_id_empresaIsValid_der = (valRes.results == null);
        model_internal::_id_empresaIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::id_empresaValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::id_empresaValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get id_empresaValidationFailureMessages():Array
    {
        if (model_internal::_id_empresaValidationFailureMessages == null)
            model_internal::calculateId_empresaIsValid();

        return _id_empresaValidationFailureMessages;
    }

    model_internal function set id_empresaValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_id_empresaValidationFailureMessages;

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
            model_internal::_id_empresaValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_empresaValidationFailureMessages", oldValue, value));
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
            case("id_tag_agf"):
            {
                return id_tag_agfValidationFailureMessages;
            }
            case("color"):
            {
                return colorValidationFailureMessages;
            }
            case("id_periodo"):
            {
                return id_periodoValidationFailureMessages;
            }
            case("label"):
            {
                return labelValidationFailureMessages;
            }
            case("nombre_final"):
            {
                return nombre_finalValidationFailureMessages;
            }
            case("id_empresa"):
            {
                return id_empresaValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
