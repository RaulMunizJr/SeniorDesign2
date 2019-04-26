require 'test_helper'

class VsmTest < ActiveSupport::TestCase

	def setup
		@vsm = Vsm.new(file_name: "MyVSM",
					   inventory1: 1783, processA: "Prep ingredients", resourceA: "ing 1, ing 2, etc.", dataA1: "total cycle: 120 min", dataA2: "NVA: 80 min", dataA3: "C/O: 23 min",
					   inventory2: 1683, processB: "Label Containers", resourceB: "By delivery location", dataB1: "total cycle: 30 seconds", dataB2: "NVA: 30 seconds", dataB3: "C/O: 10 min",
					   inventory3: 1583, processC: "Place & Load", resourceC: "Place product by location and load food into bags", dataC1: "total cycle: 210 seconds", dataC2: "NVA: 210 seconds", dataC3: "C/O: 30 min",
					   inventory4: 1483, processD: "Shipping", resourceD: "N/A", dataD1: "Truck leave by 9AM", dataD2: "N/A", dataD3: "N/A",
					   PLT1: 360, PLT2: 120, PLT3: 90, PLT4: 220, PT1: 40, PT2: 33, PT3: 50)
	end

	test "vsm should be valid" do 
		assert @vsm.valid?	
	end

	test "file name should be present" do
		@vsm.file_name = " "
		assert_not @vsm.valid?
	end
end

#vsm = Vsm.new(file_name: "MyVSM",inventory1: 1783, processA: "Prep ingredients", resourceA: "ing 1, ing 2, etc.", dataA1: "total cycle: 120 min", dataA2: "NVA: 80 min", dataA3: "C/O: 23 min",inventory2: 1783, processA: "Label Containers", resourceB: "By delivery location", dataB1: "total cycle: 30 seconds", dataB2: "NVA: 30 seconds", dataB3: "C/O: 10 min",inventory3: 1783, processA: "Place & Load", resourceC: "Place product by location and load food into bags", dataC1: "total cycle: 210 seconds", dataC2: "NVA: 210 seconds", dataC3: "C/O: 30 min",inventory4: 1783, processA: "Shipping", resourceD: "Pack bags into red cooler bags and load truck", dataD1: "Truck leave by 9AM", dataD2: "N/A", dataD3: "N/A",PLT1: 360, PLT2: 120, PLT3: 90, PLT4: 220, PT1: 40, PT2: 33, PT3: 50)
#vsm = Vsm.new(file_name: "",inventory1: 1783, processA: "Prep ingredients", resourceA: "ing 1, ing 2, etc.", dataA1: "total cycle: 120 min", dataA2: "NVA: 80 min", dataA3: "C/O: 23 min",inventory2: 1783, processA: "Label Containers", resourceB: "By delivery location", dataB1: "total cycle: 30 seconds", dataB2: "NVA: 30 seconds", dataB3: "C/O: 10 min",inventory3: 1783, processA: "Place & Load", resourceC: "Place product by location and load food into bags", dataC1: "total cycle: 210 seconds", dataC2: "NVA: 210 seconds", dataC3: "C/O: 30 min",inventory4: 1783, processA: "Shipping", resourceD: "Pack bags into red cooler bags and load truck", dataD1: "Truck leave by 9AM", dataD2: "N/A", dataD3: "N/A",PLT1: 360, PLT2: 120, PLT3: 90, PLT4: 220, PT1: 40, PT2: 33, PT3: 50)