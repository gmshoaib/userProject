package utils;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Period;
import java.util.*;

public class DateUtils {
    private static final Logger logger = LogManager.getLogger(DateUtils.class.getName());

    public static final String DEFAULT_DATE_FORMAT = "dd/MM/yyyy";
    public static final String DD_MM_YYYY_DATE_FORMAT = "dd-MM-yyyy";
    private static List<SimpleDateFormat> dateFormats = new ArrayList<SimpleDateFormat>() {
        {
            add(new SimpleDateFormat("dd-MM-yy"));  //08-06-14
            add(new SimpleDateFormat("dd/MM/yy"));  //08/06/14
            add(new SimpleDateFormat("dd.MM.yy"));  //08.06.14
            add(new SimpleDateFormat("yy-MM-dd"));  //14-06-08
            add(new SimpleDateFormat("yy/MM/dd"));  //14/06/08
            add(new SimpleDateFormat("yy.MM.dd"));  //14.06.08
            add(new SimpleDateFormat("dd-MMM-yy")); //08-Jun-14
            add(new SimpleDateFormat("dd/MMM/yy")); //08/Jun/14
            add(new SimpleDateFormat("dd.MMM.yy")); //08.Jun.14
            add(new SimpleDateFormat("dd-MMMM-yy")); //08-June-14
            add(new SimpleDateFormat("dd/MMMM/yy")); //08/June/14
            add(new SimpleDateFormat("dd.MMMM.yy")); //08.June.14
            add(new SimpleDateFormat("yy-MM-dd"));   //14-06-08
            add(new SimpleDateFormat("yy/MM/dd"));   //14/06/08
            add(new SimpleDateFormat("yy.MM.dd"));   //14.06.08
            add(new SimpleDateFormat("MMMM d, yy")); //June 08, 14
            add(new SimpleDateFormat("MMM d, yy"));  //Jun 08, 14
            add(new SimpleDateFormat("d MMMM, yy")); //08 June , 14
            add(new SimpleDateFormat("d MMM, yy"));  //08 Jun , 14//
            add(new SimpleDateFormat("dd-MM-yyyy"));  //08-06-2014
            add(new SimpleDateFormat("dd/MM/yyyy"));  //08/06/2014
            add(new SimpleDateFormat("dd.MM.yyyy"));  //08.06.2014
            add(new SimpleDateFormat("yyyy-MM-dd"));  //2014-06-08
            add(new SimpleDateFormat("yyyy/MM/dd"));  //2014/06/08
            add(new SimpleDateFormat("yyyy.MM.dd"));  //2014.06.08
            add(new SimpleDateFormat("dd-MMM-yyyy")); //08-Jun-2014
            add(new SimpleDateFormat("dd/MMM/yyyy")); //08/Jun/2014
            add(new SimpleDateFormat("dd.MMM.yyyy")); //08.Jun.2014
            add(new SimpleDateFormat("dd-MMMM-yyyy")); //08-June-2014
            add(new SimpleDateFormat("dd/MMMM/yyyy")); //08/June/2014
            add(new SimpleDateFormat("dd.MMMM.yyyy")); //08.June.2014
            add(new SimpleDateFormat("yyyy-MM-dd"));   //2014-06-08
            add(new SimpleDateFormat("yyyy/MM/dd"));   //2014/06/08
            add(new SimpleDateFormat("yyyy.MM.dd"));   //2014.06.08
            add(new SimpleDateFormat("MMMM d, yyyy")); //June 08, 2014
            add(new SimpleDateFormat("MMM d, yyyy"));  //Jun 08, 2014
            add(new SimpleDateFormat("d MMMM, yyyy")); //08 June , 2014
            add(new SimpleDateFormat("d MMM, yyyy"));  //08 Jun , 2014  //
        }
    };

    public static Map monthMap = new HashMap() {{
        put("January", Calendar.JANUARY + 1);
        put("February", Calendar.FEBRUARY + 1);
        put("March", Calendar.MARCH + 1);
        put("April", Calendar.APRIL + 1);
        put("May", Calendar.MAY + 1);
        put("June", Calendar.JUNE + 1);
        put("July", Calendar.JULY + 1);
        put("August", Calendar.AUGUST + 1);
        put("September", Calendar.SEPTEMBER + 1);
        put("October", Calendar.OCTOBER + 1);
        put("November", Calendar.NOVEMBER + 1);
        put("December", Calendar.DECEMBER + 1);

    }};

    public static String getFromattedDateStringFromDate(Date date, String formateString) {
        DateFormat dateFormat;
        String formattedDateInString = null;
        dateFormat = new SimpleDateFormat(formateString);
        try {
            Date newdate = new Date(date.getTime());
            formattedDateInString = dateFormat.format(newdate);
        } catch (Exception e) {
            //logger.error( e);
        }
        return formattedDateInString;
    }
    public static Date getDateFromDateString(String dateInString, String formateString) {

        if (dateInString == null) {
            return null;
        }

        DateFormat dateFormat;
        Date date = null;
        if (formateString != null && !formateString.equalsIgnoreCase("")) {
            dateFormat = new SimpleDateFormat(formateString);
        } else {
            dateFormat = new SimpleDateFormat("dd/MM/yyyy");
        }

        try {
            date = dateFormat.parse(dateInString);
        } catch (ParseException e) {
            logger.error(e);
        }
        return date;
    }

    public static int getYearsFromDate(Date fromDate) {
        //using Calendar Object
        Calendar c = Calendar.getInstance();
        c.setTime(fromDate);
        int year = c.get(Calendar.YEAR);
        int month = c.get(Calendar.MONTH) + 1;
        int date = c.get(Calendar.DATE);
        LocalDate l1 = LocalDate.of(year, month, date);
        LocalDate now1 = LocalDate.now();
        Period diff1 = Period.between(l1, now1);
        int yearPeriod = diff1.getYears();

        return yearPeriod;
    }
}
