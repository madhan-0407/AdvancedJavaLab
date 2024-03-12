import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/PurchaseOrderServlet")
public class PurchaseOrderServlet extends HttpServlet {
private static final long serialVersionUID = 1L;
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws IOException {
// Retrieve form data
String productName = request.getParameter("productName");
int quantity = Integer.parseInt(request.getParameter("quantity"));
double unitPrice = Double.parseDouble(request.getParameter("unitPrice"));
// Calculate total cost
double totalCost = quantity * unitPrice;
// Display purchase order details
response.setContentType("text/html");
PrintWriter out = response.getWriter();
out.println("<html><head><title>Purchase Order Details</title></head><body>");
out.println("<h2>Purchase Order Details</h2>");
out.println("<p><strong>Product Name:</strong> " + productName + "</p>");
out.println("<p><strong>Quantity:</strong> " + quantity + "</p>");
out.println("<p><strong>Unit Price:</strong> $" + unitPrice + "</p>");
out.println("<p><strong>Total Cost:</strong> $" + totalCost + "</p>");
out.println("</body></html>");
}
}