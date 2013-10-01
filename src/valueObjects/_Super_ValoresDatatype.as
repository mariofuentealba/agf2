/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - ValoresDatatype.as.
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
public class _Super_ValoresDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _ValoresDatatypeEntityMetadata;
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
    private var _internal_id_tag_agf : String;
    private var _internal_rso : String;
    private var _internal_color : String;
    private var _internal_valor : int;
    private var _internal_indice : String;
    private var _internal_id_periodo : String;
    private var _internal_year : String;
    private var _internal_label : String;
    private var _internal_nombre_final : String;
    private var _internal_graf : int;
    private var _internal_id_empresa : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_ValoresDatatype()
    {
        _model = new _ValoresDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_tag_agf", model_internal::setterListenerId_tag_agf));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "rso", model_internal::setterListenerRso));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "color", model_internal::setterListenerColor));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "indice", model_internal::setterListenerIndice));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_periodo", model_internal::setterListenerId_periodo));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "year", model_internal::setterListenerYear));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "label", model_internal::setterListenerLabel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "nombre_final", model_internal::setterListenerNombre_final));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_empresa", model_internal::setterListenerId_empresa));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get id_tag_agf() : String
    {
        return _internal_id_tag_agf;
    }

    [Bindable(event="propertyChange")]
    public function get rso() : String
    {
        return _internal_rso;
    }

    [Bindable(event="propertyChange")]
    public function get color() : String
    {
        return _internal_color;
    }

    [Bindable(event="propertyChange")]
    public function get valor() : int
    {
        return _internal_valor;
    }

    [Bindable(event="propertyChange")]
    public function get indice() : String
    {
        return _internal_indice;
    }

    [Bindable(event="propertyChange")]
    public function get id_periodo() : String
    {
        return _internal_id_periodo;
    }

    [Bindable(event="propertyChange")]
    public function get year() : String
    {
        return _internal_year;
    }

    [Bindable(event="propertyChange")]
    public function get label() : String
    {
        return _internal_label;
    }

    [Bindable(event="propertyChange")]
    public function get nombre_final() : String
    {
        return _internal_nombre_final;
    }

    [Bindable(event="propertyChange")]
    public function get graf() : int
    {
        return _internal_graf;
    }

    [Bindable(event="propertyChange")]
    public function get id_empresa() : String
    {
        return _internal_id_empresa;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set id_tag_agf(value:String) : void
    {
        var oldValue:String = _internal_id_tag_agf;
        if (oldValue !== value)
        {
            _internal_id_tag_agf = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_tag_agf", oldValue, _internal_id_tag_agf));
        }
    }

    public function set rso(value:String) : void
    {
        var oldValue:String = _internal_rso;
        if (oldValue !== value)
        {
            _internal_rso = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rso", oldValue, _internal_rso));
        }
    }

    public function set color(value:String) : void
    {
        var oldValue:String = _internal_color;
        if (oldValue !== value)
        {
            _internal_color = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "color", oldValue, _internal_color));
        }
    }

    public function set valor(value:int) : void
    {
        var oldValue:int = _internal_valor;
        if (oldValue !== value)
        {
            _internal_valor = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "valor", oldValue, _internal_valor));
        }
    }

    public function set indice(value:String) : void
    {
        var oldValue:String = _internal_indice;
        if (oldValue !== value)
        {
            _internal_indice = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "indice", oldValue, _internal_indice));
        }
    }

    public function set id_periodo(value:String) : void
    {
        var oldValue:String = _internal_id_periodo;
        if (oldValue !== value)
        {
            _internal_id_periodo = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_periodo", oldValue, _internal_id_periodo));
        }
    }

    public function set year(value:String) : void
    {
        var oldValue:String = _internal_year;
        if (oldValue !== value)
        {
            _internal_year = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "year", oldValue, _internal_year));
        }
    }

    public function set label(value:String) : void
    {
        var oldValue:String = _internal_label;
        if (oldValue !== value)
        {
            _internal_label = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "label", oldValue, _internal_label));
        }
    }

    public function set nombre_final(value:String) : void
    {
        var oldValue:String = _internal_nombre_final;
        if (oldValue !== value)
        {
            _internal_nombre_final = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nombre_final", oldValue, _internal_nombre_final));
        }
    }

    public function set graf(value:int) : void
    {
        var oldValue:int = _internal_graf;
        if (oldValue !== value)
        {
            _internal_graf = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "graf", oldValue, _internal_graf));
        }
    }

    public function set id_empresa(value:String) : void
    {
        var oldValue:String = _internal_id_empresa;
        if (oldValue !== value)
        {
            _internal_id_empresa = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_empresa", oldValue, _internal_id_empresa));
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

    model_internal function setterListenerId_tag_agf(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_tag_agf();
    }

    model_internal function setterListenerRso(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRso();
    }

    model_internal function setterListenerColor(value:flash.events.Event):void
    {
        _model.invalidateDependentOnColor();
    }

    model_internal function setterListenerIndice(value:flash.events.Event):void
    {
        _model.invalidateDependentOnIndice();
    }

    model_internal function setterListenerId_periodo(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_periodo();
    }

    model_internal function setterListenerYear(value:flash.events.Event):void
    {
        _model.invalidateDependentOnYear();
    }

    model_internal function setterListenerLabel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLabel();
    }

    model_internal function setterListenerNombre_final(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNombre_final();
    }

    model_internal function setterListenerId_empresa(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_empresa();
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
        if (!_model.id_tag_agfIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_tag_agfValidationFailureMessages);
        }
        if (!_model.rsoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_rsoValidationFailureMessages);
        }
        if (!_model.colorIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_colorValidationFailureMessages);
        }
        if (!_model.indiceIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_indiceValidationFailureMessages);
        }
        if (!_model.id_periodoIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_periodoValidationFailureMessages);
        }
        if (!_model.yearIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_yearValidationFailureMessages);
        }
        if (!_model.labelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_labelValidationFailureMessages);
        }
        if (!_model.nombre_finalIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nombre_finalValidationFailureMessages);
        }
        if (!_model.id_empresaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_empresaValidationFailureMessages);
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
    public function get _model() : _ValoresDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ValoresDatatypeEntityMetadata) : void
    {
        var oldValue : _ValoresDatatypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfId_tag_agf : Array = null;
    model_internal var _doValidationLastValOfId_tag_agf : String;

    model_internal function _doValidationForId_tag_agf(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId_tag_agf != null && model_internal::_doValidationLastValOfId_tag_agf == value)
           return model_internal::_doValidationCacheOfId_tag_agf ;

        _model.model_internal::_id_tag_agfIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isId_tag_agfAvailable && _internal_id_tag_agf == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id_tag_agf is required"));
        }

        model_internal::_doValidationCacheOfId_tag_agf = validationFailures;
        model_internal::_doValidationLastValOfId_tag_agf = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRso : Array = null;
    model_internal var _doValidationLastValOfRso : String;

    model_internal function _doValidationForRso(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRso != null && model_internal::_doValidationLastValOfRso == value)
           return model_internal::_doValidationCacheOfRso ;

        _model.model_internal::_rsoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRsoAvailable && _internal_rso == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "rso is required"));
        }

        model_internal::_doValidationCacheOfRso = validationFailures;
        model_internal::_doValidationLastValOfRso = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfColor : Array = null;
    model_internal var _doValidationLastValOfColor : String;

    model_internal function _doValidationForColor(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfColor != null && model_internal::_doValidationLastValOfColor == value)
           return model_internal::_doValidationCacheOfColor ;

        _model.model_internal::_colorIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isColorAvailable && _internal_color == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "color is required"));
        }

        model_internal::_doValidationCacheOfColor = validationFailures;
        model_internal::_doValidationLastValOfColor = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfIndice : Array = null;
    model_internal var _doValidationLastValOfIndice : String;

    model_internal function _doValidationForIndice(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfIndice != null && model_internal::_doValidationLastValOfIndice == value)
           return model_internal::_doValidationCacheOfIndice ;

        _model.model_internal::_indiceIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIndiceAvailable && _internal_indice == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "indice is required"));
        }

        model_internal::_doValidationCacheOfIndice = validationFailures;
        model_internal::_doValidationLastValOfIndice = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId_periodo : Array = null;
    model_internal var _doValidationLastValOfId_periodo : String;

    model_internal function _doValidationForId_periodo(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId_periodo != null && model_internal::_doValidationLastValOfId_periodo == value)
           return model_internal::_doValidationCacheOfId_periodo ;

        _model.model_internal::_id_periodoIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isId_periodoAvailable && _internal_id_periodo == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id_periodo is required"));
        }

        model_internal::_doValidationCacheOfId_periodo = validationFailures;
        model_internal::_doValidationLastValOfId_periodo = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfYear : Array = null;
    model_internal var _doValidationLastValOfYear : String;

    model_internal function _doValidationForYear(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfYear != null && model_internal::_doValidationLastValOfYear == value)
           return model_internal::_doValidationCacheOfYear ;

        _model.model_internal::_yearIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isYearAvailable && _internal_year == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "year is required"));
        }

        model_internal::_doValidationCacheOfYear = validationFailures;
        model_internal::_doValidationLastValOfYear = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLabel : Array = null;
    model_internal var _doValidationLastValOfLabel : String;

    model_internal function _doValidationForLabel(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLabel != null && model_internal::_doValidationLastValOfLabel == value)
           return model_internal::_doValidationCacheOfLabel ;

        _model.model_internal::_labelIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLabelAvailable && _internal_label == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "label is required"));
        }

        model_internal::_doValidationCacheOfLabel = validationFailures;
        model_internal::_doValidationLastValOfLabel = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfNombre_final : Array = null;
    model_internal var _doValidationLastValOfNombre_final : String;

    model_internal function _doValidationForNombre_final(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNombre_final != null && model_internal::_doValidationLastValOfNombre_final == value)
           return model_internal::_doValidationCacheOfNombre_final ;

        _model.model_internal::_nombre_finalIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNombre_finalAvailable && _internal_nombre_final == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "nombre_final is required"));
        }

        model_internal::_doValidationCacheOfNombre_final = validationFailures;
        model_internal::_doValidationLastValOfNombre_final = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId_empresa : Array = null;
    model_internal var _doValidationLastValOfId_empresa : String;

    model_internal function _doValidationForId_empresa(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId_empresa != null && model_internal::_doValidationLastValOfId_empresa == value)
           return model_internal::_doValidationCacheOfId_empresa ;

        _model.model_internal::_id_empresaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isId_empresaAvailable && _internal_id_empresa == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id_empresa is required"));
        }

        model_internal::_doValidationCacheOfId_empresa = validationFailures;
        model_internal::_doValidationLastValOfId_empresa = value;

        return validationFailures;
    }
    

}

}
