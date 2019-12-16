require 'test_helper'

class ProducerTest < ActiveSupport::TestCase

  #Tests if producer saves if it has no details
  test 'should not save empty producer' do
    producer = Producer.new

    producer.save
    refute producer.valid?
  end

  #Tests if the details are valid
  test 'should save valid producer' do
    prod = Producer.new

    prod.name = 'Mr. Producer'
    prod.email = 'producer@email.com'
    prod.telephone = '65423135'

    prod.save
    assert prod.valid?
  end

  #Tests if producer name is unique
  test 'should not save duplicate producer name' do
    prod = Producer.new

    prod.name = 'Mr. Producer'
    prod.email = 'producer@email.com'
    prod.telephone = '65423135'

    prod.save
    assert prod.valid?

    prod1 = Producer.new

    prod1.name = 'Mr. Producer'
    prod1.email = 'producer@email.com'
    prod1.telephone = '65423135'

    prod1.save
    refute prod1.valid?
  end
end
