import java.sql.*;
import java.util.*;

//Class Test only Contains The Main function
class Test {

    private static final String url = "jdbc:mysql://localhost:3306/project";
    private static final String username = "root";
    private static final String password = "root";

    public static int getCountForUser(int userId, int monthsAgo,String s) {

        if(s=="Calls")
        {
        int callsCount = 0;

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT COUNT(*) AS CallsCount " +
                           "FROM Calls " +
                           "WHERE MONTH(Call_Date) = MONTH(CURDATE() - INTERVAL ? MONTH) " +
                           "AND USER_ID = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, monthsAgo);
                preparedStatement.setInt(2, userId);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        callsCount = resultSet.getInt("CallsCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return callsCount;
      }

      else if(s=="Messages")
      {
        int msgCount = 0;

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT COUNT(*) AS MsgCount " +
                           "FROM Messages " +
                           "WHERE MONTH(Message_Date) = MONTH(CURDATE() - INTERVAL ? MONTH) " +
                           "AND USER_ID = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, monthsAgo);
                preparedStatement.setInt(2, userId);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        msgCount = resultSet.getInt("MsgCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return msgCount;
      }

      else if(s=="People Asked For Directions")
      {
        int pafCount = 0;

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT COUNT(*) AS PAFCount " +
                           "FROM PAFDirections " +
                           "WHERE MONTH(Request_Date) = MONTH(CURDATE() - INTERVAL ? MONTH) " +
                           "AND USER_ID = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, monthsAgo);
                preparedStatement.setInt(2, userId);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        pafCount = resultSet.getInt("PAFCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pafCount;
      }

      else if(s=="Website Visit From Profile")
      {
        int wvfCount = 0;

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT COUNT(*) AS wvfCount " +
                           "FROM WVFProfile " +
                           "WHERE MONTH(Visit_Date) = MONTH(CURDATE() - INTERVAL ? MONTH) " +
                           "AND USER_ID = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, monthsAgo);
                preparedStatement.setInt(2, userId);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        wvfCount = resultSet.getInt("wvfCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return wvfCount;
      }

      else if(s=="Profile Views")
      {
        int pvCount = 0;

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT COUNT(*) AS pvCount " +
                           "FROM ProfileViews " +
                           "WHERE MONTH(View_Date) = MONTH(CURDATE() - INTERVAL ? MONTH) " +
                           "AND USER_ID = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, monthsAgo);
                preparedStatement.setInt(2, userId);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        pvCount = resultSet.getInt("pvCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pvCount;
      }
      else if(s=="Searches")
      {
        int sCount = 0;

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT COUNT(*) AS sCount " +
                           "FROM Searches " +
                           "WHERE MONTH(Search_Date) = MONTH(CURDATE() - INTERVAL ? MONTH) " +
                           "AND USER_ID = ?";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setInt(1, monthsAgo);
                preparedStatement.setInt(2, userId);

                try (ResultSet resultSet = preparedStatement.executeQuery()) {
                    if (resultSet.next()) {
                        sCount = resultSet.getInt("sCount");
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return sCount;
      }
      else
      {
        return 0;
      }
    }
    
    public static double getChange(int userId,String s)
    {

        int cnt1=0,cnt2=0;
        if(s=="Calls")
        {
         cnt1 = getCountForUser(userId, 1,s);
         cnt2 = getCountForUser(userId, 2,s);
        }
        else if(s=="Messages")
        {
            cnt1 = getCountForUser(userId, 1,s);
            cnt2 = getCountForUser(userId, 2,s);
        }
        else if(s=="People Asked For Directions")
        {
            cnt1 = getCountForUser(userId, 1,s);
         cnt2 = getCountForUser(userId, 2,s);
        }
        else if(s=="Website Visit From Profile")
        {
            
            cnt1 = getCountForUser(userId, 1,s);
         cnt2 = getCountForUser(userId, 2,s);
        }
        else if(s=="Profile Views")
        {
            cnt1 = getCountForUser(userId, 1,s);
         cnt2 = getCountForUser(userId, 2,s);
        }
        else if(s=="Searches")
        {
            cnt1 = getCountForUser(userId, 1,s);
            cnt2 = getCountForUser(userId, 2,s);
        }
        if(cnt2==0)
        {
            //Making A General Infinite To indicate no previous Data To Show Increase
            return Double.POSITIVE_INFINITY;
        }
        double per = ((double) (cnt1 - cnt2) / cnt2) * 100.0;
        return per;
    }
   
    static class Stats
    {
        String name;
        int count;
        double pchange;

        public Stats(String n,int cnt,double p)
        {
            name=n;
            count=cnt;
            pchange=p;
        }

        public String toString()
        {
            return name+" last month:"+count+"\n"+name+" Percentage change:"+pchange+"%";
        }
    }

    public static ArrayList<Stats> storeData(String [] s,int userId)
    {
        ArrayList<Stats> result=new ArrayList<Stats>();
        for(int i=0;i<5;i++)
        {
            Stats s1=new Stats(s[i], getCountForUser(userId, 1, s[i]), getChange(userId, s[i]));
            result.add(s1);
        }

        return result;
    }

     public static Map<String, Integer> getTopSearches() {
        Map<String, Integer> topSearches = new HashMap<>();

        try (Connection connection = DriverManager.getConnection(url, username, password)) {
            String query = "SELECT Search_Term, COUNT(*) AS SearchCount " +
                           "FROM Searches " +
                           "GROUP BY Search_Term " +
                           "ORDER BY SearchCount DESC " +
                           "LIMIT 3";

            try (PreparedStatement preparedStatement = connection.prepareStatement(query);
                 ResultSet resultSet = preparedStatement.executeQuery()) {

                while (resultSet.next()) {
                    String searchTerm = resultSet.getString("Search_Term");
                    int searchCount = resultSet.getInt("SearchCount");
                    topSearches.put(searchTerm, searchCount);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return topSearches;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter User ID: ");
        int userId = scanner.nextInt();
        System.out.println("Report For "+userId+" For the Previous Month\n");
        String name[]={"Calls","Messages","People Asked For Directions","Website Visit From Profile","Profile Views","Searches"};
       ArrayList<Stats> finalResult=storeData(name,userId);
       for (Stats stat : finalResult) {
        System.out.println(stat + "\n");
        }

        Map<String, Integer> topSearchesMap = getTopSearches();
        System.out.println("Top 3 Most Searched Terms:");
        for (Map.Entry<String, Integer> entry : topSearchesMap.entrySet()) {
            System.out.println(entry.getKey() + ": " + entry.getValue() + " searches");
        }

        scanner.close();
    }
}
