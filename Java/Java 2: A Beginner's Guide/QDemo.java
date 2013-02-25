/*
 * QDemo.java
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


class Queue {
	char q[]; // this array holds the quee
	int putloc, getloc; // the put and get indeces
	
	Queue (int size) {
		q = new char[size+1]; // allocate memory for queue
		putloc = getloc = 0;
	}
	
	// postavq simvol v opashkata
	void put (char ch) {
		if (putloc == q.length-1) {
			System.out.println("-- Queue is full!");
			return;
		}
		putloc++;
		q[putloc] = ch;
	}
	
	// vzima simvol ot opashkata
	char get () {
		if (getloc == putloc) {
			System.out.println("--Queue is empty!");
			return (char) 0;
		}
		
		getloc++;
		return q[getloc];
	}
}

public class QDemo {
	
	public static void main (String args[]) {
		Queue bigQ = new Queue(100);
		Queue smallQ = new Queue(4);
		char ch;
		int i;
		
		System.out.println("Using bigQ to store the alphabet.");
		// postavq nqkolko chisla v bigQ
		for (i = 0; i < 26; i++)
			bigQ.put((char) ('A' + i));
		// izvlicha i pokazva elementite na bigQ
		System.out.println("Contents of bigQ: ");
		for (i = 0; i < 26; i++) {
			ch = bigQ.get();
			if (ch != (char) 0) System.out.print(ch);
		}
		
		System.out.println("\n");
		
		System.out.println("Using smallQ to generate errors.");
		// Sega izpolzva smallQ, za da generira nqkolko greshki
		for(i = 0; i < 5; i++) {
			System.out.print("Attempting to store " + (char) ('Z' - i));
			smallQ.put((char) ('Z' - i));
			System.out.println();
		}
		System.out.println();
		
		//oshte greshki sys smallQ
		System.out.print("Contents of smallQ: ");
		for( i = 0; i < 5; i++) {
			ch = smallQ.get();
			
			if(ch != (char) 0) System.out.print(ch);
		}
	}
}

