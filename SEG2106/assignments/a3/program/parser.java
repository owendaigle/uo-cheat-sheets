/**
 * Title: Assignment 3
 * Author: Owen Daigle
 * Course: SEG2106
 * Student Number: 300359036
 * Date: March 17 2025
 */
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

public class parser {
    static BufferedReader reader;
    static String token;
    public static boolean debug = false;

    public static boolean program() {
        nextToken(); //get first token
        if (token.equals("{")) {
            nextToken();
            if (statement_list() == false) {
                if (debug) System.out.println("Error at token" + token); 
                return false;
            }
            else {
                if (token.equals("$")) {
                    nextToken();
                    return true;
                }
                if (debug) System.out.println("Error at token" + token); 
                return false;
            }
        }
        if (debug) System.out.println("Error at token" + token); 
        return false;
        
        
        
    }

    public static boolean statement_list() {
        if (statement() == false) {
            if (debug) System.out.println("Error at token" + token); 
            return false;
        }
        else if (token.equals(";")) {
            nextToken();
            return statement_list_prime();
        }
        else {
            if (debug) System.out.println("Error at token" + token); 
            return false;
        }
    }

    public static boolean statement_list_prime() {
        if (token.equals("}")) {
            nextToken();
            return true;
        }
        return statement_list();
    }

    public static boolean statement() {
        if (token.equals("call")) {
            nextToken();
            if (token.equals(":")) {
                nextToken();
                return procedure_call();
            }
            else {
                if (debug) System.out.println("Error at token" + token); 
                return false;
            }
        }
        else if (token.equals("compute")) {
            nextToken();
            if (token.equals(":")) {
                nextToken();
                return expression();
            }
            else {
                if (debug) System.out.println("Error at token" + token); 
                return false; 
            }
        }
        if (debug) System.out.println("Error at token" + token); 
        return false;
    }

    public static boolean procedure_call() {
        if (token.equals("id")) {
            nextToken();
            if (token.equals("(")) {
                nextToken();
                if (parameters()==false) {
                    return false;
                }
                else if (token.equals(")")) {
                    nextToken();
                    return true;
                }
            }
            else {
                if (debug) System.out.println("Error at token" + token); 
                return false; 
            }
        }
        if (debug) System.out.println("Error at token" + token); 
        return false; 
    }

    public static boolean parameters() {
        if (factor() == false) {
            if (debug) System.out.println("Error at token" + token); 
            return false;
        }
        else {
            return parameters_prime();
        }
    }

    public static boolean parameters_prime() {
        if (token.equals(",")) {
            nextToken();
            return parameters();
        }
        else if (token.equals(")")) {
            //accounts for epsilon as ) must be the next character. 
            return true;
        }
        if (debug) System.out.println("Error at token" + token); 
        return false; 
    }

    public static boolean expression() {
        if (token.equals("id")) {
            nextToken();
            if (token.equals("=")) {
                nextToken();
                if (factor() == false) {
                    if (debug) System.out.println("Error at token" + token); 
                    return false;
                }
                else {
                    return expression_prime();
                }
            }
        }
        if (debug) System.out.println("Error at token" + token); 
        return false;
    }

    public static boolean expression_prime() {
        if (token.equals("+")) {
            nextToken();
            return factor();
        }
        else if (token.equals("-")) {
            nextToken();
            return factor();
        }
        else if (token.equals(";")) {
            //account for epsilon
            return true;
        }
        if (debug) System.out.println("Error at token" + token); 
        return false;

    }

    public static boolean factor() {
        if (token.equals("id")) {
            nextToken();
            return true;
        }
        else if (token.equals("num")) {
            nextToken();
            return true;
        }
        if (debug) System.out.println("Error at token" + token); 
        return false;
    }

    
    //***************************\\
    //***** UTILITY METHODS *****\\
    //***************************\\

    //actually runs program
    public static void start(String filename) {
        try {
            //starts file reader
            reader = new BufferedReader(new FileReader(filename));             

            //start code
            if (program()) {
                System.out.println("SUCCESS");
            }
            else {
                System.out.println("ERROR");
            }
            
        } catch (FileNotFoundException e) {
            System.out.println("File not found");
        }
        catch (Exception e) {
            System.out.println("An error occured: " + e);
        }
    }

    //gets the next token from file and returns false if EOF. 
    // assigns gotten token to global `token` variable
    public static boolean nextToken() {
        try {
            token = reader.readLine();
        } catch (IOException e) {
            System.out.println("An unknown error occured");
        }
        if (debug) System.out.println("At token " + token);
        return token != null;
    }

    //main
    public static void main(String args[]) {
        try {
            //test if program is debug mode
            try {
                if (args[1].equals("--DEBUG") || args[1].equals("-d")) debug = true;
                if (debug) System.out.println("RUNNING IN DEBUG MODE");

            }
            catch (ArrayIndexOutOfBoundsException e) {
                
            }
            
            System.out.println("Running using input file: "+ args[0]);
            start(args[0]); //run program

            if (debug) System.out.println("RUN IN DEBUG MODE");
        }
        catch (ArrayIndexOutOfBoundsException e) {
            System.out.println("Incorrect usage. Please use `parser <input-file-name>`");
        }
        
    }
}