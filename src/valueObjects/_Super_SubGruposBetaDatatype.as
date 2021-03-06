/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - SubGruposBetaDatatype.as.
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
public class _Super_SubGruposBetaDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _SubGruposBetaDatatypeEntityMetadata;
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
    private var _internal_ID_SUBGRUPO : String;
    private var _internal_ID_TIPO_EMPRESA : String;
    private var _internal_descripcion : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_SubGruposBetaDatatype()
    {
        _model = new _SubGruposBetaDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombre", model_internal::setterListenerNombre));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ID_SUBGRUPO", model_internal::setterListenerID_SUBGRUPO));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "ID_TIPO_EMPRESA", model_internal::setterListenerID_TIPO_EMPRESA));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "descripcion", model_internal::setterListenerDescripcion));

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
    public function get ID_SUBGRUPO() : String
    {
        return _internal_ID_SUBGRUPO;
    }

    [Bindable(event="propertyChange")]
    public function get ID_TIPO_EMPRESA() : String
    {
        return _internal_ID_TIPO_EMPRESA;
    }

    [Bindable(event="propertyChange")]
    public function get descripcion() : String
    {
        return _internal_descripcion;
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

    public function set ID_SUBGRUPO(value:String) : void
    {
        var oldValue:String = _internal_ID_SUBGRUPO;
        if (oldValue !== value)
        {
            _internal_ID_SUBGRUPO = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_SUBGRUPO", oldValue, _internal_ID_SUBGRUPO));
        }
    }

    public function set ID_TIPO_EMPRESA(value:String) : void
    {
        var oldValue:String = _internal_ID_TIPO_EMPRESA;
        if (oldValue !== value)
        {
            _internal_ID_TIPO_EMPRESA = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "ID_TIPO_EMPRESA", oldValue, _internal_ID_TIPO_EMPRESA));
        }
    }

    public function set descripcion(value:String) : void
    {
        var oldValue:String = _internal_descripcion;
        if (oldValue !== value)
        {
            _internal_descripcion = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "descripcion", oldValue, _internal_descripcion));
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

    model_internal function setterListenerID_SUBGRUPO(value:flash.events.Event):void
    {
        _model.invalidateDependentOnID_SUBGRUPO();
    }

    model_internal function setterListenerID_TIPO_EMPRESA(value:flash.events.Event):void
    {
        _model.invalidateDependentOnID_TIPO_EMPRESA();
    }

    model_internal function setterListenerDescripcion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescripcion();
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
        if (!_model.ID_SUBGRUPOIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ID_SUBGRUPOValidationFailureMessages);
        }
        if (!_model.ID_TIPO_EMPRESAIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_ID_TIPO_EMPRESAValidationFailureMessages);
        }
        if (!_model.descripcionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descripcionValidationFailureMessages);
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
    public function get _model() : _SubGruposBetaDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _SubGruposBetaDatatypeEntityMetadata) : void
    {
        var oldValue : _SubGruposBetaDatatypeEntityMetadata = model_internal::_dminternal_model;
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
    
    model_internal var _doValidationCacheOfID_SUBGRUPO : Array = null;
    model_internal var _doValidationLastValOfID_SUBGRUPO : String;

    model_internal function _doValidationForID_SUBGRUPO(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfID_SUBGRUPO != null && model_internal::_doValidationLastValOfID_SUBGRUPO == value)
           return model_internal::_doValidationCacheOfID_SUBGRUPO ;

        _model.model_internal::_ID_SUBGRUPOIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isID_SUBGRUPOAvailable && _internal_ID_SUBGRUPO == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ID_SUBGRUPO is required"));
        }

        model_internal::_doValidationCacheOfID_SUBGRUPO = validationFailures;
        model_internal::_doValidationLastValOfID_SUBGRUPO = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfID_TIPO_EMPRESA : Array = null;
    model_internal var _doValidationLastValOfID_TIPO_EMPRESA : String;

    model_internal function _doValidationForID_TIPO_EMPRESA(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfID_TIPO_EMPRESA != null && model_internal::_doValidationLastValOfID_TIPO_EMPRESA == value)
           return model_internal::_doValidationCacheOfID_TIPO_EMPRESA ;

        _model.model_internal::_ID_TIPO_EMPRESAIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isID_TIPO_EMPRESAAvailable && _internal_ID_TIPO_EMPRESA == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "ID_TIPO_EMPRESA is required"));
        }

        model_internal::_doValidationCacheOfID_TIPO_EMPRESA = validationFailures;
        model_internal::_doValidationLastValOfID_TIPO_EMPRESA = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescripcion : Array = null;
    model_internal var _doValidationLastValOfDescripcion : String;

    model_internal function _doValidationForDescripcion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescripcion != null && model_internal::_doValidationLastValOfDescripcion == value)
           return model_internal::_doValidationCacheOfDescripcion ;

        _model.model_internal::_descripcionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescripcionAvailable && _internal_descripcion == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "descripcion is required"));
        }

        model_internal::_doValidationCacheOfDescripcion = validationFailures;
        model_internal::_doValidationLastValOfDescripcion = value;

        return validationFailures;
    }
    

}

}
