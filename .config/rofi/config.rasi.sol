@import "default"

* {
	bg:  #002B36;
	cur: #708183;
	fgd: #93A1A1;
	cya: #2AA198;
	grn: #859900;
	ora: #CB4B16;
	red: #DC322F;
	yel: #B58900;
	pur: #D33682;
	cmt: #6C71C4;

	font: "CascadiaCode 10";

	foreground: @fgd;
	background: @bg;
	active-background: @pur;
	urgent-background: @red;

	selected-background: @active-background;
	selected-urgent-background: @urgent-background;
	selected-active-background: @active-background;
	separatorcolor: @active-background;
	bordercolor: @ora;
}

#window {
	background-color: @background;
	border:           3;
	border-radius:    6;
	border-color:     @cur;
	padding:          5;
  width:            calc( 30% min 600);
}

configuration {
  scroll-method:			    0;
  show-icons:				      true;
  icon-theme:				      "Arc-X-D";
  display-drun:			      " ";
  drun-display-format:		"{name}";
  disable-history:			  false;
  sidebar-mode:			      false;
}

#mainbox {
	border:  0;
	padding: 5;
}

#message {
	border:       1px dash 0px 0px ;
	border-color: @separatorcolor;
	padding:      1px ;
}

#textbox {
	text-color: @foreground;
}

#listview {
	fixed-height: 0;
	border:       0px 0px 0px 0px ;
	border-color: @bordercolor;
	spacing:      2px ;
	scrollbar:    false;
	padding:      6px 0px 0px ;
}

#element {
	border:  0;
  border-radius: 6;
	padding: 6 ;
}

#element.normal.normal {
	background-color: @background;
	text-color:       @foreground;
}

#element.normal.urgent {
	background-color: @urgent-background;
	text-color:       @urgent-foreground;
}

#element.normal.active {
	background-color: @active-background;
	text-color:       @background;
}

#element.selected.normal {
	background-color: @selected-background;
	text-color:       @background;
}

#element.selected.urgent {
	background-color: @selected-urgent-background;
	text-color:       @foreground;
}

#element.selected.active {
	background-color: @selected-active-background;
	text-color:       @background;
}

#element.alternate.normal {
	background-color: @background;
	text-color:       @foreground;
}

#element.alternate.urgent {
	background-color: @urgent-background;
	text-color:       @foreground;
}

#element.alternate.active {
	background-color: @active-background;
	text-color:       @foreground;
}

#scrollbar {
	width:        2px ;
	border:       0;
	handle-width: 8px ;
	padding:      0;
}

#sidebar {
	border:       2px dash 0px 0px ;
	border-color: @separatorcolor;
}

#button.selected {
	background-color: @selected-background;
	text-color:       @foreground;
}

#inputbar {
	spacing:    0;
	text-color: @foreground;
	padding:    1px ;
}

#case-indicator {
	spacing:    0;
	text-color: @foreground;
}

#entry {
	spacing:    0;
	text-color: @cya;
}

#prompt {
	spacing:    0;
	text-color: @grn;
}

#inputbar {
	children:   [ prompt,textbox-prompt-colon,entry,case-indicator ];
}

#textbox-prompt-colon {
	expand:     false;
	str:        "";
	margin:     0px 0.3em 0.3em 0em;
	text-color: @grn;
}
