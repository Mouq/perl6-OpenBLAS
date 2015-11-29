unit sub MAIN($in-file);

my $in = $in-file.IO.slurp;

grammar CRoutineDef {
    token ws { \s* }
    token TOP {
        .*? <definition> +%% .*? .*
    }
    rule definition {
        ^^ <typename> [$<pointer>=\*]? <funcname=.ident> \(
        (
        | '...'
        | [const]? [ <typename> || {} <no-typename-match($/)> ] [$<pointer>=\*]? <paramname=.ident>
        )* %% \,
        \)
    }
    token ident { \w+ }
    proto rule typename { * }
    rule typename:void      { void }
    rule typename:int       { int  }
    rule typename:float     { float }
    rule typename:double    { double }
    rule typename:char      { char }
    rule typename:enum      { enum <ident> }
    token no-typename-match($o) { <ident> { die "Unrecognized type: $/\n of $o"} }
}

class CRoutineDef::Actions {
    sub pointerize($/) {
        $<pointer>
            ?? $<typename>.substr(0,4) eq 'void'
                ?? "Pointer[void]" !! "CArray[{$<typename>.ast}]"
            !! $<typename>.ast
    }
    method TOP($/) { make @<definition>».ast }
    method definition($/) {
        make "our sub "~$<funcname>.Str
            ~"("~@0.map(&pointerize).join(", ")~") "
            ~"returns "~pointerize($/)~"\n"
            ~"    is export is native(__your_lib__) "
            ~"is symbol('$<funcname>.Str()') \{*\}\n"

    }
    method typename:int    ($/) { make 'int32' }
    method typename:float  ($/) { make 'num32' }
    method typename:double ($/) { make 'num64' }
    method typename:char   ($/) { make 'int8'  }
    method typename:enum   ($/) { make 'int8'  }
    method typename:void   ($/) { make 'void'  }
}

say CRoutineDef.parse($in,:actions(CRoutineDef::Actions)).ast.join("\n");
