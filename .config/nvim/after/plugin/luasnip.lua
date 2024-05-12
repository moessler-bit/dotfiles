local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

ls.add_snippets(nil, {
    all = {
        --ls.parser.parse_snippet("test", "--test")
    },
    rust = {
        ls.parser.parse_snippet("pl", "println!(\"{}\", $1);$0"),
        ls.parser.parse_snippet("pld", "println!(\"{:?}\", $1);$0"),
    },
    c = {
        ls.parser.parse_snippet("m", "int main(int argc, char **argv){\n\t$1\n\treturn 0;\n}$0"),
        ls.parser.parse_snippet("p", "printf(\"$1\\n\");$0"),
        ls.parser.parse_snippet("ps", "printf(\"%s\\n\", $1);$0"),
        ls.parser.parse_snippet("pc", "printf(\"%c\\n\", $1);$0"),
        ls.parser.parse_snippet("pd", "printf(\"%d\\n\", $1);$0"),
        ls.parser.parse_snippet("pp", "printf(\"%p\\n\", $1);$0"),
    }
})
