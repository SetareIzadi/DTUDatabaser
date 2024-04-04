package mandatoryGroupProject.src.main.java;

import java.util.concurrent.ThreadLocalRandom;

public class ContactInfoGenerator
{
    public static String getRandomEmail(String name)
    {
        return name + "@gmail.com";
    }

    public static String getRandomPhoneNumber()
    {
        int min = 0;
        int max = 8;
        String returnString = "";
        for (int i = 0; i < 8; i ++)
        {
            int randomNum = ThreadLocalRandom.current().nextInt(min, max + 1);
            returnString += randomNum;
        }

        return returnString;
    }
}
