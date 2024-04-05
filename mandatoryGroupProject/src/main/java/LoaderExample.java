import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.Statement;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.util.List;

public class LoaderExample {

	public static void main(String[] args) {
		PhotosAndReportersLoader loader = new PhotosAndReportersLoader();
		Path path = Paths.get("DTUDATABASER", "mandatoryGroupProject", "src", "main", "resources", "uploads.csv");
		String fileToLoadFrom = path.toAbsolutePath().toString();
		String host = "localhost";
		int port = 3306;
		String database = "dkavisen";
		String user = "root";
		String password = "my password";
		String url = "jdbc:mysql://" + host + ":" + port + "/" + database + "?characterEncoding" + "UTF-8";

		try {
			Connection connection = DriverManager.getConnection(url, user, password);
			Statement statement = connection.createStatement();
			String input = "";

			//statement.execute(input);

			System.out.println("loading from "+fileToLoadFrom);
			List<PhotoAndReporter> photosAndReporters = loader.loadPhotosAndReporters(fileToLoadFrom);
			int id = 0;
			for(PhotoAndReporter photoAndReporter : photosAndReporters) {
				// Create journalists:
				String deanStatement = "INSERT INTO Journalists (Journalist_ID,firstName,lastName,CPR_Number,street_Name,civic_Number,city,ZIP_code,country,telephone_Number,email_address) Values ("+id + ", '"+photoAndReporter.getReporter().getFirstName()+"', '"+photoAndReporter.getReporter().getLastName()+"', '"+photoAndReporter.getReporter().getCPR()+"', '"+ photoAndReporter.getReporter().getStreetName()+ "', '"+photoAndReporter.getReporter().getCivicNumber()+"','"+photoAndReporter.getReporter().getCountry()+"', '"+photoAndReporter.getReporter().getZIPCode()+"','Denmark',"+ ContactInfoGenerator.getRandomPhoneNumber() +",'"+ ContactInfoGenerator.getRandomEmail(photoAndReporter.getReporter().getFirstName()) +"')";

				statement.execute(deanStatement);
				deanStatement = " INSERT INTO Photos (Photo_ID, title, shot_Date, Reporter_ID) VALUES ("+id+",' "+photoAndReporter.getPhoto().getTitle()+"', '"+photoAndReporter.getPhoto().getDate().toString()+"', " + id + ")";

				id++;
				statement.execute(deanStatement);

				System.out.print("\tPhoto: " + photoAndReporter.getPhoto());
				System.out.println("\tReporter: " + photoAndReporter.getReporter());
			}
			connection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}


