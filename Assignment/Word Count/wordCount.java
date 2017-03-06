import java.util.Scanner;
/**
 * 
 */

/**
 * @author acer
 *
 */
public class wordCount {

	public wordCount() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static int maxWordCount(String s) {
		
		int max = 0;
		
		String[] sentences = s.split("[.\\!\\?]");
		String[] words = null;
		
		System.out.println("Substring length: " + sentences.length);
		
		for (int i = 0; i < sentences.length; i++) {
			
			words = sentences[i].trim().split("[\\ ]");
			System.out.println("Words length: " + words.length);
			max = Math.max(max, words.length);
			}
		return max;
		
		}
	public static void main(String [] args){
		Scanner scanner = new Scanner(System.in);
		String s = scanner.nextLine();
		int max_count = wordCount.maxWordCount(s);
		System.out.println("Maximum word count is :" +max_count);
		scanner.close();
		
	}
		
	}
