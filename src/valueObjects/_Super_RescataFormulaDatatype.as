/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - RescataFormulaDatatype.as.
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
public class _Super_RescataFormulaDatatype extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _RescataFormulaDatatypeEntityMetadata;
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
    private var _internal_num_formula : String;
    private var _internal_campo1n : String;
    private var _internal_selected : String;
    private var _internal_campo3n : String;
    private var _internal_tipoc2 : String;
    private var _internal_id_indice_financiero : String;
    private var _internal_tipoc1 : String;
    private var _internal_campo5n : String;
    private var _internal_tipoc5 : String;
    private var _internal_tipoc4 : String;
    private var _internal_tipoc3 : String;
    private var _internal_id_formula : String;
    private var _internal_campo2n : String;
    private var _internal_campo4n : String;
    private var _internal_campo3 : String;
    private var _internal_cod3 : String;
    private var _internal_campo2 : String;
    private var _internal_cod2 : String;
    private var _internal_campo5 : String;
    private var _internal_cod1 : String;
    private var _internal_campo4 : String;
    private var _internal_campo1 : String;
    private var _internal_cod5 : String;
    private var _internal_formula : String;
    private var _internal_cod4 : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_RescataFormulaDatatype()
    {
        _model = new _RescataFormulaDatatypeEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "num_formula", model_internal::setterListenerNum_formula));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo1n", model_internal::setterListenerCampo1n));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "selected", model_internal::setterListenerSelected));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo3n", model_internal::setterListenerCampo3n));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoc2", model_internal::setterListenerTipoc2));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_indice_financiero", model_internal::setterListenerId_indice_financiero));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoc1", model_internal::setterListenerTipoc1));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo5n", model_internal::setterListenerCampo5n));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoc5", model_internal::setterListenerTipoc5));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoc4", model_internal::setterListenerTipoc4));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "tipoc3", model_internal::setterListenerTipoc3));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id_formula", model_internal::setterListenerId_formula));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo2n", model_internal::setterListenerCampo2n));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo4n", model_internal::setterListenerCampo4n));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo3", model_internal::setterListenerCampo3));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cod3", model_internal::setterListenerCod3));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo2", model_internal::setterListenerCampo2));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cod2", model_internal::setterListenerCod2));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo5", model_internal::setterListenerCampo5));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cod1", model_internal::setterListenerCod1));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo4", model_internal::setterListenerCampo4));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "campo1", model_internal::setterListenerCampo1));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cod5", model_internal::setterListenerCod5));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "formula", model_internal::setterListenerFormula));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cod4", model_internal::setterListenerCod4));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get num_formula() : String
    {
        return _internal_num_formula;
    }

    [Bindable(event="propertyChange")]
    public function get campo1n() : String
    {
        return _internal_campo1n;
    }

    [Bindable(event="propertyChange")]
    public function get selected() : String
    {
        return _internal_selected;
    }

    [Bindable(event="propertyChange")]
    public function get campo3n() : String
    {
        return _internal_campo3n;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc2() : String
    {
        return _internal_tipoc2;
    }

    [Bindable(event="propertyChange")]
    public function get id_indice_financiero() : String
    {
        return _internal_id_indice_financiero;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc1() : String
    {
        return _internal_tipoc1;
    }

    [Bindable(event="propertyChange")]
    public function get campo5n() : String
    {
        return _internal_campo5n;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc5() : String
    {
        return _internal_tipoc5;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc4() : String
    {
        return _internal_tipoc4;
    }

    [Bindable(event="propertyChange")]
    public function get tipoc3() : String
    {
        return _internal_tipoc3;
    }

    [Bindable(event="propertyChange")]
    public function get id_formula() : String
    {
        return _internal_id_formula;
    }

    [Bindable(event="propertyChange")]
    public function get campo2n() : String
    {
        return _internal_campo2n;
    }

    [Bindable(event="propertyChange")]
    public function get campo4n() : String
    {
        return _internal_campo4n;
    }

    [Bindable(event="propertyChange")]
    public function get campo3() : String
    {
        return _internal_campo3;
    }

    [Bindable(event="propertyChange")]
    public function get cod3() : String
    {
        return _internal_cod3;
    }

    [Bindable(event="propertyChange")]
    public function get campo2() : String
    {
        return _internal_campo2;
    }

    [Bindable(event="propertyChange")]
    public function get cod2() : String
    {
        return _internal_cod2;
    }

    [Bindable(event="propertyChange")]
    public function get campo5() : String
    {
        return _internal_campo5;
    }

    [Bindable(event="propertyChange")]
    public function get cod1() : String
    {
        return _internal_cod1;
    }

    [Bindable(event="propertyChange")]
    public function get campo4() : String
    {
        return _internal_campo4;
    }

    [Bindable(event="propertyChange")]
    public function get campo1() : String
    {
        return _internal_campo1;
    }

    [Bindable(event="propertyChange")]
    public function get cod5() : String
    {
        return _internal_cod5;
    }

    [Bindable(event="propertyChange")]
    public function get formula() : String
    {
        return _internal_formula;
    }

    [Bindable(event="propertyChange")]
    public function get cod4() : String
    {
        return _internal_cod4;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set num_formula(value:String) : void
    {
        var oldValue:String = _internal_num_formula;
        if (oldValue !== value)
        {
            _internal_num_formula = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "num_formula", oldValue, _internal_num_formula));
        }
    }

    public function set campo1n(value:String) : void
    {
        var oldValue:String = _internal_campo1n;
        if (oldValue !== value)
        {
            _internal_campo1n = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo1n", oldValue, _internal_campo1n));
        }
    }

    public function set selected(value:String) : void
    {
        var oldValue:String = _internal_selected;
        if (oldValue !== value)
        {
            _internal_selected = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "selected", oldValue, _internal_selected));
        }
    }

    public function set campo3n(value:String) : void
    {
        var oldValue:String = _internal_campo3n;
        if (oldValue !== value)
        {
            _internal_campo3n = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo3n", oldValue, _internal_campo3n));
        }
    }

    public function set tipoc2(value:String) : void
    {
        var oldValue:String = _internal_tipoc2;
        if (oldValue !== value)
        {
            _internal_tipoc2 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc2", oldValue, _internal_tipoc2));
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

    public function set tipoc1(value:String) : void
    {
        var oldValue:String = _internal_tipoc1;
        if (oldValue !== value)
        {
            _internal_tipoc1 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc1", oldValue, _internal_tipoc1));
        }
    }

    public function set campo5n(value:String) : void
    {
        var oldValue:String = _internal_campo5n;
        if (oldValue !== value)
        {
            _internal_campo5n = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo5n", oldValue, _internal_campo5n));
        }
    }

    public function set tipoc5(value:String) : void
    {
        var oldValue:String = _internal_tipoc5;
        if (oldValue !== value)
        {
            _internal_tipoc5 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc5", oldValue, _internal_tipoc5));
        }
    }

    public function set tipoc4(value:String) : void
    {
        var oldValue:String = _internal_tipoc4;
        if (oldValue !== value)
        {
            _internal_tipoc4 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc4", oldValue, _internal_tipoc4));
        }
    }

    public function set tipoc3(value:String) : void
    {
        var oldValue:String = _internal_tipoc3;
        if (oldValue !== value)
        {
            _internal_tipoc3 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tipoc3", oldValue, _internal_tipoc3));
        }
    }

    public function set id_formula(value:String) : void
    {
        var oldValue:String = _internal_id_formula;
        if (oldValue !== value)
        {
            _internal_id_formula = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id_formula", oldValue, _internal_id_formula));
        }
    }

    public function set campo2n(value:String) : void
    {
        var oldValue:String = _internal_campo2n;
        if (oldValue !== value)
        {
            _internal_campo2n = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo2n", oldValue, _internal_campo2n));
        }
    }

    public function set campo4n(value:String) : void
    {
        var oldValue:String = _internal_campo4n;
        if (oldValue !== value)
        {
            _internal_campo4n = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo4n", oldValue, _internal_campo4n));
        }
    }

    public function set campo3(value:String) : void
    {
        var oldValue:String = _internal_campo3;
        if (oldValue !== value)
        {
            _internal_campo3 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo3", oldValue, _internal_campo3));
        }
    }

    public function set cod3(value:String) : void
    {
        var oldValue:String = _internal_cod3;
        if (oldValue !== value)
        {
            _internal_cod3 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod3", oldValue, _internal_cod3));
        }
    }

    public function set campo2(value:String) : void
    {
        var oldValue:String = _internal_campo2;
        if (oldValue !== value)
        {
            _internal_campo2 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo2", oldValue, _internal_campo2));
        }
    }

    public function set cod2(value:String) : void
    {
        var oldValue:String = _internal_cod2;
        if (oldValue !== value)
        {
            _internal_cod2 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod2", oldValue, _internal_cod2));
        }
    }

    public function set campo5(value:String) : void
    {
        var oldValue:String = _internal_campo5;
        if (oldValue !== value)
        {
            _internal_campo5 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo5", oldValue, _internal_campo5));
        }
    }

    public function set cod1(value:String) : void
    {
        var oldValue:String = _internal_cod1;
        if (oldValue !== value)
        {
            _internal_cod1 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod1", oldValue, _internal_cod1));
        }
    }

    public function set campo4(value:String) : void
    {
        var oldValue:String = _internal_campo4;
        if (oldValue !== value)
        {
            _internal_campo4 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo4", oldValue, _internal_campo4));
        }
    }

    public function set campo1(value:String) : void
    {
        var oldValue:String = _internal_campo1;
        if (oldValue !== value)
        {
            _internal_campo1 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "campo1", oldValue, _internal_campo1));
        }
    }

    public function set cod5(value:String) : void
    {
        var oldValue:String = _internal_cod5;
        if (oldValue !== value)
        {
            _internal_cod5 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod5", oldValue, _internal_cod5));
        }
    }

    public function set formula(value:String) : void
    {
        var oldValue:String = _internal_formula;
        if (oldValue !== value)
        {
            _internal_formula = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "formula", oldValue, _internal_formula));
        }
    }

    public function set cod4(value:String) : void
    {
        var oldValue:String = _internal_cod4;
        if (oldValue !== value)
        {
            _internal_cod4 = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cod4", oldValue, _internal_cod4));
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

    model_internal function setterListenerNum_formula(value:flash.events.Event):void
    {
        _model.invalidateDependentOnNum_formula();
    }

    model_internal function setterListenerCampo1n(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo1n();
    }

    model_internal function setterListenerSelected(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSelected();
    }

    model_internal function setterListenerCampo3n(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo3n();
    }

    model_internal function setterListenerTipoc2(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoc2();
    }

    model_internal function setterListenerId_indice_financiero(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_indice_financiero();
    }

    model_internal function setterListenerTipoc1(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoc1();
    }

    model_internal function setterListenerCampo5n(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo5n();
    }

    model_internal function setterListenerTipoc5(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoc5();
    }

    model_internal function setterListenerTipoc4(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoc4();
    }

    model_internal function setterListenerTipoc3(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTipoc3();
    }

    model_internal function setterListenerId_formula(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId_formula();
    }

    model_internal function setterListenerCampo2n(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo2n();
    }

    model_internal function setterListenerCampo4n(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo4n();
    }

    model_internal function setterListenerCampo3(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo3();
    }

    model_internal function setterListenerCod3(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCod3();
    }

    model_internal function setterListenerCampo2(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo2();
    }

    model_internal function setterListenerCod2(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCod2();
    }

    model_internal function setterListenerCampo5(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo5();
    }

    model_internal function setterListenerCod1(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCod1();
    }

    model_internal function setterListenerCampo4(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo4();
    }

    model_internal function setterListenerCampo1(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCampo1();
    }

    model_internal function setterListenerCod5(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCod5();
    }

    model_internal function setterListenerFormula(value:flash.events.Event):void
    {
        _model.invalidateDependentOnFormula();
    }

    model_internal function setterListenerCod4(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCod4();
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
        if (!_model.num_formulaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_num_formulaValidationFailureMessages);
        }
        if (!_model.campo1nIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo1nValidationFailureMessages);
        }
        if (!_model.selectedIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_selectedValidationFailureMessages);
        }
        if (!_model.campo3nIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo3nValidationFailureMessages);
        }
        if (!_model.tipoc2IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoc2ValidationFailureMessages);
        }
        if (!_model.id_indice_financieroIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_indice_financieroValidationFailureMessages);
        }
        if (!_model.tipoc1IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoc1ValidationFailureMessages);
        }
        if (!_model.campo5nIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo5nValidationFailureMessages);
        }
        if (!_model.tipoc5IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoc5ValidationFailureMessages);
        }
        if (!_model.tipoc4IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoc4ValidationFailureMessages);
        }
        if (!_model.tipoc3IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_tipoc3ValidationFailureMessages);
        }
        if (!_model.id_formulaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_id_formulaValidationFailureMessages);
        }
        if (!_model.campo2nIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo2nValidationFailureMessages);
        }
        if (!_model.campo4nIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo4nValidationFailureMessages);
        }
        if (!_model.campo3IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo3ValidationFailureMessages);
        }
        if (!_model.cod3IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cod3ValidationFailureMessages);
        }
        if (!_model.campo2IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo2ValidationFailureMessages);
        }
        if (!_model.cod2IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cod2ValidationFailureMessages);
        }
        if (!_model.campo5IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo5ValidationFailureMessages);
        }
        if (!_model.cod1IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cod1ValidationFailureMessages);
        }
        if (!_model.campo4IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo4ValidationFailureMessages);
        }
        if (!_model.campo1IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_campo1ValidationFailureMessages);
        }
        if (!_model.cod5IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cod5ValidationFailureMessages);
        }
        if (!_model.formulaIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_formulaValidationFailureMessages);
        }
        if (!_model.cod4IsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cod4ValidationFailureMessages);
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
    public function get _model() : _RescataFormulaDatatypeEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _RescataFormulaDatatypeEntityMetadata) : void
    {
        var oldValue : _RescataFormulaDatatypeEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfNum_formula : Array = null;
    model_internal var _doValidationLastValOfNum_formula : String;

    model_internal function _doValidationForNum_formula(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfNum_formula != null && model_internal::_doValidationLastValOfNum_formula == value)
           return model_internal::_doValidationCacheOfNum_formula ;

        _model.model_internal::_num_formulaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNum_formulaAvailable && _internal_num_formula == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "num_formula is required"));
        }

        model_internal::_doValidationCacheOfNum_formula = validationFailures;
        model_internal::_doValidationLastValOfNum_formula = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo1n : Array = null;
    model_internal var _doValidationLastValOfCampo1n : String;

    model_internal function _doValidationForCampo1n(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo1n != null && model_internal::_doValidationLastValOfCampo1n == value)
           return model_internal::_doValidationCacheOfCampo1n ;

        _model.model_internal::_campo1nIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo1nAvailable && _internal_campo1n == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo1n is required"));
        }

        model_internal::_doValidationCacheOfCampo1n = validationFailures;
        model_internal::_doValidationLastValOfCampo1n = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSelected : Array = null;
    model_internal var _doValidationLastValOfSelected : String;

    model_internal function _doValidationForSelected(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSelected != null && model_internal::_doValidationLastValOfSelected == value)
           return model_internal::_doValidationCacheOfSelected ;

        _model.model_internal::_selectedIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSelectedAvailable && _internal_selected == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "selected is required"));
        }

        model_internal::_doValidationCacheOfSelected = validationFailures;
        model_internal::_doValidationLastValOfSelected = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo3n : Array = null;
    model_internal var _doValidationLastValOfCampo3n : String;

    model_internal function _doValidationForCampo3n(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo3n != null && model_internal::_doValidationLastValOfCampo3n == value)
           return model_internal::_doValidationCacheOfCampo3n ;

        _model.model_internal::_campo3nIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo3nAvailable && _internal_campo3n == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo3n is required"));
        }

        model_internal::_doValidationCacheOfCampo3n = validationFailures;
        model_internal::_doValidationLastValOfCampo3n = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoc2 : Array = null;
    model_internal var _doValidationLastValOfTipoc2 : String;

    model_internal function _doValidationForTipoc2(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoc2 != null && model_internal::_doValidationLastValOfTipoc2 == value)
           return model_internal::_doValidationCacheOfTipoc2 ;

        _model.model_internal::_tipoc2IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoc2Available && _internal_tipoc2 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoc2 is required"));
        }

        model_internal::_doValidationCacheOfTipoc2 = validationFailures;
        model_internal::_doValidationLastValOfTipoc2 = value;

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
    
    model_internal var _doValidationCacheOfTipoc1 : Array = null;
    model_internal var _doValidationLastValOfTipoc1 : String;

    model_internal function _doValidationForTipoc1(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoc1 != null && model_internal::_doValidationLastValOfTipoc1 == value)
           return model_internal::_doValidationCacheOfTipoc1 ;

        _model.model_internal::_tipoc1IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoc1Available && _internal_tipoc1 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoc1 is required"));
        }

        model_internal::_doValidationCacheOfTipoc1 = validationFailures;
        model_internal::_doValidationLastValOfTipoc1 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo5n : Array = null;
    model_internal var _doValidationLastValOfCampo5n : String;

    model_internal function _doValidationForCampo5n(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo5n != null && model_internal::_doValidationLastValOfCampo5n == value)
           return model_internal::_doValidationCacheOfCampo5n ;

        _model.model_internal::_campo5nIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo5nAvailable && _internal_campo5n == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo5n is required"));
        }

        model_internal::_doValidationCacheOfCampo5n = validationFailures;
        model_internal::_doValidationLastValOfCampo5n = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoc5 : Array = null;
    model_internal var _doValidationLastValOfTipoc5 : String;

    model_internal function _doValidationForTipoc5(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoc5 != null && model_internal::_doValidationLastValOfTipoc5 == value)
           return model_internal::_doValidationCacheOfTipoc5 ;

        _model.model_internal::_tipoc5IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoc5Available && _internal_tipoc5 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoc5 is required"));
        }

        model_internal::_doValidationCacheOfTipoc5 = validationFailures;
        model_internal::_doValidationLastValOfTipoc5 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoc4 : Array = null;
    model_internal var _doValidationLastValOfTipoc4 : String;

    model_internal function _doValidationForTipoc4(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoc4 != null && model_internal::_doValidationLastValOfTipoc4 == value)
           return model_internal::_doValidationCacheOfTipoc4 ;

        _model.model_internal::_tipoc4IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoc4Available && _internal_tipoc4 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoc4 is required"));
        }

        model_internal::_doValidationCacheOfTipoc4 = validationFailures;
        model_internal::_doValidationLastValOfTipoc4 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTipoc3 : Array = null;
    model_internal var _doValidationLastValOfTipoc3 : String;

    model_internal function _doValidationForTipoc3(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTipoc3 != null && model_internal::_doValidationLastValOfTipoc3 == value)
           return model_internal::_doValidationCacheOfTipoc3 ;

        _model.model_internal::_tipoc3IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTipoc3Available && _internal_tipoc3 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "tipoc3 is required"));
        }

        model_internal::_doValidationCacheOfTipoc3 = validationFailures;
        model_internal::_doValidationLastValOfTipoc3 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId_formula : Array = null;
    model_internal var _doValidationLastValOfId_formula : String;

    model_internal function _doValidationForId_formula(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId_formula != null && model_internal::_doValidationLastValOfId_formula == value)
           return model_internal::_doValidationCacheOfId_formula ;

        _model.model_internal::_id_formulaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isId_formulaAvailable && _internal_id_formula == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id_formula is required"));
        }

        model_internal::_doValidationCacheOfId_formula = validationFailures;
        model_internal::_doValidationLastValOfId_formula = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo2n : Array = null;
    model_internal var _doValidationLastValOfCampo2n : String;

    model_internal function _doValidationForCampo2n(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo2n != null && model_internal::_doValidationLastValOfCampo2n == value)
           return model_internal::_doValidationCacheOfCampo2n ;

        _model.model_internal::_campo2nIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo2nAvailable && _internal_campo2n == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo2n is required"));
        }

        model_internal::_doValidationCacheOfCampo2n = validationFailures;
        model_internal::_doValidationLastValOfCampo2n = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo4n : Array = null;
    model_internal var _doValidationLastValOfCampo4n : String;

    model_internal function _doValidationForCampo4n(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo4n != null && model_internal::_doValidationLastValOfCampo4n == value)
           return model_internal::_doValidationCacheOfCampo4n ;

        _model.model_internal::_campo4nIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo4nAvailable && _internal_campo4n == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo4n is required"));
        }

        model_internal::_doValidationCacheOfCampo4n = validationFailures;
        model_internal::_doValidationLastValOfCampo4n = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo3 : Array = null;
    model_internal var _doValidationLastValOfCampo3 : String;

    model_internal function _doValidationForCampo3(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo3 != null && model_internal::_doValidationLastValOfCampo3 == value)
           return model_internal::_doValidationCacheOfCampo3 ;

        _model.model_internal::_campo3IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo3Available && _internal_campo3 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo3 is required"));
        }

        model_internal::_doValidationCacheOfCampo3 = validationFailures;
        model_internal::_doValidationLastValOfCampo3 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCod3 : Array = null;
    model_internal var _doValidationLastValOfCod3 : String;

    model_internal function _doValidationForCod3(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCod3 != null && model_internal::_doValidationLastValOfCod3 == value)
           return model_internal::_doValidationCacheOfCod3 ;

        _model.model_internal::_cod3IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCod3Available && _internal_cod3 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cod3 is required"));
        }

        model_internal::_doValidationCacheOfCod3 = validationFailures;
        model_internal::_doValidationLastValOfCod3 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo2 : Array = null;
    model_internal var _doValidationLastValOfCampo2 : String;

    model_internal function _doValidationForCampo2(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo2 != null && model_internal::_doValidationLastValOfCampo2 == value)
           return model_internal::_doValidationCacheOfCampo2 ;

        _model.model_internal::_campo2IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo2Available && _internal_campo2 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo2 is required"));
        }

        model_internal::_doValidationCacheOfCampo2 = validationFailures;
        model_internal::_doValidationLastValOfCampo2 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCod2 : Array = null;
    model_internal var _doValidationLastValOfCod2 : String;

    model_internal function _doValidationForCod2(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCod2 != null && model_internal::_doValidationLastValOfCod2 == value)
           return model_internal::_doValidationCacheOfCod2 ;

        _model.model_internal::_cod2IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCod2Available && _internal_cod2 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cod2 is required"));
        }

        model_internal::_doValidationCacheOfCod2 = validationFailures;
        model_internal::_doValidationLastValOfCod2 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo5 : Array = null;
    model_internal var _doValidationLastValOfCampo5 : String;

    model_internal function _doValidationForCampo5(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo5 != null && model_internal::_doValidationLastValOfCampo5 == value)
           return model_internal::_doValidationCacheOfCampo5 ;

        _model.model_internal::_campo5IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo5Available && _internal_campo5 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo5 is required"));
        }

        model_internal::_doValidationCacheOfCampo5 = validationFailures;
        model_internal::_doValidationLastValOfCampo5 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCod1 : Array = null;
    model_internal var _doValidationLastValOfCod1 : String;

    model_internal function _doValidationForCod1(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCod1 != null && model_internal::_doValidationLastValOfCod1 == value)
           return model_internal::_doValidationCacheOfCod1 ;

        _model.model_internal::_cod1IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCod1Available && _internal_cod1 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cod1 is required"));
        }

        model_internal::_doValidationCacheOfCod1 = validationFailures;
        model_internal::_doValidationLastValOfCod1 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo4 : Array = null;
    model_internal var _doValidationLastValOfCampo4 : String;

    model_internal function _doValidationForCampo4(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo4 != null && model_internal::_doValidationLastValOfCampo4 == value)
           return model_internal::_doValidationCacheOfCampo4 ;

        _model.model_internal::_campo4IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo4Available && _internal_campo4 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo4 is required"));
        }

        model_internal::_doValidationCacheOfCampo4 = validationFailures;
        model_internal::_doValidationLastValOfCampo4 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCampo1 : Array = null;
    model_internal var _doValidationLastValOfCampo1 : String;

    model_internal function _doValidationForCampo1(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCampo1 != null && model_internal::_doValidationLastValOfCampo1 == value)
           return model_internal::_doValidationCacheOfCampo1 ;

        _model.model_internal::_campo1IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCampo1Available && _internal_campo1 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "campo1 is required"));
        }

        model_internal::_doValidationCacheOfCampo1 = validationFailures;
        model_internal::_doValidationLastValOfCampo1 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCod5 : Array = null;
    model_internal var _doValidationLastValOfCod5 : String;

    model_internal function _doValidationForCod5(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCod5 != null && model_internal::_doValidationLastValOfCod5 == value)
           return model_internal::_doValidationCacheOfCod5 ;

        _model.model_internal::_cod5IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCod5Available && _internal_cod5 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cod5 is required"));
        }

        model_internal::_doValidationCacheOfCod5 = validationFailures;
        model_internal::_doValidationLastValOfCod5 = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfFormula : Array = null;
    model_internal var _doValidationLastValOfFormula : String;

    model_internal function _doValidationForFormula(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfFormula != null && model_internal::_doValidationLastValOfFormula == value)
           return model_internal::_doValidationCacheOfFormula ;

        _model.model_internal::_formulaIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isFormulaAvailable && _internal_formula == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "formula is required"));
        }

        model_internal::_doValidationCacheOfFormula = validationFailures;
        model_internal::_doValidationLastValOfFormula = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCod4 : Array = null;
    model_internal var _doValidationLastValOfCod4 : String;

    model_internal function _doValidationForCod4(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCod4 != null && model_internal::_doValidationLastValOfCod4 == value)
           return model_internal::_doValidationCacheOfCod4 ;

        _model.model_internal::_cod4IsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCod4Available && _internal_cod4 == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cod4 is required"));
        }

        model_internal::_doValidationCacheOfCod4 = validationFailures;
        model_internal::_doValidationLastValOfCod4 = value;

        return validationFailures;
    }
    

}

}
