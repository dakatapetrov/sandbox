/*
 * StringOps.java
 * 
 * Copyright 2012 Yordan Petrov <dakatapetrov@gmail.com>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */

public class StringOps {
	
	public static void main (String args[]) {
		String str1 = 
			"When it comes to Web programming, Java is #1.";
		String str2 = new String(str1);
		String str3 = "Java strings are powerful.";
		int result, idx;
		char ch;
		
		System.out.println("length of str1: " + str1.length());
		
		for (int i = 0; i < str1.length(); i++)
			System.out.print(str1.charAt(i));
		System.out.println();
		if (str1.equals(str2))
			System.out.println("str1 == str2");
		else
			System.out.println("str1 != str2");
		
		if(str1.equals(str3))
			System.out.println("str1 == str3");
		else
			System.out.println("str1 != str3");
			
		result = str1.compareTo(str3);
		if (result == 0)
			System.out.println("str1 and str3 are equal.");
		else if (result < 0)
			System.out.println("str1 is less than str3.");
		else
			System.out.println("str1 is greater than str3.");
		
		str2 = "One Two Three One";
		
		idx = str2.indexOf("One");
		System.out.println("Index of One: " + idx);
		idx = str2.lastIndexOf("One");
		System.out.println("Last index of One: " + idx);
		
	}
}

