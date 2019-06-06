import terraform_validate

class TestBaseNetworkStandards(unittest.TestCase):

    def setUp(self):
        #temporary hard-setting path to terraform dir
        #TODO: Replace this with a command line argument
        self.path = "/tmp/source/terraform"
        self.v = terraform_validate.Validator(self.path)
        self.v.error_if_property_missing()
        self.v.enable_variable_expansion()

    def test_vpc_cidr(self):
        #ensure that VPC module's CIDR range is RFC-1918 and AWS CIDR range compliant
        self.v.resources("vpc").property("cidr_range").should_match_regex("10.0.0.0/16")

    def test_az_count(self):
        #ensure that the VPC is configured to span at least two AZs
        self.v.resources("vpc").property("az_count").should_equal(2)

    #def test_public_subnet_count(self):
    #    #ensure that the VPC has at least two public subnets
    #    self.v.resources("vpc").property("public_cidr_range").


if __name__ == 'main':
    suite = unittest.TestLoader().loadTestsFromTestCase(TestBaseNetworkStandards)
    unittest.TextTestRunner().run(suite)
