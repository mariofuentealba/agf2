/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - XbrlCarga.as.
 */
package services.xbrlcarga
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.serializers.utility.TypeUtility;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;

import mx.collections.ItemResponder;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

[ExcludeClass]
internal class _Super_XbrlCarga extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{

    // Constructor
    public function _Super_XbrlCarga()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;

        operation = new mx.rpc.remoting.Operation(null, "insertarValor");
         operation.resultType = Object;
        operations["insertarValor"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "descargaSVS");
         operation.resultType = Object;
        operations["descargaSVS"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "cargaEmpresas");
         operation.resultType = Object;
        operations["cargaEmpresas"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "preparaCarga");
         operation.resultType = Object;
        operations["preparaCarga"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "descargaSeleccion");
         operation.resultType = Object;
        operations["descargaSeleccion"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "rescataEmpresas");
         operation.resultType = String;
        operations["rescataEmpresas"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarErrorFormato");
         operation.resultType = Object;
        operations["insertarErrorFormato"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "insertarEmpresas2");
         operation.resultType = String;
        operations["insertarEmpresas2"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        _serviceControl.source = "XbrlCarga";
        _serviceControl.endpoint = "gateway.php";


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
        destination = "XbrlCarga";
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'insertarValor' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarValor(xmlParam:Object, contextos:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarValor");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(xmlParam,contextos) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'descargaSVS' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function descargaSVS(periodo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("descargaSVS");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(periodo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'cargaEmpresas' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function cargaEmpresas(periodo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("cargaEmpresas");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(periodo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'preparaCarga' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function preparaCarga(periodo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("preparaCarga");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(periodo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'descargaSeleccion' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function descargaSeleccion(data:Object, periodo:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("descargaSeleccion");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(data,periodo) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'rescataEmpresas' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function rescataEmpresas() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("rescataEmpresas");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarErrorFormato' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarErrorFormato(xmlParam:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarErrorFormato");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(xmlParam) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'insertarEmpresas2' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function insertarEmpresas2(xmlParam:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("insertarEmpresas2");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(xmlParam) ;
        return _internal_token;
    }
     
}

}
