import gtk
import gtk.gdk

import xdot
dotcode = """
digraph G {
  Hello [URL="http://en.wikipedia.org/wiki/Hello"]
  k->k
}
"""
dotcode2 = """
digraph M {
  Hello [URL="http://en.wikipedia.org/wiki/Hello"]
    Hello -> World
}
"""

class MyDotWindow(xdot.DotWindow):

    def __init__(self):
        xdot.DotWindow.__init__(self)
        self.widget.connect('clicked', self.on_url_clicked)

    def on_url_clicked(self, widget, url, event):
        #dialog = gtk.MessageDialog(
        #        parent = self, 
        #        buttons = gtk.BUTTONS_OK,
        #        message_format="%s clicked" % url)
        #dialog.connect('response', lambda dialog, response: dialog.destroy())
	self.set_dotcode(dotcode2)
        #dialog.run()
        return True





def main():
    window = MyDotWindow()
    window.set_dotcode(dotcode)
    window.connect('destroy', gtk.main_quit)
    gtk.main()


if __name__ == '__main__':
    main()
