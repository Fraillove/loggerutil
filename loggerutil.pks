create or replace package loggerutil is
   --==
   --== Generate a Template for a given 
   --== procedure or function.
   --== The template will include references
   --== to LOGGER
   --==
   --== Prerequisites
   --==   The declaration of the Procedure or Function needs
   --==   to be available, i.e. it needs to be in the package
   --==   specification. It can't be a private.
   --==
   --==   The package where the procedure is going to
   --==   be placed will need to have a global constant:
   --==   * g_package constant varchar2(31) := $$plsql_unit || '.';
   --==   If it concerns a standalone procedure (not in a package)
   --==   then pass in TRUE for p_standalone
   --==
   --==   Template depends on DBMS_OTUPUT, therefore
   --==   Serveroutput needs to be turned on
   --==   * set serveroutput on
   --==
   --== Usage
   --==   exec loggerutil.template ('package.procedure')
   --==   or
   --==   exec loggerutil.template ('package.function')
   --==
   --== 2015-02-26: Alex Nuijten  Initial Creation
   --== 2015-04-10: Alex Nuijten  Renamed pacakge to loggerutil
   --== 2015-04-15: Alex Nuijten  Parse custom layout for template
   --==                           removed p_standalone argument

   procedure template (p_procedure  in varchar2);

end loggerutil;
/
show error