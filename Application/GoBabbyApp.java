import java.sql.* ;
import java.util.Locale;
import java.util.Scanner;

class SimpleJDBC
{
    public static void main ( String [ ] args ) throws SQLException
    {
        // Unique table names.  Either the user supplies a unique identifier as a command line argument, or the program makes one up.
        String tableName = "";
        int sqlCode=0;      // Variable to hold SQLCODE
        String sqlState="00000";  // Variable to hold SQLSTATE

        if ( args.length > 0 )
            tableName += args [ 0 ] ;
        else
            tableName += "exampletbl";

        // Register the driver.  You must register the driver before you can use it.
        try { DriverManager.registerDriver ( new com.ibm.db2.jcc.DB2Driver() ) ; }
        catch (Exception cnfe){ System.out.println("Class not found"); }

        // This is the url you must use for DB2.
        //Note: This url may not valid now ! Check for the correct year and semester and server name.
        String url = "jdbc:db2://winter2022-comp421.cs.mcgill.ca:50000/cs421";

        //REMEMBER to remove your user id and password before submitting your code!!
        String your_userid = "wli110";
        String your_password = "barry2001";
        //AS AN ALTERNATIVE, you can just set your password in the shell environment in the Unix (as shown below) and read it from there.
        //$  export SOCSPASSWD=yoursocspasswd
        if(your_userid == null && (your_userid = System.getenv("SOCSUSER")) == null)
        {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        if(your_password == null && (your_password = System.getenv("SOCSPASSWD")) == null)
        {
            System.err.println("Error!! do not have a password to connect to the database!");
            System.exit(1);
        }
        Connection con = DriverManager.getConnection (url,your_userid,your_password) ;
        Statement statement = con.createStatement ( ) ;
        PreparedStatement preparemid = null;
        PreparedStatement preparechoice = null;
        Scanner myObj;
        String pidcheck;
        while(true){
            myObj = new Scanner(System.in);
            System.out.println("Please enter your practitioner id [E] to exit:");
            pidcheck = myObj.nextLine();
            if(pidcheck.equals("E")){
                statement.close();
                preparemid.close();
                preparechoice.close();
                con.close();
                return;
            }
            ResultSet rs1 = statement.executeQuery("SELECT Practitioner_id FROM Midwifes");
            boolean check = false;
            while (rs1.next()){
                String pid = rs1.getString("Practitioner_id");
                if(pid.equals(pidcheck)){
                    check = true;
                }
            }
            if(!check){
                System.out.println("This practitioner ID is invalid please enter a new one");
                continue;
            }
            else{
                break;
            }
        }
        boolean anotherdate = true;
        while(anotherdate){
            myObj = new Scanner(System.in);
            System.out.println("Please enter the date for appointment list [E] to exit: ");
            String datecheckins = myObj.nextLine();
            if(datecheckins.equals("E")){
                statement.close();
                con.close();
                return;
            }
            Date datecheck = Date.valueOf(datecheckins);
            String appointmentlistsql = "SELECT *, 'P' as type\n" +
                    "FROM Appointment join Pregnancy P on Appointment.Couple_id = P.Couple_id\n" +
                    "    and Appointment.Expected_Time_Frame = P.Expected_Time_Frame and Appointment.AMid = P.mid\n" +
                    "                 join Couples C2 on P.Couple_id = C2.Couple_id\n" +
                    "                 join Mother M on C2.Mother_id = M.Quebec_Health_Care_Card_Id\n" +
                    "where Appointment.AMid = ? and Appointment.Date = ?\n" +
                    "UNION\n" +
                    "SELECT *, 'B' as type\n" +
                    "FROM Appointment join Pregnancy P on Appointment.Couple_id = P.Couple_id\n" +
                    "    and Appointment.Expected_Time_Frame = P.Expected_Time_Frame and Appointment.AMid = P.bmid\n" +
                    "                 join Couples C2 on P.Couple_id = C2.Couple_id\n" +
                    "                 join Mother M on C2.Mother_id = M.Quebec_Health_Care_Card_Id \n" +
                    "where Appointment.AMid = ? and Appointment.Date = ?" +
                    "order by time";
            while(true){
                preparemid = con.prepareStatement(appointmentlistsql);
                preparemid.setString(1,pidcheck);
                preparemid.setString(3,pidcheck);
                preparemid.setDate(2,datecheck);
                preparemid.setDate(4,datecheck);
                ResultSet rs2 = preparemid.executeQuery();
                int counter = 0;
                while(rs2.next()){
                    counter ++;
                    anotherdate = false;
                    System.out.println(counter + ": " + rs2.getTime("Time") + " " +
                            rs2.getString("Type") + " " + rs2.getString("Name") + " " +
                            rs2.getString("Quebec_Health_Care_Card_Id"));
                }
                if (counter == 0){
                    anotherdate = true;
                    System.out.println("This date does not exist any appointment!");
                    System.out.println("Please try another!");
                    break;
                }
                myObj = new Scanner(System.in);
                System.out.println("Enter the appointment number that you would like to work on.");
                System.out.println("\t\t\t :[E] to exit [D] to go back to another date :");
                String numoptions = myObj.nextLine();
                if(numoptions.equals("E")){
                    preparechoice.close();
                    preparemid.close();
                    statement.close ( ) ;
                    con.close ( ) ;
                    return;
                }
                else if(numoptions.equals("D")){
                    anotherdate = true;
                    break;
                }
                else {
                    int numo = Integer.valueOf(numoptions);
                    preparemid = con.prepareStatement(appointmentlistsql);
                    preparemid.setString(1,pidcheck);
                    preparemid.setString(3,pidcheck);
                    preparemid.setDate(2,datecheck);
                    preparemid.setDate(4,datecheck);
                    rs2 = preparemid.executeQuery();
                    for(int i=1;i<=numo;i++){
                        rs2.next();
                    }
                    while(true){
                        System.out.println("For " + rs2.getString("Name") + " " +
                                rs2.getString("Quebec_Health_Care_Card_Id") + "\n");
                        System.out.println("1. Review notes");
                        System.out.println("2. Review tests");
                        System.out.println("3. Add a note");
                        System.out.println("4. Prescribe a test");
                        System.out.println("5. Go to the appointments \n");
                        System.out.println("Enter your choice: ");
                        myObj = new Scanner(System.in);
                        int numo2 = Integer.valueOf(myObj.nextLine());
                        int cid = rs2.getInt("Couple_id");
                        Date adate = rs2.getDate("Date");
                        Time atime = rs2.getTime("Time");
                        String Etf = rs2.getString("Expected_time_Frame");
                        if(numo2 == 1){
                            String notesreviewsql = "SELECT * FROM Notes join Appointment A on A.Time = Notes.aTime \n" +
                                    "and A.Date = Notes.aDate and A.AMid = Notes.Mid \n" +
                                    "where Couple_id = ? and Expected_Time_Frame = ? \n" +
                                    "order by A.date,A.time";
                            preparechoice = con.prepareStatement(notesreviewsql);
                            preparechoice.setInt(1,cid);
                            preparechoice.setString(2,Etf);
                            ResultSet rs3 = preparechoice.executeQuery();
                            while (rs3.next()){
                                System.out.println(rs3.getDate("Date") + " " +
                                        rs3.getTime("Time") + " " + rs3.getString("Content"));
                            }
                        }
                        if(numo2 == 2){
                            String testreviewsql = "SELECT * FROM Tests where Couple_id = ? and Expected_Time_Frame = ? \n" +
                                    "Order by Date_prescribed DESC";
                            preparechoice = con.prepareStatement(testreviewsql);
                            preparechoice.setInt(1,cid);
                            preparechoice.setString(2,Etf);
                            ResultSet rs3 = preparechoice.executeQuery();
                            while (rs3.next()){
                                String result = rs3.getString("Result");
                                if(result == null){
                                    System.out.println(rs3.getDate("Date_prescribed") + " [" +
                                            rs3.getString("Type") + "] PENDING");
                                }
                                else{
                                    System.out.println(rs3.getDate("Date_prescribed") + " [" +
                                            rs3.getString("Type") + "] " + result);
                                }
                            }
                        }
                        if(numo2 == 3){
                            myObj = new Scanner(System.in);
                            System.out.println("Please enter the date of the observation: ");
                            Date dob = Date.valueOf(myObj.nextLine());
                            myObj = new Scanner(System.in);
                            System.out.println("Please enter the time of the observation: ");
                            Time tob = Time.valueOf(myObj.nextLine());
                            myObj = new Scanner(System.in);
                            System.out.println("Please type your observation: ");
                            String Observation = myObj.nextLine();
                            String addobsersql = "INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)\n" +
                                    "VALUES(?,?,?,?,?,?)";
                            preparechoice = con.prepareStatement(addobsersql);
                            preparechoice.setDate(1,dob);
                            preparechoice.setTime(2,tob);
                            preparechoice.setString(3,pidcheck);
                            preparechoice.setTime(4, atime);
                            preparechoice.setDate(5, adate);
                            preparechoice.setString(6, Observation);
                            preparechoice.executeUpdate();
                        }
                        if(numo2 == 4){
                            myObj = new Scanner(System.in);
                            System.out.println("Please enter the type of test: ");
                            String Testtype = myObj.nextLine();
                            String addtestsql = "INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, " +
                                    "Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)\n" +
                                    "VALUES (?,?,?,?,?,?,?,?,?)";
                            preparechoice = con.prepareStatement(addtestsql);
                            preparechoice.setDate(1,adate);
                            preparechoice.setDate(2,null);
                            preparechoice.setDate(3,adate);
                            preparechoice.setString(4,Testtype);
                            preparechoice.setString(5,null);
                            preparechoice.setString(6,null);
                            preparechoice.setInt(7,cid);
                            preparechoice.setString(8,Etf);
                            preparechoice.setString(9,pidcheck);
                            preparechoice.executeUpdate();
                            if(Testtype.toLowerCase(Locale.ROOT).equals("ultrasound")){
                                String selectultrasql = "Select max(tid) as tid from Tests";
                                ResultSet rs3 = statement.executeQuery(selectultrasql);
                                rs3.next();
                                int tid = rs3.getInt("tid");
                                String addultrasql = "INSERT INTO Ultrasound(Tid) VALUES (?);";
                                preparechoice = con.prepareStatement(addultrasql);
                                preparechoice.setInt(1,tid);
                                preparechoice.executeUpdate();
                            }
                        }
                        if(numo2 == 5){
                            break;
                        }
                    }
                }
            }
        }
        // Finally but importantly close the statement and connection
        statement.close ( ) ;
        con.close ( );
        preparemid.close();
        preparechoice.close();
    }
}
