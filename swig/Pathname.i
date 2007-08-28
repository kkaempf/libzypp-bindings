
#ifdef SWIGRUBY
%alias Pathname::c_str "to_s";
#endif

class Pathname
{
public:

    Pathname();
    Pathname(const std::string&);
    Pathname(const char*);

    const char* c_str() const;

    bool empty() const;
    bool absolute() const;
    bool relative() const;

};


// #ifdef SWIGRUBY
//
// // Something like 'opts.repoCachePath = tmp_cache_path.path()' causes out and
// // in transformation. Can that be avoided?
//
// %typemap(in) const Pathname&, Pathname* {
//     VALUE pathstring = rb_funcall( $input, rb_intern("to_s"), 0, 0);
//     Pathname *p = new Pathname( (RSTRING(pathstring)->ptr) );
//     $1 = p;
// }
//
// %typemap(freearg) const Pathname&, Pathname* {
//     delete $1;
// }
//
// %typemap(out) Pathname {
//     rb_require("pathname");
//     VALUE klass = rb_const_get( rb_cObject, rb_intern("Pathname"));
//     VALUE rbpathstr = rb_str_new2($1.asString().c_str());
//     $result = rb_funcall( klass, rb_intern("new"), 1, rbpathstr);
// }
//
// #endif

