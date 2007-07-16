
%typemap(in) Resolvable::Kind {
  
  VALUE kindstring = rb_funcall( $input, rb_intern("to_s"), 0, 0);
  kindstring = rb_funcall( kindstring, rb_intern("downcase"), 0, 0);
  std::string s(RSTRING(pathstring)->ptr);
  
  // FIXME make the string lowercase first
  
  if ( s == "patch" )
  {
    $1 == Patch::Kind;
  }
  if ( s == "package" )
  {
    $1 == Package::Kind;
  }
  if ( s == "script" )
  {
    $1 == Script::Kind;
  }
  if ( s == "message" )
  {
    $1 == Message::Kind;
  }
  if ( s == "pattern" )
  {
    $1 == Pattern::Kind;
  }
  if ( s == "Selection" )
  {
    $1 == Selection::Kind;
  }

}

%typemap(out) Kind {
  const char *s = $1.asString().c_str();
  $result = ID2SYM(rb_intern(s));
}