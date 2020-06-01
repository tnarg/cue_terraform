BEGIN{print "terraform {"; print "  required_providers {"};
{ print "    " $1 " = \"~> " $2 "\"" }
END{print "  }"; print "}"}
