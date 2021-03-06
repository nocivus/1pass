require 'spec_helper'

describe EncryptionKey do
	it "should initialize encryption keys" do
		encryption_keys = 
			{
			  "SL3"=> "6EE8D721E87248D2BA08329003B23C56",
			  "SL5"=> "CB7D05596E224460A6AF6B4E079A3254",
			  "list"=> [
			    {
			      "data"=> "U2FsdGVkX18kNofF295yoryIbjC0gQA4QTVbrjE2JNQ0Hh6NJmVESaT2opYIX2J4dZaysH/7OnisBnqwbjiNAirbtpz/OEGoyZJiGilQUKieRExa/55axoTpkai1hS1DhTItfeVgNc59GUNo3T4WtCZvpNv/xlb1ArFutiJ4XTVGNYsjmhL6WffC5qJGJTY+qY8SMZTNDIDiTVM1eQMFu/C0WGPPYPTNSMr7G86/JrDt4xP+csv03cZWHSDDnGcY0WwJPxzf0Yd/5vhFvYBdwGYQFyuaz+FJyh2M596WDh5Wauegv1l4DXbmB7cHOnGI0KnwlaUsRk6PYAc5+uzf6FxXtt/iGjLZWf8PhduhLI1xGxvYQL9eaTfUe/rs9UFsxgT9f7I3262HtUQ553h2cBwddp6qZ+wUCovEK8dP2YSJluGSVRheB+GUUyX5W3rde3EKfhrJVVf8BPPgY9IFCRKGxENX++y+MO0wCzO2XD2an6A1zrUYxr4LwZmGzBF+a/pafyrHTKxCQgPTAlEUrDT1vocowKcK2QZMQ7E24XdyjpToyz5Fe/XpaGZ5KHwU3KphM0gSysAF0W3AGSWYGO2DXfiSvUtgUOhNlqAEcegVcaUmg7icHG6qNgG68sxFyPmoyzQfk/ZhQ5ruogjxs52Kx++955i+O6ujJ+7ID9azDhRgV/tN/jmhNlSP91F3ey1f4uJURe128e16WhhM4sG2Q3Vq201bNL3cRG9oPLEEUHUTt3DbLFcJt29unyxKUmkoXTaG2hJw8qX1yzOFdfLBY3U58SdyWwXuqsmCeGK+UvTIi0r8BIhCG8aMmS2PGIm8xTinFrK2dp2wls0yzcFprRc10SSqJ88A9C8O+6pCgEpbgeuR3QhgoFytOwinC012qfDBhoLms8tUxwZ8yEsPjuHffNdoP5SAg+G3w5jIk9zd8vCkwOhXFcrjBhVD8FjP0dU9YOGCK9iTwVP2f70l1UpPFLm7FMrwh/hX6EKgWk5J44s8eLbmYn9QUlBdMMWU1xOzRJVACxtUVL9Ymt0kfXp/ZMnp/new1KxAl1VHG9/AgSF2x9yrGMsgpxOssnsftS+ekFz/TtS8HzyopBUHLPEP5jmuOvVSu96LUwFowcqS0S/zxR7hIE38NeNRFg0sF+bVlLYEGnN+fAzqfodO9eeiRczXBcUelyehgwon/0dg592OXRqEVq0EMqOfuNDrtUKdTZ1ZTfuXy4rjduK3RXNPeF/4RDDMEjs2UNgCk6gus2v2yvcBa22nKuVOGpq9Hf9L185lBiCKmucdNeM4pelIdfmZSSRN3TAjexchOW3bKzDZhqO3WEc716Ic0ETqCj1l3fuF6/yELQG5I7pgj/Lq2tXQhaI6EfEQTEgWhIXaSSSPY8Fn/0ndQaKn\u0000",
			      "validation"=> "U2FsdGVkX18HfNCJEqhTvj89fBcgvzn0g8ghnCUhb5pqI/IS8yw7+o5I5pwm/Dd11rgPKgHzTSrMyc4sgLgBpsZfzDstfe0CS9XfAhbteFhRZN5vuwsaRneAed8BDLFRaA/uZj3iBosJpWky70vnqw81jYjUeHeXL5EXnK06GuovUCumw2AzrtpHX4FQPJxaLrx8s/mllYCMEQ0fywkysQ+lobcdceFbHFqOnGbLZfDDzcwoDzDsLrszyMJhWcY2hc/nbD3aHJcB28YoNQOHeiq0j6fbpsR8BOkyqWQAzlIRiwDv9ROW5Zn4l79AcQhoKejLJTOG3cERvnBns/3MCR4rJksAWoB7h762GQ/srSpjh8SHyFevDSSfUjg/0tzt4rF0lzFx5wwFdonMWNCky5PtUQ5IC2RcKRhCuLMgHqoxLyXBCDgBV6XWjhE6WXlaNu/HF9YPhKc9HnxjtQZkyBiPbN4je5wS/bYfP/zpzUqH9sXo1VHLYlnIw93+MHSqIsMUhMIJOjG850JZwVXw9lDsybu6zLYDER+zEcPaBIIXZ7aL0Bf5Y6oYgmOggrojkfYO0MHhMOmYhDijCXJZqceLMAUQeFfDovdXkpBKOX5t+idbEhJX44pkLb2YGtavH4tco4jAY6n80/N6KdL/ikAyq8DcURwhjajcAQFV31gAuAeQHdiTYumu3JkGitn7TwIdLRk1esf5nsdid9EEFYRPdpbmrAecRwV2Z6ZL+4jvFndpubnN3Ys9aIIAKa3rXlKSsUakB+/ntfb3JHj0APs+Cw2juatUllqNYOsmMz29rBjDX//39Dq65loPjJKq12MV83MvX0N4GlP926WTa6mXf0hL+fvGfKxSSrplKtCYpflkN1AO7Nv8rnrid47XWAVxRPNM9UmhMpPacYLhh/3i3JtbkmL9FcSgpB+K1vgM4LOwebsar1Gm9gdmLkmpN3mktrQL+ZE0FZAC+nQO8ap3yZ91TVFIsvZgK59sbofpxBIJx3Qy3A5j9piDUvW3/7zd1FY8FyAmBkry1kY4x4z5ZoDmHh6c0BGGvg4qW/b4LvnD2Yi8I2TpHgdI9zEEoho15rWOUqlijdK1JS6o9fHrBSnlXuZVHurJ+HF8zaXnaTt+/nv7RgyopJQhgr5sMU7RiR2GYg+o82ZRMaoY6cPl8eJM+WAb/ZIuvTn/JZ/6NDnXKRGB40sgOVNV2d9BETzrhbQ5/D1zsmOdSOfzxUabO5Aw6VX57d2paXQSXDJioYJw0FafVwBSCX3gkXuIdc+/F0e+BV65MBqeJfnCwVP47pjLm2yYftVZCV2yULBzzoeD0Qbvo08QN4MybztRSc/FX53H6Vt3lyxo6h7BxiTS5Y7ff3i0ZpnSS8LtxXGysUb3JaiaO8UeS3IV2Eef\u0000",
			      "level"=> "SL3",
			      "identifier"=> "6EE8D721E87248D2BA08329003B23C56",
			      "iterations"=> 10000
			    },
			    {
			      "data"=> "U2FsdGVkX1/2nv06QLYyeKoNehrq2F3qgxobNWxPyxBWGdkpJIJxqiz9KHQtbiW2pTI1OqE3vdNLIGiclsWTx4kpke7Ww2sxt6B3gZvswruhy2ZQo0DtDzhwQA8IZMbCTvjtDkLwL8ORqwLMAzq9CFEa7ZHQ29j7Bq5zI/QfvTwMh9DLra5PojgJ1BNWagT2gdFV65JgKH68ZoKbsWJzzpYkI4osO1c5zwl3kwTNXd/09teTTV5zZfXA9ksjDwbpmsxz36w0rpPbElC0SYadJHOGZ/YttGBAp+XvMMWprDfkzd1dFVc89TIWRLUzi0zIO1sit4aoLfrPEwm0RKZAtNj8ZIXg98mBFsI3pHYMS0h0ureQ/SInwic6jNka/CYNp6PAApDvTmPI5oL7qipw2rGHjeDjJY3M8pOGJ0FT2nM6qgQKlPckNcRlRtmz02D7wLCiGIbc+yvVCHiDdpaS+WfZVf0qPcr/Ecur4bjJBuRFDcIsQgFbfXLuv9ecfXBYVgsNw79JPmNQKz39HlKF+2X3rXiQzS7WG2soHdnVK4VSZpnIGMZip1AyijtxWMRScbdt2woOTyRv3cs5asXd0ZMD+iR9h4t1V/Fl4RtwJtfBMTq/fhwv9YoFlz6FJfUd7P13CfGi0CFaU9DrmoNKu8Q3lwr03t575BHu2IkhWkSHll79H/btERZnr3IJ2rLZWdn3bh0PLnisBQ2qDQWP9DIhrHjRbW5tp1ffqXnBnndGIBi20hfJyTzimXEJZ3pIt5YfUlos09AboAqYX9DI95bEvwtxmMNNGW2/Wc5iZX9+rdQXL10wfItlbV+XUsK8RIzngGKAMuNZMcl9BQ6BU/5ravoZQgaMJZHC0cx+yJHPI1ciJr9pCss/Sqmu9agO5V0oiXSeIBZUp/X7aOat/LJBJydd0b+YFQ3Pjk9cyTYQbNQUkOZkGsUF/ykwmCI10fW9aRZ5GBZSlPqQYpK1HPYhjAELpLXsyNZ5HwEoOFVLOcLjKc4sZ6Kl0GMgz2FLM1i76lRaOToZUaRqeq8QTqL4XTvKMZhVzWF9gEtFAXtYSAoHa5mSTgpZmRtKSmyh89vjcQPEa2m+aAqf2Idx3gHgaGHw+xqoLaaBvMWBlM5mlWg1z9VNu+6VqMSS83gTm2KP5sShouHegr3PjRvDA/cROdv5WvimzJPj8p+L/UDkfeMfGcbZKc9/rsB1LYwtyLU/4ADTF3I4v963QeEh017MwFuXwmmoYv7A7GRSJ4kLETRLvhWiFjH1xohJPN6nrn/dB35SgnRNIi1XFNNb2lRKzoc3nazAJ6t7MY6H///oE2ml8WtoIxRkU14vtTZvUOdb33Pr2zNPmuANd7/xlf5WOQQwWwWbtbAovJ2SJxM9p+c7FnfMl9YR2nm10raZ\u0000",
			      "validation"=> "U2FsdGVkX1/n/cdXWqhEbKWtiJ7f9R74xSQVjqH9rAC5DvIDr8JzM0hKWuScsCaAxjmCR2nMYmkFK9OsMWSCNUFFBY+E7uXVC6amcUJIMt37jU5gvJ35zKOIoV8Wy3DxD/XXOZPL6zomgUIvqj66u8juamiuAK7uV2J+cNC/54rVuwHai7Ip/YWEyXYl/BgxmHatDUv8RExT617tWLKRObmXnEcyQq6+PttkvwDdiSsfyrzduEvVHvgFB4JJ8fNnpkgl4SQipvDymxMoBxW4IpP4ACa/qzuDwScKggJCk4bo9liSh7zW4gwV40dDdDNCwVZNhQ14AxyLlkDEhzgFq77RHnJafiekU0qm5rLn1O5U/tgjUpbbTqENv+gQBKLNb0+NHxsQ/U4PNibWHKxtS7hCjrdYUGsBGtxfdVDD8yMGH8i6dz2VnHx/l+M+PhKWBIxTWvGYCLewZg24VW0/X5IOSItbFtHu6QWqS0xUOtS9wqieBwWi2sl+nJ8E4DJryzpav68l9ejH+3tGKVZWYkzoNV+Z8hawctio/I4cfwttdAW0eRdTsrFT50dEFmfBmnW9wWYedkZpTm7liyW+5f0e5672TloEz3aMTdHW7X0TVC/gWxIQqTHXxGAp78AgwZZXcEfvChl3mLCqlhdZH+P90LyGybnaCEW3hhgsjd7Kh7e35e0A/cUcBD5nxDk7//6mltgVn0roZgCZnDnbg/u02/V3IiMeFp8Bs3AtPdyV04ZKdJrxRzObl/1URnfadwgvR42b2jRA2LqxW2TORFEwsX/TVmjxmPVvPUXsXvetd9CYO1pe1Q0nBisno1IrYtIrAT1eIsGIlLnBUhg4WEGmGTJDbWLE//fA4qP6L6HyVzkiOQQZRGg8CHc39cjcmOmyjZftKhefZB3fM0HMZOdOF9v1paOFxs+JG+p2b0fxwxJF7BFv3yXvpf25/sOBIb2WehZRInjs+2FghwAZbLj99fteb/lB1OiCBkJVM/QtW0UthtGbLuJ8OXAGHxzxLNV6BSP92FSNglU3uCbw2uQVLyhcxEJvz5+oXoHP51kB9SEhwmJbahBjGaxOpqk5gW1mrua5OiLLQcwgbND/eetBkcI4Ga3Ma+CZ4faTs74KDspSIJmc1K2fRt0OnGmF/rSM1w7eFYuYuigrQhdYU/ZQlC008QUL6HxQlLmKRW8N35O/+aRKL1qG7MnMoglqp3xaYrlaX1JYRtADCuwZiUia7YvhKL2DnlGrddThfcLYqLavqKXqVC/lTYErlVN2VKScnHG0AsgINKypVBNl0t69/jKYUsd+x4gPe1yWi/gRqqH0TBOdjWi41Bx0FNfzAZHz+J3Rf/T7OUNWibN5Sf1EqldT2ZJxeouzDVQ552VfEKUXqyQhQtBUFn4kskiy\u0000",
			      "level"=> "SL5",
			      "identifier"=> "CB7D05596E224460A6AF6B4E079A3254",
			      "iterations"=> 10000
			    }
			  ]			  
			}
		encryption_key = EncryptionKey.new encryption_keys
		encryption_key.items.size.should == 2
		encryption_key.get("6EE8D721E87248D2BA08329003B23C56").level.should == "SL3"
		encryption_key.get("SL5").identifier.should == "CB7D05596E224460A6AF6B4E079A3254"
	end

	describe "EncryptionKey.unlock" do		

		it "should return true if all keys are unlocked" do
			encryption_key = mock('EncryptionKeyItem')
			encryption_key.expects(:unlock).times(2).with('password').returns(true)
			EncryptionKeyItem.stubs(:new).returns encryption_key

			encryption_key = EncryptionKey.new ({"list" => [1, 2]})
			encryption_key.unlock('password').should be_true
		end

		it "should return false if any of the keys are locked" do
			encryption_key1 = mock('EncryptionKeyItem')
			encryption_key1.expects(:unlock).with('password').returns(true)
			encryption_key2 = mock('EncryptionKeyItem')
			encryption_key2.expects(:unlock).with('password').returns(false)		

			EncryptionKeyItem.stubs(:new).with(1).returns(encryption_key1)
			EncryptionKeyItem.stubs(:new).with(2).returns(encryption_key2)

			encryption_key = EncryptionKey.new ({"list" => [1, 2]})
			encryption_key.unlock('password').should be_false
		end	

	end
