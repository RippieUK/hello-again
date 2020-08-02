public class HelloAgain.HeaderBar : Gtk.HeaderBar {
  public HelloAgain.MainWindow window { get; construct; }
  public Granite.ModeSwitch mode_switch;

  public HeaderBar (MainWindow window) {
    Object (
        window: window,
        has_subtitle: false,
        show_close_button: true
    );
  }

  construct {
    mode_switch = new Granite.ModeSwitch.from_icon_name ("display-brightness-symbolic", "weather-clear-night-symbolic");
    mode_switch.primary_icon_tooltip_text = "Light Mode";
    mode_switch.secondary_icon_tooltip_text = "Dark Mode";
    mode_switch.valign = Gtk.Align.CENTER;
    mode_switch.has_focus = false;

    var menu_button = new Gtk.Button ();
    menu_button.has_tooltip = true;
    menu_button.image = new Gtk.Image.from_icon_name ("open-menu-symbolic", Gtk.IconSize.SMALL_TOOLBAR);
    menu_button.tooltip_text = "Settings";

    pack_end (menu_button);
    pack_end (mode_switch);
  }

}
