{
  local d = (import 'doc-util/main.libsonnet'),
  '#':: d.pkg(name='driverRequests', url='', help='"DriverRequests describes all resources that are needed from one particular driver."'),
  '#withDriverName':: d.fn(help='"DriverName is the name used by the DRA driver kubelet plugin."', args=[d.arg(name='driverName', type=d.T.string)]),
  withDriverName(driverName): { driverName: driverName },
  '#withRequests':: d.fn(help='"Requests describes all resources that are needed from the driver."', args=[d.arg(name='requests', type=d.T.array)]),
  withRequests(requests): { requests: if std.isArray(v=requests) then requests else [requests] },
  '#withRequestsMixin':: d.fn(help='"Requests describes all resources that are needed from the driver."\n\n**Note:** This function appends passed data to existing values', args=[d.arg(name='requests', type=d.T.array)]),
  withRequestsMixin(requests): { requests+: if std.isArray(v=requests) then requests else [requests] },
  '#withVendorParameters':: d.fn(help="\"RawExtension is used to hold extensions in external versions.\\n\\nTo use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.\\n\\n// Internal package:\\n\\n\\ttype MyAPIObject struct {\\n\\t\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\t\\tMyPlugin runtime.Object `json:\\\"myPlugin\\\"`\\n\\t}\\n\\n\\ttype PluginA struct {\\n\\t\\tAOption string `json:\\\"aOption\\\"`\\n\\t}\\n\\n// External package:\\n\\n\\ttype MyAPIObject struct {\\n\\t\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\t\\tMyPlugin runtime.RawExtension `json:\\\"myPlugin\\\"`\\n\\t}\\n\\n\\ttype PluginA struct {\\n\\t\\tAOption string `json:\\\"aOption\\\"`\\n\\t}\\n\\n// On the wire, the JSON will look something like this:\\n\\n\\t{\\n\\t\\t\\\"kind\\\":\\\"MyAPIObject\\\",\\n\\t\\t\\\"apiVersion\\\":\\\"v1\\\",\\n\\t\\t\\\"myPlugin\\\": {\\n\\t\\t\\t\\\"kind\\\":\\\"PluginA\\\",\\n\\t\\t\\t\\\"aOption\\\":\\\"foo\\\",\\n\\t\\t},\\n\\t}\\n\\nSo what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)\"", args=[d.arg(name='vendorParameters', type=d.T.object)]),
  withVendorParameters(vendorParameters): { vendorParameters: vendorParameters },
  '#withVendorParametersMixin':: d.fn(help="\"RawExtension is used to hold extensions in external versions.\\n\\nTo use this, make a field which has RawExtension as its type in your external, versioned struct, and Object in your internal struct. You also need to register your various plugin types.\\n\\n// Internal package:\\n\\n\\ttype MyAPIObject struct {\\n\\t\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\t\\tMyPlugin runtime.Object `json:\\\"myPlugin\\\"`\\n\\t}\\n\\n\\ttype PluginA struct {\\n\\t\\tAOption string `json:\\\"aOption\\\"`\\n\\t}\\n\\n// External package:\\n\\n\\ttype MyAPIObject struct {\\n\\t\\truntime.TypeMeta `json:\\\",inline\\\"`\\n\\t\\tMyPlugin runtime.RawExtension `json:\\\"myPlugin\\\"`\\n\\t}\\n\\n\\ttype PluginA struct {\\n\\t\\tAOption string `json:\\\"aOption\\\"`\\n\\t}\\n\\n// On the wire, the JSON will look something like this:\\n\\n\\t{\\n\\t\\t\\\"kind\\\":\\\"MyAPIObject\\\",\\n\\t\\t\\\"apiVersion\\\":\\\"v1\\\",\\n\\t\\t\\\"myPlugin\\\": {\\n\\t\\t\\t\\\"kind\\\":\\\"PluginA\\\",\\n\\t\\t\\t\\\"aOption\\\":\\\"foo\\\",\\n\\t\\t},\\n\\t}\\n\\nSo what happens? Decode first uses json or yaml to unmarshal the serialized data into your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked. The next step is to copy (using pkg/conversion) into the internal struct. The runtime package's DefaultScheme has conversion functions installed which will unpack the JSON stored in RawExtension, turning it into the correct object type, and storing it in the Object. (TODO: In the case where the object is of an unknown type, a runtime.Unknown object will be created and stored.)\"\n\n**Note:** This function appends passed data to existing values", args=[d.arg(name='vendorParameters', type=d.T.object)]),
  withVendorParametersMixin(vendorParameters): { vendorParameters+: vendorParameters },
  '#mixin': 'ignore',
  mixin: self,
}