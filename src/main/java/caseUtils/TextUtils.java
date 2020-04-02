/**
 * 
 */
/**
 * @author rahul_reddy
 *
 */
package caseUtils;

import org.apache.commons.text.CaseUtils;


public class TextUtils {
	
	public static String toCamelCase(String s)
	{
		String output = null;
		output = CaseUtils.toCamelCase(s, false);
		return output;
	}
}