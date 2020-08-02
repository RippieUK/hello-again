public class HelloAgain.MainWindow : Gtk.ApplicationWindow {
  public HeaderBar header;

  public MainWindow (Gtk.Application application) {
    Object (
        application: application,
        title: "hello-again",
        window_position: Gtk.WindowPosition.CENTER,
        default_height: 300,
        default_width: 300
    );
  }

  construct {
    Gtk.HeaderBar header = new HelloAgain.HeaderBar (this);

    Gtk.Button hello_button = new Gtk.Button.with_label ("Say Hello");
    Gtk.Label hello_label = new Gtk.Label (null);

    hello_button.clicked.connect (() => {
      hello_label.label = ("Hello World!");
      hello_button.sensitive = false;
    });

    Gtk.Button rotate_button = new Gtk.Button.with_label ("Rotate");
    Gtk.Label rotate_label = new Gtk.Label ("Horizontal");

    rotate_button.clicked.connect (() => {
      rotate_label.angle = 90;
      rotate_label.label = ("Vertical");
      rotate_button.sensitive = false;
    });

    Gtk.Grid grid = new Gtk.Grid ();
    grid.column_spacing = 6;
    grid.row_spacing = 6;
    grid.margin = 6;

    // add first row of widgets
    grid.attach (hello_button, 0, 0, 1, 1);
    grid.attach_next_to (hello_label, hello_button, Gtk.PositionType.RIGHT, 1, 1);

    // add second row of widgets
    grid.attach (rotate_button, 0, 1, 1, 1);
    grid.attach_next_to (rotate_label, rotate_button, Gtk.PositionType.RIGHT, 1,1);

    add (grid);

    set_titlebar (header);
  }
}
