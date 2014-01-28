require_relative "../lib/grammys"
require "spec_helper"

describe Grammy do 
  let(:grammy)  {Grammy.new("1959", "Album of the Year", "Henry Mancini")}

  describe "an instance" do 
    it "has a year" do 
      expect(grammy.year).to eq("1959")
    end

    it "has a category" do 
      expect(grammy.category).to eq("Album of the Year")
    end

    it "has a winner" do 
      expect(grammy.winner).to eq("Henry Mancini")
    end

    describe to_s do 
      it "returns a string with all the grammy information" do 
        expect(grammy.to_s).to eq("Year: 1959, Category: Album of the Year, Winner: Henry Mancini")
      end
    end

    describe  "::clear" do 
      it "removes all the GRAMMYs from the listing" do 
        g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
        Grammy.clear
        expect(Grammy.all.count).to eq(0)
      end
    end

      describe "::all" do 
        it "returns all members of the GRAMMYs array" do 
          Grammy.clear
          g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
          g2 = Grammy.new("2013", "Album of the Year", "Daft Punk")
          expect(Grammy.all.count).to eq(2)
        end
      end

      describe "::delete_grammy" do 
        it "lists each Grammy with the index" do 
          Grammy.clear
          g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
          g2 = Grammy.new("2013", "Album of the Year", "Daft Punk")
          grammys = Grammy.all
          expect(grammys).to include(g1)
          expect(Grammy.all.count).to eq(2)
          Grammy.delete_grammy(0)
          expect(grammys.count).to eq(1)
        end
      end

        describe "::list_all_year" do 
          Grammy.clear
           g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
           g2 = Grammy.new("2013", "Album of the Year", "Daft Punk")
            it "lists all the GRAMMYs from the specifiec year" do 
              expect(Grammy.list_all_year("1959")).to eq("Year: 1959, Category: Album of the Year, Winner: Henry Mancini")
            end
        end

        describe "::list_all_category" do 
          Grammy.clear
          g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
          g2 = Grammy.new("2013", "Song of the Year", "Daft Punk")
          it "lists al the GRAMMYs for a specific category" do
            expect(Grammy.list_all_category("Song of the Year")).to eq("Year: 2013, Category: Song of the Year, Winner: Daft Punk")
          end


        end

      describe "::read_all" do 
        before do 
            Grammy.clear
            @g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
            @g2 = Grammy.new("2013", "Album of the Year", "Daft Punk")   
            Grammy.save_all("grammy_test_list.csv")
            Grammy.clear
          end
          it "reads all the GRAMMYs from our GRAMMYs CSV" do 
            Grammy.read_all("grammy_test_list.csv")
            expect(Grammy.all.count).to eq(2)
            end
          end

      describe "::save_all" do 
        before do
          Grammy.clear
            g1 = Grammy.new("1959", "Album of the Year", "Henry Mancini")
            g2 = Grammy.new("2013", "Album of the Year", "Daft Punk")
          end

          it "creates a CSV file if none exists" do 
            if File.exists? "grammy_test_list.csv"
              File.delete("grammy_test_list.csv")
            end
            Grammy.save_all("grammy_test_list.csv")
            expect(File.exists?"grammy_test_list.csv").to be_true
          end

          it "saves the Grammys in the CSV file" do 
            Grammy.save_all("grammy_test_list.csv")
            f = File.open("grammy_test_list.csv", "r")
            contents = f.read
            f.close

            contents_array = contents.split("\n")
            first_line = contents_array[0]
            expect(first_line).to eq("1959|Album of the Year|Henry Mancini")
          end
          end
        end
      end

