/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - IndicesDatatype.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_IndicesDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _IndicesDatatypeEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_nombre : String;
    private var _internal_oa : String;
    private var _internal_id_indice_financiero : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_IndicesDatatype()
    {
        _model = new _IndicesDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombre", model_internal::setterListenerNombre));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "oa", model_internal::setterListenerOa));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_indice_financiero", model_internal::setterListenerId_indice_financiero));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get nombre() : String
    {
        return _internal_nombre;
    }

    [Bindable(event="propertyChange")]
    public function get oa() : String
    {
        return _internal_oa;
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financiero() : String
    {
        return _internal_id_indice_financiero;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set nombre(value:String) : void
    {
        var oldValue:String = _internal_nombre;
        if (oldValue !== value)
        {
            _internal_nombre = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombre", oldValue, _internal_nombre));
        }
    }

    public function set oa(value:String) : void
    {
        var oldValue:String = _internal_oa;
        if (oldValue !== value)
        {
            _internal_oa = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "oa", oldValue, _internal_oa));
        }
    }

    public function set id_indice_financiero(value:String) : void
    {
        var oldValue:String = _internal_id_indice_financiero;
        if (oldValue !== value)
        {
            _internal_id_indice_financiero = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_indice_financiero", oldValue, _internal_id_indice_financiero));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerNombre(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombre();
    }

    model_internal function setterListenerOa(value:flash.events.Event):void
    {
        _model.invalidateDependentOnOa();
    }

    model_internal function setterListenerId_indice_financiero(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_indice_financiero();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.nombreIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombreValidationFailureMessages);
        }
        if (!_model.oaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_oaValidationFailureMessages);
        }
        if (!_model.id_indice_financieroIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_indice_financieroValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _IndicesDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _IndicesDatatypeEntityMetadata) : void
    {
        var oldValue : _IndicesDatatypeEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfNombre : Array = null;
    model_internal var _doValidationLastValOfNombre : String;

    model_internal function _doValidationForNombre(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombre != null && model_internal::_doValidationLastValOfNombre == value)
           return model_internal::_doValidationCacheOfNombre ;

        _model.model_internal::_nombreIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombreAvailable && _internal_nombre == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombre is required"));
        }

        model_internal::_doValidationCacheOfNombre = validationFailures;
        model_internal::_doValidationLastValOfNombre = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfOa : Array = null;
    model_internal var _doValidationLastValOfOa : String;

    model_internal function _doValidationForOa(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfOa != null && model_internal::_doValidationLastValOfOa == value)
           return model_internal::_doValidationCacheOfOa ;

        _model.model_internal::_oaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isOaAvailable && _internal_oa == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "oa is required"));
        }

        model_internal::_doValidationCacheOfOa = validationFailures;
        model_internal::_doValidationLastValOfOa = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId_indice_financiero : Array = null;
    model_internal var _doValidationLastValOfId_indice_financiero : String;

    model_internal function _doValidationForId_indice_financiero(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId_indice_financiero != null && model_internal::_doValidationLastValOfId_indice_financiero == value)
           return model_internal::_doValidationCacheOfId_indice_financiero ;

        _model.model_internal::_id_indice_financieroIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isId_indice_financieroAvailable && _internal_id_indice_financiero == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id_indice_financiero is required"));
        }

        model_internal::_doValidationCacheOfId_indice_financiero = validationFailures;
        model_internal::_doValidationLastValOfId_indice_financiero = value;

        return validationFailures;
    }
    

}

}
