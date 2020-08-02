class HelloAgain.MyApp : Gtk.Application {
  public GLib.Settings settings;

  public MyApp () {
      Object(
          application_id: "com.github.rippie.hello-again",
          flags: ApplicationFlags.FLAGS_NONE
      );

      settings = new GLib.Settings (this.application_id);
  }

  protected override void activate () {
      Gtk.ApplicationWindow main_window = new HelloAgain.MainWindow (this);
      main_window.show_all ();
  }

  public static int main (string[] args) {
      MyApp app = new MyApp ();
      return app.run (args);
  }
}
