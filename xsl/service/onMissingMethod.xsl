	&lt;cffunction name="onMissingMethod" access="public" output="false" &gt;
		&lt;cfargument name="missingMethodName" type="string" hint="Name of missing method" /&gt;
		&lt;cfargument name="missingMethodArguments" type="any" hint="Arguments passed to the missing method, maybe a named arg set or a numerically indexed set" /&gt;

		&lt;cfset var ret = ""/&gt;
		&lt;cfinvoke component="#variables.<xsl:value-of select="//bean/@name"/>Gateway#" 
				  method="#arguments.missingMethodName#" 
				  argumentcollection="#arguments.missingMethodArguments#" 
				  returnvariable="ret"/&gt;
		&lt;cfreturn ret /&gt;
	&lt;/cffunction&gt;