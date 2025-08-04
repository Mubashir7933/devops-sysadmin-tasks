📝 Replace String in XML Configuration File
📁 Task Overview
As part of routine maintenance within the Stratos Datacenter, the backup server hosts a configuration file named nautilus.xml, located at /root/nautilus.xml. Before deployment, system administrators are required to substitute placeholder text to insert valid application data.

This task involved replacing all occurrences of the string "Sample" with "Cloud" in the XML file.

🎯 Objective
Locate all instances of the word Sample in /root/nautilus.xml

Replace them with Cloud

Apply changes directly to the original file

⚙️ Commands Used
```bash
sed -i 's/Sample/Cloud/g' /root/nautilus.xml
```
🔍 Explanation
Component	Description
sed	Stream editor used for inline text manipulation
-i	Edits the file in-place (no manual save needed)
's/Sample/Cloud/g'	Substitutes all (g = global) "Sample" with "Cloud"
/root/nautilus.xml	Path to the XML file being modified

✅ After execution, all references to Sample in the XML configuration file are updated to Cloud, making the file ready for application use.
