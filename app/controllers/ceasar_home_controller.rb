class CeasarHomeController < ApplicationController
   CHARS = [*?A..?Z], [*?a..?z]                                                      # creates an array of all letter 
           
    def encrypt                                                                      #method to encrypt message given a key
         if params[:box1].blank?                                                      # errors when app first is loaded without it, if text firld is empty...
            message=""
         else message = params[:box1]                                                 # retrives the text inputed in the view
         end
         shift = params[:key].to_i                                                    # retrives the key value inputed in the view
         message = message.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join    # .tr will transate the character using the next two arguments i.e map and rotatejoins the character back into a string
         @message= message                                                            # creates variable that is able to be read by the view
    end
            
    def decrypt                                                                      # method to decrypt message given a key
        message1 = params[:box1]                                                      # retrives the text inputed in the view
        shift = params[:key].to_i                                                     # retrives the key value inputed in the view
        shift = -shift                                                                # the shift value inputed is transformed into its equivalent minus number
        message1 = message1.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join   #.tr will transate the character using the next two arguments i.e map and rotatejoins the character back into a string
        @message1= message1                                                           # creates variable that is able to be read by the view
    end
    
    def cryptanalyse                                                                 # method to output all 26 possible messages of encryted message
        mainmessage = params[:box1]                                                   # retrives the text inputed in the view
        shift = 1.to_i
                                                                                      # the foolowing code reats to give the output of each message with the key increase by 1 each time
        m1 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift }.join      #.tr will transate the character using the next two arguments i.e map and rotatejoins the character back into a string
        m2 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+1 }.join
        m3 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+2 }.join
        m4 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+3 }.join
        m5 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+4 }.join
        m6 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+5 }.join
        m7 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+6 }.join
        m8 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+7 }.join
        m9 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+8 }.join
        m10 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+9 }.join
        m11 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+10 }.join
        m12 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+11 }.join
        m13 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+12 }.join
        m14 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+13 }.join
        m15 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+14 }.join
        m16 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+15 }.join
        m17 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+16 }.join
        m18 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+17 }.join
        m19 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+18 }.join
        m20 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+19 }.join
        m21 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+20 }.join
        m22 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+21 }.join
        m23 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+22 }.join
        m24 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+23 }.join
        m25 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+24 }.join
        m26 = mainmessage.tr CHARS.join, CHARS.map{ |ary| ary.rotate shift+25 }.join    
                                                                                                    # the next line sends the all the a puts above to the view
        @message2 =" 1) #{m1}" "\n" " 2) #{m2}""\n" " 3) #{m3}" "\n" " 4) #{m4}""\n"" 5) #{m5}" "\n" " 6) #{m6}""\n"" 7) #{m7}" "\n" " 8) #{m8}""\n" " 9) #{m9}" "\n" " 10) #{m10}" "\n"" 11) #{m11}" "\n" " 12) #{m12}""\n"" 13) #{m13}" "\n" " 14) #{m14}""\n"" 15) #{m15}" "\n" " 16) #{m16}""\n" " 17) #{m17}" "\n" " 18) #{m18}" "\n" " 19) #{m19}" "\n" " 20) #{m20}""\n" " 21) #{m21}" "\n" " 22) #{m22}""\n"" 23) #{m23}" "\n" " 24) #{m24}" "\n" " 25) #{m25}" "\n" " 26) #{m26}"    
    end
  
       
        
end
     
    