end

describe EncryptionKeyItem do
	it "should unlock if password is correct" do
	    data = {
	      "data"=> "U2FsdGVkX1/2nv06QLYyeKoNehrq2F3qgxobNWxPyxBWGdkpJIJxqiz9KHQtbiW2pTI1OqE3vdNLIGiclsWTx4kpke7Ww2sxt6B3gZvswruhy2ZQo0DtDzhwQA8IZMbCTvjtDkLwL8ORqwLMAzq9CFEa7ZHQ29j7Bq5zI/QfvTwMh9DLra5PojgJ1BNWagT2gdFV65JgKH68ZoKbsWJzzpYkI4osO1c5zwl3kwTNXd/09teTTV5zZfXA9ksjDwbpmsxz36w0rpPbElC0SYadJHOGZ/YttGBAp+XvMMWprDfkzd1dFVc89TIWRLUzi0zIO1sit4aoLfrPEwm0RKZAtNj8ZIXg98mBFsI3pHYMS0h0ureQ/SInwic6jNka/CYNp6PAApDvTmPI5oL7qipw2rGHjeDjJY3M8pOGJ0FT2nM6qgQKlPckNcRlRtmz02D7wLCiGIbc+yvVCHiDdpaS+WfZVf0qPcr/Ecur4bjJBuRFDcIsQgFbfXLuv9ecfXBYVgsNw79JPmNQKz39HlKF+2X3rXiQzS7WG2soHdnVK4VSZpnIGMZip1AyijtxWMRScbdt2woOTyRv3cs5asXd0ZMD+iR9h4t1V/Fl4RtwJtfBMTq/fhwv9YoFlz6FJfUd7P13CfGi0CFaU9DrmoNKu8Q3lwr03t575BHu2IkhWkSHll79H/btERZnr3IJ2rLZWdn3bh0PLnisBQ2qDQWP9DIhrHjRbW5tp1ffqXnBnndGIBi20hfJyTzimXEJZ3pIt5YfUlos09AboAqYX9DI95bEvwtxmMNNGW2/Wc5iZX9+rdQXL10wfItlbV+XUsK8RIzngGKAMuNZMcl9BQ6BU/5ravoZQgaMJZHC0cx+yJHPI1ciJr9pCss/Sqmu9agO5V0oiXSeIBZUp/X7aOat/LJBJydd0b+YFQ3Pjk9cyTYQbNQUkOZkGsUF/ykwmCI10fW9aRZ5GBZSlPqQYpK1HPYhjAELpLXsyNZ5HwEoOFVLOcLjKc4sZ6Kl0GMgz2FLM1i76lRaOToZUaRqeq8QTqL4XTvKMZhVzWF9gEtFAXtYSAoHa5mSTgpZmRtKSmyh89vjcQPEa2m+aAqf2Idx3gHgaGHw+xqoLaaBvMWBlM5mlWg1z9VNu+6VqMSS83gTm2KP5sShouHegr3PjRvDA/cROdv5WvimzJPj8p+L/UDkfeMfGcbZKc9/rsB1LYwtyLU/4ADTF3I4v963QeEh017MwFuXwmmoYv7A7GRSJ4kLETRLvhWiFjH1xohJPN6nrn/dB35SgnRNIi1XFNNb2lRKzoc3nazAJ6t7MY6H///oE2ml8WtoIxRkU14vtTZvUOdb33Pr2zNPmuANd7/xlf5WOQQwWwWbtbAovJ2SJxM9p+c7FnfMl9YR2nm10raZ\u0000",
	      "validation"=> "U2FsdGVkX1/n/cdXWqhEbKWtiJ7f9R74xSQVjqH9rAC5DvIDr8JzM0hKWuScsCaAxjmCR2nMYmkFK9OsMWSCNUFFBY+E7uXVC6amcUJIMt37jU5gvJ35zKOIoV8Wy3DxD/XXOZPL6zomgUIvqj66u8juamiuAK7uV2J+cNC/54rVuwHai7Ip/YWEyXYl/BgxmHatDUv8RExT617tWLKRObmXnEcyQq6+PttkvwDdiSsfyrzduEvVHvgFB4JJ8fNnpkgl4SQipvDymxMoBxW4IpP4ACa/qzuDwScKggJCk4bo9liSh7zW4gwV40dDdDNCwVZNhQ14AxyLlkDEhzgFq77RHnJafiekU0qm5rLn1O5U/tgjUpbbTqENv+gQBKLNb0+NHxsQ/U4PNibWHKxtS7hCjrdYUGsBGtxfdVDD8yMGH8i6dz2VnHx/l+M+PhKWBIxTWvGYCLewZg24VW0/X5IOSItbFtHu6QWqS0xUOtS9wqieBwWi2sl+nJ8E4DJryzpav68l9ejH+3tGKVZWYkzoNV+Z8hawctio/I4cfwttdAW0eRdTsrFT50dEFmfBmnW9wWYedkZpTm7liyW+5f0e5672TloEz3aMTdHW7X0TVC/gWxIQqTHXxGAp78AgwZZXcEfvChl3mLCqlhdZH+P90LyGybnaCEW3hhgsjd7Kh7e35e0A/cUcBD5nxDk7//6mltgVn0roZgCZnDnbg/u02/V3IiMeFp8Bs3AtPdyV04ZKdJrxRzObl/1URnfadwgvR42b2jRA2LqxW2TORFEwsX/TVmjxmPVvPUXsXvetd9CYO1pe1Q0nBisno1IrYtIrAT1eIsGIlLnBUhg4WEGmGTJDbWLE//fA4qP6L6HyVzkiOQQZRGg8CHc39cjcmOmyjZftKhefZB3fM0HMZOdOF9v1paOFxs+JG+p2b0fxwxJF7BFv3yXvpf25/sOBIb2WehZRInjs+2FghwAZbLj99fteb/lB1OiCBkJVM/QtW0UthtGbLuJ8OXAGHxzxLNV6BSP92FSNglU3uCbw2uQVLyhcxEJvz5+oXoHP51kB9SEhwmJbahBjGaxOpqk5gW1mrua5OiLLQcwgbND/eetBkcI4Ga3Ma+CZ4faTs74KDspSIJmc1K2fRt0OnGmF/rSM1w7eFYuYuigrQhdYU/ZQlC008QUL6HxQlLmKRW8N35O/+aRKL1qG7MnMoglqp3xaYrlaX1JYRtADCuwZiUia7YvhKL2DnlGrddThfcLYqLavqKXqVC/lTYErlVN2VKScnHG0AsgINKypVBNl0t69/jKYUsd+x4gPe1yWi/gRqqH0TBOdjWi41Bx0FNfzAZHz+J3Rf/T7OUNWibN5Sf1EqldT2ZJxeouzDVQ552VfEKUXqyQhQtBUFn4kskiy\u0000",
	      "level"=> "SL5",
	      "identifier"=> "CB7D05596E224460A6AF6B4E079A3254",
	      "iterations"=> 10000
	    }
		encryption_key = EncryptionKeyItem.new data
		encryption_key.unlock("master-password").should be_true
	end

	it "should not unlock if password is incorrect" do
	    data = {
	      "data"=> "U2FsdGVkX1/2nv06QLYyeKoNehrq2F3qgxobNWxPyxBWGdkpJIJxqiz9KHQtbiW2pTI1OqE3vdNLIGiclsWTx4kpke7Ww2sxt6B3gZvswruhy2ZQo0DtDzhwQA8IZMbCTvjtDkLwL8ORqwLMAzq9CFEa7ZHQ29j7Bq5zI/QfvTwMh9DLra5PojgJ1BNWagT2gdFV65JgKH68ZoKbsWJzzpYkI4osO1c5zwl3kwTNXd/09teTTV5zZfXA9ksjDwbpmsxz36w0rpPbElC0SYadJHOGZ/YttGBAp+XvMMWprDfkzd1dFVc89TIWRLUzi0zIO1sit4aoLfrPEwm0RKZAtNj8ZIXg98mBFsI3pHYMS0h0ureQ/SInwic6jNka/CYNp6PAApDvTmPI5oL7qipw2rGHjeDjJY3M8pOGJ0FT2nM6qgQKlPckNcRlRtmz02D7wLCiGIbc+yvVCHiDdpaS+WfZVf0qPcr/Ecur4bjJBuRFDcIsQgFbfXLuv9ecfXBYVgsNw79JPmNQKz39HlKF+2X3rXiQzS7WG2soHdnVK4VSZpnIGMZip1AyijtxWMRScbdt2woOTyRv3cs5asXd0ZMD+iR9h4t1V/Fl4RtwJtfBMTq/fhwv9YoFlz6FJfUd7P13CfGi0CFaU9DrmoNKu8Q3lwr03t575BHu2IkhWkSHll79H/btERZnr3IJ2rLZWdn3bh0PLnisBQ2qDQWP9DIhrHjRbW5tp1ffqXnBnndGIBi20hfJyTzimXEJZ3pIt5YfUlos09AboAqYX9DI95bEvwtxmMNNGW2/Wc5iZX9+rdQXL10wfItlbV+XUsK8RIzngGKAMuNZMcl9BQ6BU/5ravoZQgaMJZHC0cx+yJHPI1ciJr9pCss/Sqmu9agO5V0oiXSeIBZUp/X7aOat/LJBJydd0b+YFQ3Pjk9cyTYQbNQUkOZkGsUF/ykwmCI10fW9aRZ5GBZSlPqQYpK1HPYhjAELpLXsyNZ5HwEoOFVLOcLjKc4sZ6Kl0GMgz2FLM1i76lRaOToZUaRqeq8QTqL4XTvKMZhVzWF9gEtFAXtYSAoHa5mSTgpZmRtKSmyh89vjcQPEa2m+aAqf2Idx3gHgaGHw+xqoLaaBvMWBlM5mlWg1z9VNu+6VqMSS83gTm2KP5sShouHegr3PjRvDA/cROdv5WvimzJPj8p+L/UDkfeMfGcbZKc9/rsB1LYwtyLU/4ADTF3I4v963QeEh017MwFuXwmmoYv7A7GRSJ4kLETRLvhWiFjH1xohJPN6nrn/dB35SgnRNIi1XFNNb2lRKzoc3nazAJ6t7MY6H///oE2ml8WtoIxRkU14vtTZvUOdb33Pr2zNPmuANd7/xlf5WOQQwWwWbtbAovJ2SJxM9p+c7FnfMl9YR2nm10raZ\u0000",
	      "validation"=> "U2FsdGVkX1/n/cdXWqhEbKWtiJ7f9R74xSQVjqH9rAC5DvIDr8JzM0hKWuScsCaAxjmCR2nMYmkFK9OsMWSCNUFFBY+E7uXVC6amcUJIMt37jU5gvJ35zKOIoV8Wy3DxD/XXOZPL6zomgUIvqj66u8juamiuAK7uV2J+cNC/54rVuwHai7Ip/YWEyXYl/BgxmHatDUv8RExT617tWLKRObmXnEcyQq6+PttkvwDdiSsfyrzduEvVHvgFB4JJ8fNnpkgl4SQipvDymxMoBxW4IpP4ACa/qzuDwScKggJCk4bo9liSh7zW4gwV40dDdDNCwVZNhQ14AxyLlkDEhzgFq77RHnJafiekU0qm5rLn1O5U/tgjUpbbTqENv+gQBKLNb0+NHxsQ/U4PNibWHKxtS7hCjrdYUGsBGtxfdVDD8yMGH8i6dz2VnHx/l+M+PhKWBIxTWvGYCLewZg24VW0/X5IOSItbFtHu6QWqS0xUOtS9wqieBwWi2sl+nJ8E4DJryzpav68l9ejH+3tGKVZWYkzoNV+Z8hawctio/I4cfwttdAW0eRdTsrFT50dEFmfBmnW9wWYedkZpTm7liyW+5f0e5672TloEz3aMTdHW7X0TVC/gWxIQqTHXxGAp78AgwZZXcEfvChl3mLCqlhdZH+P90LyGybnaCEW3hhgsjd7Kh7e35e0A/cUcBD5nxDk7//6mltgVn0roZgCZnDnbg/u02/V3IiMeFp8Bs3AtPdyV04ZKdJrxRzObl/1URnfadwgvR42b2jRA2LqxW2TORFEwsX/TVmjxmPVvPUXsXvetd9CYO1pe1Q0nBisno1IrYtIrAT1eIsGIlLnBUhg4WEGmGTJDbWLE//fA4qP6L6HyVzkiOQQZRGg8CHc39cjcmOmyjZftKhefZB3fM0HMZOdOF9v1paOFxs+JG+p2b0fxwxJF7BFv3yXvpf25/sOBIb2WehZRInjs+2FghwAZbLj99fteb/lB1OiCBkJVM/QtW0UthtGbLuJ8OXAGHxzxLNV6BSP92FSNglU3uCbw2uQVLyhcxEJvz5+oXoHP51kB9SEhwmJbahBjGaxOpqk5gW1mrua5OiLLQcwgbND/eetBkcI4Ga3Ma+CZ4faTs74KDspSIJmc1K2fRt0OnGmF/rSM1w7eFYuYuigrQhdYU/ZQlC008QUL6HxQlLmKRW8N35O/+aRKL1qG7MnMoglqp3xaYrlaX1JYRtADCuwZiUia7YvhKL2DnlGrddThfcLYqLavqKXqVC/lTYErlVN2VKScnHG0AsgINKypVBNl0t69/jKYUsd+x4gPe1yWi/gRqqH0TBOdjWi41Bx0FNfzAZHz+J3Rf/T7OUNWibN5Sf1EqldT2ZJxeouzDVQ552VfEKUXqyQhQtBUFn4kskiy\u0000",
	      "level"=> "SL5",
	      "identifier"=> "CB7D05596E224460A6AF6B4E079A3254",
	      "iterations"=> 10000
	    }
		encryption_key = EncryptionKeyItem.new data
		encryption_key.unlock("dummy").should be_false
	end

	it "should not unlock for incorrect iterations" do
	    data = {
	      "data"=> "U2FsdGVkX1/2nv06QLYyeKoNehrq2F3qgxobNWxPyxBWGdkpJIJxqiz9KHQtbiW2pTI1OqE3vdNLIGiclsWTx4kpke7Ww2sxt6B3gZvswruhy2ZQo0DtDzhwQA8IZMbCTvjtDkLwL8ORqwLMAzq9CFEa7ZHQ29j7Bq5zI/QfvTwMh9DLra5PojgJ1BNWagT2gdFV65JgKH68ZoKbsWJzzpYkI4osO1c5zwl3kwTNXd/09teTTV5zZfXA9ksjDwbpmsxz36w0rpPbElC0SYadJHOGZ/YttGBAp+XvMMWprDfkzd1dFVc89TIWRLUzi0zIO1sit4aoLfrPEwm0RKZAtNj8ZIXg98mBFsI3pHYMS0h0ureQ/SInwic6jNka/CYNp6PAApDvTmPI5oL7qipw2rGHjeDjJY3M8pOGJ0FT2nM6qgQKlPckNcRlRtmz02D7wLCiGIbc+yvVCHiDdpaS+WfZVf0qPcr/Ecur4bjJBuRFDcIsQgFbfXLuv9ecfXBYVgsNw79JPmNQKz39HlKF+2X3rXiQzS7WG2soHdnVK4VSZpnIGMZip1AyijtxWMRScbdt2woOTyRv3cs5asXd0ZMD+iR9h4t1V/Fl4RtwJtfBMTq/fhwv9YoFlz6FJfUd7P13CfGi0CFaU9DrmoNKu8Q3lwr03t575BHu2IkhWkSHll79H/btERZnr3IJ2rLZWdn3bh0PLnisBQ2qDQWP9DIhrHjRbW5tp1ffqXnBnndGIBi20hfJyTzimXEJZ3pIt5YfUlos09AboAqYX9DI95bEvwtxmMNNGW2/Wc5iZX9+rdQXL10wfItlbV+XUsK8RIzngGKAMuNZMcl9BQ6BU/5ravoZQgaMJZHC0cx+yJHPI1ciJr9pCss/Sqmu9agO5V0oiXSeIBZUp/X7aOat/LJBJydd0b+YFQ3Pjk9cyTYQbNQUkOZkGsUF/ykwmCI10fW9aRZ5GBZSlPqQYpK1HPYhjAELpLXsyNZ5HwEoOFVLOcLjKc4sZ6Kl0GMgz2FLM1i76lRaOToZUaRqeq8QTqL4XTvKMZhVzWF9gEtFAXtYSAoHa5mSTgpZmRtKSmyh89vjcQPEa2m+aAqf2Idx3gHgaGHw+xqoLaaBvMWBlM5mlWg1z9VNu+6VqMSS83gTm2KP5sShouHegr3PjRvDA/cROdv5WvimzJPj8p+L/UDkfeMfGcbZKc9/rsB1LYwtyLU/4ADTF3I4v963QeEh017MwFuXwmmoYv7A7GRSJ4kLETRLvhWiFjH1xohJPN6nrn/dB35SgnRNIi1XFNNb2lRKzoc3nazAJ6t7MY6H///oE2ml8WtoIxRkU14vtTZvUOdb33Pr2zNPmuANd7/xlf5WOQQwWwWbtbAovJ2SJxM9p+c7FnfMl9YR2nm10raZ\u0000",
	      "validation"=> "U2FsdGVkX1/n/cdXWqhEbKWtiJ7f9R74xSQVjqH9rAC5DvIDr8JzM0hKWuScsCaAxjmCR2nMYmkFK9OsMWSCNUFFBY+E7uXVC6amcUJIMt37jU5gvJ35zKOIoV8Wy3DxD/XXOZPL6zomgUIvqj66u8juamiuAK7uV2J+cNC/54rVuwHai7Ip/YWEyXYl/BgxmHatDUv8RExT617tWLKRObmXnEcyQq6+PttkvwDdiSsfyrzduEvVHvgFB4JJ8fNnpkgl4SQipvDymxMoBxW4IpP4ACa/qzuDwScKggJCk4bo9liSh7zW4gwV40dDdDNCwVZNhQ14AxyLlkDEhzgFq77RHnJafiekU0qm5rLn1O5U/tgjUpbbTqENv+gQBKLNb0+NHxsQ/U4PNibWHKxtS7hCjrdYUGsBGtxfdVDD8yMGH8i6dz2VnHx/l+M+PhKWBIxTWvGYCLewZg24VW0/X5IOSItbFtHu6QWqS0xUOtS9wqieBwWi2sl+nJ8E4DJryzpav68l9ejH+3tGKVZWYkzoNV+Z8hawctio/I4cfwttdAW0eRdTsrFT50dEFmfBmnW9wWYedkZpTm7liyW+5f0e5672TloEz3aMTdHW7X0TVC/gWxIQqTHXxGAp78AgwZZXcEfvChl3mLCqlhdZH+P90LyGybnaCEW3hhgsjd7Kh7e35e0A/cUcBD5nxDk7//6mltgVn0roZgCZnDnbg/u02/V3IiMeFp8Bs3AtPdyV04ZKdJrxRzObl/1URnfadwgvR42b2jRA2LqxW2TORFEwsX/TVmjxmPVvPUXsXvetd9CYO1pe1Q0nBisno1IrYtIrAT1eIsGIlLnBUhg4WEGmGTJDbWLE//fA4qP6L6HyVzkiOQQZRGg8CHc39cjcmOmyjZftKhefZB3fM0HMZOdOF9v1paOFxs+JG+p2b0fxwxJF7BFv3yXvpf25/sOBIb2WehZRInjs+2FghwAZbLj99fteb/lB1OiCBkJVM/QtW0UthtGbLuJ8OXAGHxzxLNV6BSP92FSNglU3uCbw2uQVLyhcxEJvz5+oXoHP51kB9SEhwmJbahBjGaxOpqk5gW1mrua5OiLLQcwgbND/eetBkcI4Ga3Ma+CZ4faTs74KDspSIJmc1K2fRt0OnGmF/rSM1w7eFYuYuigrQhdYU/ZQlC008QUL6HxQlLmKRW8N35O/+aRKL1qG7MnMoglqp3xaYrlaX1JYRtADCuwZiUia7YvhKL2DnlGrddThfcLYqLavqKXqVC/lTYErlVN2VKScnHG0AsgINKypVBNl0t69/jKYUsd+x4gPe1yWi/gRqqH0TBOdjWi41Bx0FNfzAZHz+J3Rf/T7OUNWibN5Sf1EqldT2ZJxeouzDVQ552VfEKUXqyQhQtBUFn4kskiy\u0000",
	      "level"=> "SL5",
	      "identifier"=> "CB7D05596E224460A6AF6B4E079A3254",
	      "iterations"=> 2000
	    }
		encryption_key = EncryptionKeyItem.new data
		encryption_key.unlock("master-password").should be_false
	end

end