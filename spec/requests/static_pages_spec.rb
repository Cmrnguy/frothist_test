require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Frothist Test'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      expect(page).to have_content('Frothist Test')
    end
    
    it "should have the title 'Home'" do
          visit '/static_pages/home'
          expect(page).to have_title("The Frothist")
    end
    it "should not have a custom page title" do
          visit '/static_pages/home'
          expect(page).not_to have_title('| Home')
    end
  end
  
  describe "Help page" do

      it "should have the content 'Help'" do
        visit '/static_pages/help'
        expect(page).to have_content('Help')
      end
      
      it "should have the title 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_title("The Frothist | Help")
      end
  end
  
  describe "About page" do

      it "should have the content 'About Us'" do
         visit '/static_pages/about'
         expect(page).to have_content('About Us')
      end
      
      it "should have the title 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_title("The Frothist | About Us")
      end
  end
end
