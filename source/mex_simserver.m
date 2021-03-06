% Run this script to compile the .c functions into a .mex file.
!del ..\simserver.mexw32
!del simserver.mexw32
mex -D_WIN32 ...    
    -DWIN32 ...
    -I'.\miniweb' ...
    -I'xmlrpc-epi-0.54\src' ...
    simserver.c ...
    xml_rpc_api.c ...    
    httpwrapper.c ...    
    miniweb\crc32.c ...        
    miniweb\http.c ...    
    miniweb\httpauth.c ...        
    miniweb\httpclient.c ...            
    miniweb\httphandler.c ...                           
    miniweb\httppil.c ...                
    miniweb\httppost.c ...                    
    miniweb\httpvod.c ...                        
    miniweb\httpxml.c ...                            
    miniweb\mpd.c ...                        
    miniweb\processpil.c ...                            
    -I'C:\Program Files\GnuWin32\include' ...
    -I'.\expat-2.0.1\lib' ...    
    -DXMLRPCEPI_EXPORTS ...
    -Dsnprintf=_snprintf ...
    -Dinline=__inline ...    
    -Dstrcasecmp=stricmp ...        
    xmlrpc-epi-0.54\src\base64.c ...
    xmlrpc-epi-0.54\src\encodings.c ...
    xmlrpc-epi-0.54\src\queue.c ...    
    xmlrpc-epi-0.54\src\simplestring.c ...        
    xmlrpc-epi-0.54\src\system_methods.c ...    
    xmlrpc-epi-0.54\src\xml_element.c ...
    xmlrpc-epi-0.54\src\xml_to_dandarpc.c ...    
    xmlrpc-epi-0.54\src\xml_to_soap.c ...        
    xmlrpc-epi-0.54\src\xml_to_xmlrpc.c ...            
    xmlrpc-epi-0.54\src\xmlrpc.c ...                
    xmlrpc-epi-0.54\src\xmlrpc_introspection.c ...                    
    -DCOMPILED_FROM_DSP ...    
    expat-2.0.1\lib\xmlparse.c ...
    expat-2.0.1\lib\xmlrole.c ...    
    expat-2.0.1\lib\xmltok.c ...        
    expat-2.0.1\lib\xmltok_impl.c ...            
    expat-2.0.1\lib\xmltok_ns.c ...                
    wsock32.lib ...
    'C:\Program Files\GnuWin32\lib\libiconv.lib'
!copy simserver.mexw32 ..