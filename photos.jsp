import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.naming.NamingException;
import com.image.dao.ImageDAO;
 
public class GetImageServlet extends HttpServlet{
       
   public void doPost(HttpServletRequest req, HttpServletResponse res)
      throws ServletException, IOException{
   
  try{
      ImageDAO image = new ImageDAO();
      String categoryId = request.getParameter("catgId");      
      bytes[]  imagebyte = image.getImagesByCategoryId(categoryId);     
     
InputStream is = new FileInputStream(imagebyte);
ByteArrayOutputStream bos = new ByteArrayOutputStream();
bos.write(imagebyte);
 
 
blobIs.close();
      }
      catch(IOException e){
            e.printStackTrace();
      }          catch(Exception excep) {
                excep.printStackTrace();  
      }
   }
}




public byte[] getImagesByCategoryId(String categoryId) throws Exception  
{
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        StringBuffer queryBuffer = new StringBuffer();
        Blob image = null;
        String imageId = null;
        ArrayList imageIdLIst = new ArrayList();
     
 
        try {
            this.connection = connManager.getDataSourceConnection();
            queryBuffer.append("select image from Image_Table where image_category='"+categoryId+"'");
            statement = connection.prepareStatement(queryBuffer.toString());
            resultSet = statement.executeQuery();
 
            while(resultSet.next()) {
                image = rs.getBlob(1);
                long imgLength = image.getBufferSize(); 
                byte[] byteImage = new byte[imgLength];
                byteImage = image.getBytes(1,(int)imgLength);
            }
        } catch(Exception excep) {
            excep.printStackTrace();
        }
        return byteImage;
}