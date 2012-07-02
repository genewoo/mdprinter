require './test/test_helper.rb'
require "test/unit"

#require "library_file_name"

class MdPrinterTest < Test::Unit::TestCase
  def setup
#    Printer = Mdprinter::MdPrinter
  end

  def test_italic
    assert_equal MDprinter.italic("a"), "_a_"
  end

  def test_b
    assert_equal MDprinter.b1("a"), "> a"
    assert_equal MDprinter.b2("a"), "> > a"
    assert_equal MDprinter.b3("a"), "> > > a"
    assert_equal MDprinter.b4("a"), "> > > > a"
  end

  def test_n
    assert_equal MDprinter.n1("a"), "1. a"
    assert_equal MDprinter.n2("a"), "   1. a"
    assert_equal MDprinter.n3("a"), "      1. a"
    assert_equal MDprinter.n4("a"), "         1. a"
  end

  def test_h
    assert_equal MDprinter.h1("a"), "# a #"
    assert_equal MDprinter.h2("a"), "## a ##"
    assert_equal MDprinter.h3("a"), "### a ###"
    assert_equal MDprinter.h4("a"), "#### a ####"
  end

  def test_hr
    assert_equal MDprinter.hr, "* * *"
  end

  def test_br
    assert_equal MDprinter.br, "  "
  end

  def test_bold
    assert_equal MDprinter.bold("a"), "__a__"
  end

  def test_link
    assert_equal "[label](link) \"text\"", MDprinter.link('label', 'link', 'text')
  end

  def test_img
    assert_equal "![label](link) \"text\"", MDprinter.img('label', 'link', 'text')
  end

#  def test_cannot_call_private
#    MDprinter.surround "a", "a"
#  end
end
