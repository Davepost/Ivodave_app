require 'spec_helper'

      describe "followed by signout" do
             before { click_link "Sign out" }
             it { should have_link('Sign in') }
           end
    

