project('com.github.rippieuk.hello-again', 'vala','c')

executable(
  meson.project_name(),
  'src/Application.vala',
  'src/MainWindow.vala',
  'src/HeaderBar.vala',
  dependencies: [
    dependency('gtk+-3.0'),
    dependency('granite')
  ],
  install: true
)

install_data(
    join_paths('data', meson.project_name() + '.desktop'),
    install_dir: join_paths(get_option('datadir'), 'applications')
)

install_data(
    join_paths('data', meson.project_name() + '.appdata.xml'),
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)
meson.add_install_script('meson/post_install.py', join_paths(get_option('prefix'), get_option('datadir')))


subdir('data')
