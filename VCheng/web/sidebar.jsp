<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
    <head>
        <title>HtmlBox 4.0 - Demonstration Full</title>
        <script src="js/jquery-1.11.3.min.js"></script>
        <script language="Javascript" src="js/textEditor/htmlbox.colors.js" type="text/javascript"></script>
        <script language="Javascript" src="js/textEditor/htmlbox.styles.js" type="text/javascript"></script>
        <script language="Javascript" src="js/textEditor/htmlbox.syntax.js" type="text/javascript"></script>
        <script language="Javascript" src="js/textEditor/xhtml.js" type="text/javascript"></script>
        <script language="Javascript" src="js/textEditor/htmlbox.min.js" type="text/javascript"></script>
    </head>

    <body>
        <textarea id='ha'></textarea>
        <script language="Javascript" type="text/javascript">
            $("#ha").css("height","50%").css("width","50%").htmlbox({
                toolbars:[
                    [
                        // Cut, Copy, Paste
                        "separator","cut","copy","paste",
                        // Undo, Redo
                        "separator","undo","redo",
                        // Bold, Italic, Underline, Strikethrough, Sup, Sub
                        "separator","bold","italic","underline","strike","sup","sub",
                        // Left, Right, Center, Justify
                        "separator","justify","left","center","right",
                        // Ordered List, Unordered List, Indent, Outdent
                        "separator","ol","ul","indent","outdent",
                        // Hyperlink, Remove Hyperlink, Image
                        "separator","link","unlink","image"
		
                    ],
                    [// Show code
                        "separator","code",
                        // Formats, Font size, Font family, Font color, Font, Background
                        "separator","formats","fontsize","fontfamily",
                        "separator","fontcolor","highlight",
                    ],
                    [
                        //Strip tags
                        "separator","removeformat","striptags","hr","paragraph",
                        // Styles, Source code syntax buttons
                        "separator","quote","styles","syntax"
                    ]
                ],
                skin:"blue"
            });
        </script>
    </body>
</html>