require 'helper'

class TestFakerIdentificationESCO < Test::Unit::TestCase
  include Test::Unit::Assertions
  def setup
    @tester = Faker::IdentificationESCO
  end

  def test_drivers_license
    assert_match(/\A\d{6,14}\z/, @tester.drivers_license)
  end

  def test_id
    assert @tester.method_defined?(:id)
  end

  def test_gender
    assert_match(/\A(Hombre|Mujer)\z/, @tester.gender)
  end

  def test_category
    assert_match(/\A([a][1-2]|[bc][1-3])\z/i, @tester.driver_license_category)
  end

  def test_blood_type
    assert_match(/\A(a|b|o|ab)[+-]\z/i, @tester.blood_type)
  end

  def test_expedition_date
    assert(Date.today >= @tester.expedition_date)
  end
end
