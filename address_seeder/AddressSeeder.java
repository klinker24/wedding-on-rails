import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.BufferedReader;
import java.io.FileReader;
import java.lang.String;
import java.io.PrintWriter;

class AddressSeeder {
	private static PrintWriter writer;

	public static void main(String[] args) {
		File file = new File("address_list.txt");

		try (BufferedReader br = new BufferedReader(new FileReader(file))) {
			writer = new PrintWriter("generated_seeds.txt", "UTF-8");

    		String line;
    		while ((line = br.readLine()) != null) {
       			processLine(line);
    		}

			writer.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	// Patterns
	private static final String PATTERN_GUEST = "\\A[a-zA-Z]+ [a-zA-Z]+ and [gG]uest\\z";
	private static final String PATTERN_LONG_NAME_GUEST = "\\A[a-zA-Z]+ [a-zA-Z]+ [a-zA-Z]+ and [gG]uest\\z";
	private static final String PATTERN_MARRIED_COUPLE_FAMILY = "\\A[a-zA-Z]+ and [a-zA-Z]+ [a-zA-Z]+ and [fF]amily\\z";
	private static final String PATTERN_UNMARRIED_COUPLE = "\\A[a-zA-Z]+ [a-zA-Z]+ and [a-zA-Z]+ [a-zA-Z]+\\z";
	private static final String PATTERN_COUPLE = "\\A[a-zA-Z]+ and [a-zA-Z]+ [a-zA-Z]+\\z";
	private static final String PATTERN_SINGLE = "\\A[a-zA-Z]+ [a-zA-Z]+\\z";
	private static final String PATTERN_MRS = "\\A[a-zA-Z]+. [a-zA-Z]+ [a-zA-Z]+\\z";
	private static final String PATTERN_UNMARRIED_FAMILY = "\\A[a-zA-Z]+ [a-zA-Z]+, [a-zA-Z]+ [a-zA-Z]+, and family\\z";
	private static final String PATTERN_COUPLE_KID = "\\A[a-zA-Z]+, [a-zA-Z]+, and [a-zA-Z]+ [a-zA-Z]+\\z";
	private static final String PATTERN_HYPHONATED_FAMILY = "\\A[a-zA-Z]+ and [a-zA-Z]+ [a-zA-Z]+-[a-zA-Z]+ and family\\z";
	private static final String PATTERN_SINGLE_FAMILY = "\\A[a-zA-Z]+ [a-zA-Z]+ and family\\z";

	private static void processLine(String line) {
		printNewGroup();
		String[] split = line.split(" ");

		if (line.matches(PATTERN_GUEST)) {
			printPerson(split[0], split[1]);
			printGuest();
		} else if (line.matches(PATTERN_LONG_NAME_GUEST)) {
			printPerson(split[0] + " " + split[1] + " " + split[2]);
			printGuest();
		} else if (line.matches(PATTERN_MARRIED_COUPLE_FAMILY)) {
			printPerson(split[0], split[3]);
			printPerson(split[2], split[3]);
			printFamily();
		} else if (line.matches(PATTERN_UNMARRIED_COUPLE)) {
			printPerson(split[0], split[1]);
			printPerson(split[3], split[4]);
		} else if (line.matches(PATTERN_COUPLE)) {
			printPerson(split[0], split[3]);
			printPerson(split[2], split[3]);
		} else if (line.matches(PATTERN_SINGLE)) {
			printPerson(split[0], split[1]);
		} else if (line.matches(PATTERN_MRS)) {
			printPerson(split[0] + " " + split[1] + " " + split[2]);
		} else if (line.matches(PATTERN_UNMARRIED_FAMILY)) {
			printPerson(split[0], split[1].replace(",", ""));
			printPerson(split[2], split[3].replace(",", ""));
			printFamily();
		} else if (line.matches(PATTERN_COUPLE_KID)) {
			printPerson(split[0].replace(",", ""), split[4]);
			printPerson(split[1].replace(",", ""), split[4]);
			printPerson(split[3], split[4]);
		} else if (line.matches(PATTERN_HYPHONATED_FAMILY)) {
			printPerson(split[0], split[3]);
			printPerson(split[2], split[3]);
			printFamily();
		} else if (line.matches(PATTERN_SINGLE_FAMILY)) {
			printPerson(split[0], split[1]);
			printFamily();
		} else {
			System.out.println("**** ERROR MATCHING *****  " + line);
		}

		writer.println("");
	}

	private static void printNewGroup() {
		writer.println("group = Group.create!({");
		writer.println("  event_id: event.id");
		writer.println("})");
	}

	private static void printGuest() {
		printPerson("Guest");
	}

	private static void printFamily() {
		printPerson("Family");
	}

	private static void printPerson(String firstName, String lastName) {
		printPerson(firstName + " " + lastName);
	}

	private static void printPerson(String name) {
		writer.println("Guest.create!({");
		writer.println("  name: '" + name + "',");
		writer.println("  invited_to_ceremony: true, invited_to_evening: true,");
		writer.println("  group_id: group.id, event_id: event.id");
		writer.println("})");
	}
}