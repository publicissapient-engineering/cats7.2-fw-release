package cats;

import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;
import org.w3c.dom.Attr;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class ClasspathUpdate {

  public static void main(String argv[]) {

    try {
      String rootFolder = System.getProperty("user.dir") + File.separator;
      String classPath = rootFolder + ".classpath";
      File xmlFile = new File("src\\main\\java\\cats\\classpath.xml");

      DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
      DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
      Document doc = dBuilder.parse(xmlFile);

      // Document doc = dBuilder.newDocument();

      File folder = new File("lib");
      String[] files = folder.list();
      for (String jars : files) {

        if (jars.toLowerCase().endsWith(".jar")) {
          Element rootElement = doc.createElement("classpathentry");

          Attr kind = doc.createAttribute("kind");
          kind.setValue("lib");
          rootElement.setAttributeNode(kind);

          Attr path = doc.createAttribute("path");
          path.setValue("lib/" + jars);
          rootElement.setAttributeNode(path);
          doc.getFirstChild().appendChild(rootElement);
        }

      }



      // write the content into xml file
      TransformerFactory transformerFactory = TransformerFactory.newInstance();
      Transformer transformer = transformerFactory.newTransformer();
      DOMSource source = new DOMSource(doc);
      StreamResult result = new StreamResult(new File(classPath));
      transformer.setOutputProperty(OutputKeys.INDENT, "yes");
      transformer.transform(source, result);

      // Output to console for testing
//      StreamResult consoleResult = new StreamResult(System.out);
//      transformer.transform(source, consoleResult);
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
