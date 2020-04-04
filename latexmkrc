add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');

sub run_makeglossaries {
  if ( $silent ) {
    system "makeglossaries -s build/Thesis.ist -q '$_[0]'";
  }
  else {
    system "makeglossaries -s build/Thesis.ist '$_[0]'";
  };
}
