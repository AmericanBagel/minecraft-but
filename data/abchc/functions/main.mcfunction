# Modifiers
function abchc:modifiers/directory

# Global timer for a few modifiers
execute if score.global abch.timer matches 1200.. run scoreboard players reset.global abch.timer
                                                                                                             

#                                                                         ``..-~^^^~-..``                                                                        
#                                                               `-|;?zY8yFXgXXXXXXXXXXXXXbG6sI7}!~`                                                              
#                                                         `-!lsywXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXG5i\^`                                                        
#                                                     .!inFXXXXXXXXXXXXXXXXXXXXXgXXXXXXXXXXXXXXXXXXXXXXXw6t\-                                                    
#                                                 `!rZXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXGu}.                                                
#                                              .*LbXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXVl|`                                            
#                                           .+xXXXXXXXXXXXXXXXXXgXXXXXXXggXXXXXXXXXgXXXXXXXXXXXXXXXXXggXXXXXXXXXXXXXdj|       `.~,|!!:!!!,~.`                    
#                                        `!0wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXgXXXXXXy1`  `+yXXXXXXXXXXXXXw8j}^                
#                                      .lwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX5=\;[YFXXXXXXXXXx:   ,0XXXXXXXXXXXXXXXXwn\             
#                                    ,3wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXFr!!\i6XXXXXXXXXXXXXXXXXXXr `}l=,`\SXXXXXXXXXh+`  ,sXXXXXXXXXXXXXXXXX4|           
#                                  ,0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXV- :Iz;.^uXXXXXXXXXXXXXXXXb~ YMMMNX_`7wXXXXXXXXXy=`  !6XXXXXXXXXXXXXXXXb\          
#                                ~YXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX; !MMMMBr`!yXXXXXXXXXXXXXXF. xMMMMMN= !FXXXXXXXXXXh\   =FXXXXXXXXXXXbbXXF~         
#                              `twXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXw~ sMMMMMMV -ZXXXXXXXXXXXXXX| +MMMMMMN: !FXXXXXXXXXXX5^  .sXXXXXXXXbFFGFXX1         
#                             \yXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXb. YMMMMMMMu -PXXXXXXXXXXXXX? `qMMMMMMK` }XXXXXXXXXXXXb1`  =FXXXwbFFdyyyXX0         
#                           .YXXwwwwXXXXXgXXXXXXXgXXXXggXXXXXXXXXXXXXXXXXXXXXw~ ;MMMMMMMN^ !wXXXXXXgXXXXX6` ,BMMMMMM:  vXXXXXXXXXXXXX$~  ,ZwbFdGyPV4VXXs         
#                          !yXXbbbwwXXXXXXXXXXXXXgXXXXXXXXXXXXXXXXXXXXXXXXXXXX: `NMMMMMMMr  lXXXXXXXXXXXXX!  ,HMMMMN!  .yXXXXXXXXgXXXXF;  `YGyyhV4SShXXt         
#                         ]wXwFFbbwwwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXl  iNMMMMMMY  `hXXXXXXXXXXXX0    *xF6;    +XXXXXXggXXXXXXXl   r44SSSSSGXX:         
#                        IXXbFFFFbwwwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX4`  }AMMMMB,   =XXXXXXXXXXXXw_            `XXXXXXXXXXXXXXXXu`  YSSSSSZbXk`         
#                      `xXXFdFFFFbbwwwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX:    .!!~     `PXXXXXXXXXXXXL             2XXXXXXXXXXXXXXXX8` `vSSSZdXw|          
#                     `nXXFGddFFFFFbwwwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXs              tXXXXXXXXXXXXX!            ;XXXXXXXXXXXXXXXXXx` `YSSGXX1           
#                     vXXFGkv=:!rbbbwwwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX|             !XXXXXXXXXXXXX8`         ` .FXXXXXXXXXXXXXXXXXY  ~5yXXY            
#                    >XGj:.   `!nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXY             .FXXXXXXXXXXXXX[  .````..-` 6XXXXXXXXXXXXXXXXXX,  \wXn`            
#                    +^   `,=YFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`  `      ``  8XXXXXXXXXXXXXF^ `~~~~~~~` YXXXXXXFGh4kkS4yFXX6`  Ys`             
#                      -+sFXXXXXXggXXXXXXXXXXXXXXXXXXXXXXXXXXXgXXXXXXXgXXXXXXXXXX1  ...`..--.  YXXggXXXXXXXXXX6` .,,,,_|. YXXXwy655555555554XXi  ``              
#                   `[6XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXb| `^^~~^^,~  YXXXXXXXXXXXXXXXL` ~!!!!!``4XXb65555555555558bXF~                 
#                 ^tFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwwXXXXXXXXXXh. .||||!!~ `kXXXXXXXXXXXXXXXX8~ `|\:~ *XXX4555555555555$GwXgt                 
#               |sXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXbyV68exxe86ZPdwXXXXX6. .!!!:!` !wXXXXXXXXXXXXXXXXXbl~`  `!bXXXGe555555558SybwbXXd.                
#             :4XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXd$555555555555555SFXXXXF]` `.`  !GXXXXXXXXXXXXXXXe8XXXXXwwXXXXXXXXFdGGGdFbwwwbbbbXX=                
#           .0XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwXXXXXXXXXXX655555555555555555$wXXXXXyl:|!=nXXXXbr1VXXXXXXXd> `GXXXXXXXXXXXXXXXXXXXXwwwwbbbFFXXs                
#          :GXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwwXXXXXXXXgy855555555555555554XXXXXXXXXXXXXXXXXG!  ,\=]=\,` ^LXXXXXXXXXXXXXXXXXXXwwwwbbFFFFFwXG`               
#         ?wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwbbwwwXXXXXXXXwG46e555555555$4dXXXXXXXXXXXXXXXXXXXXyv;|^~^_\l6XXXXXXXXXXXXXXXXXXXwwwwbbFFFFFddbXw^               
#        lXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwbFFFFXXXXXXXXXXXXXXwFFdGGGdFbXXgXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwbbbFFFFFFdddFXX|               
#       =XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwbFFFddXXXXXXXXXXXXgXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwwbbbbFFFFFdddGGFXg!               
#      _bXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwbFFFdGyGwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwwbbbbbFFFFddddGGyyFXX!               
#      nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwbbbFFdGGyyPwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwwwbbbFbFFFFFddddGGyyyyFXX,               
#     |XXXbwwXXXXXXXXXXXXXXXXXXXXXXXwwwbbFFFdGGyyhVVwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwwbh66GbbFFFFFFFdddGGGGyyyyPFXF.               
#     iXXbFFbbwbwwwwXXXXXXXXXwwwwwwbbbFFFddGyyyhV4Z4wXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXwwZ?,.````;>:>t8ddddGGGyyyyPPhPbX8                
#     uXXFddFFFFFbbbbbbbbbbbbFbFFFFFFddGGyyyhVVZSSSVwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXbY+|^|:?5i^^[n4SkSr :u=_``=4GyyyyPPPhhVyXX?                
#     rXXFyyGGGddddFFFFFFFFFFFddddGGGyyyyhVV4ZSSSSSyXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXy_ |7zi*. -0yy4SSSSz zyyyx: .vyPPPhhhVVVdXw,                
#     !XXbPPPyyyyyGGGGGGGGGGGGyyyyyyPPhVV4ZSSSSSSS4GbXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXb5z| ;yyy4Ss`-PyVSkk6i`]yyyyyPI` ]VhhVVV444wX0                 
#      zXXFV4VVVVhhPPPPPPPPPPPhhVVVV4ZZSSSSSSSSSSS4hGFbXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXdl_.`~,``1yyS8\ ;yPSSku,.lyyyyyyyZ3``0V444ZZShXX!                 
#       lXXbhSSSZZZ4444444V44ZZZZSSSSSSSSSSSSSSSSZ44VhyGFwXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXb6l..?5yyyv .6Z5_ =PyVu]_`74yyyyyyy4Su`.5ZZZSSSSFXY                  
#        |8XXdVSSSSSSSSSSSSSSkSSSSSSSSSSSSSSSSSSSSZZZ444VydFbwXXXXXXXXXXXXXXXXXXXXXXXXXXXGr!.-. :Vyyyyv .86| iyyyyyY`.kyyyyyyhZk?`|sSSSSSSSyXF~                  
#          !0wXFyVZSkSSSSSSSSSSSSSSSSSSSSSSSSe0Y8SSSSSSSSS4VhyyddFbbwwXXXXXXXXXXXXXXXXXF].,le4k= 1hVZl` rSl !Pyyys=.``0yh44ZSSk]`=kSkSSSSkVwX+                   
#            .\uyXbFyhVSSSSkSSSSSSSSSSS6L1;,`  `iSSSSSSSSSSSSSSZ4VVPyyGdFFFbbbbwwwXXXXy_.vyyyy4l =Sk+ _3S6^ 3yV4ZSk, |kyVZ6n03? +kSSSSSSS4FXV                    
#                .|+r2kydddGyyV$Lur=\_-`    .|=2SSSSSSSSSSSSSSSSkkSSSSZ44VVVhhPPyyyyy8,.nyyyyV0..LZu jSSSv !ZZ2z+\!`^Zyyyh$03Y^.eSSSSSSSZFXd,                    
#                                   ``~!*j5SkSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS6|.6yPPVe!`:Syk,`3=!|_}4yyyyyyy3.lyyyV5vj?`rSSSSSSS4FXP~                     
#                        !=++}+=itun6SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS5vnr ?VZSSk: +yyu;!Y17Ieyyyyyyyyyyy0+0yyyVZZ? uSSSSSSVbXV~                      
#                        `YXXdZSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS5|` .ZV4ZZv ~Zyy6VyyyyyyyyyyyyyyyyyyyyyyyyPh+ =SSSSShwX8.                       
#                          lXXFVSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSY` lyyys*_!nyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy] \kSSSyXXY`                        
#                           :GXwyZSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSk8!`.vyyyykxhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy; +SSVFXb[                          
#                            .2XXFVSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSY~`7VyyyyyyyyyyyyyyyyyyyyyyyyyPPyyyyyyyyyyyyyv .LSywX6,                           
#                              }GXwyZSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSkS4Vu``5yyyyyyyyyyyyyyyyyyyyyyyyyh4SSZVyyyyyyyyyyY``uVFXb7`                            
#                               `zwXbyZSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSZVPyu``3yyyyyyyyyyyyyyyyyyyyPVVVZSSSSSSSZVPyyyyyyl`.udXXY-                              
#                                 ^0XXbyZSSSSSSSSSSSSSSSSSSSSSSSSSSSkSZVPyyyn``YyyyyyyyyyyyyyyyyyPV4ZSSSSSSSSSSSSSkSS4hyy;`:ZwXe|                                
#                                   ,0XXbyZSSSSSSSSSSSSSSSSSSSSSSSkSVhyyyyyy: lyyyyyyyyyyyyyyyPV4SSSSSSSSSSSkSkSSSSSkkSx\`vwXe!                                  
#                                     `+VXwdhSSSSSSSSSSSSSSSSSkSSZVyyyyyyyy[ =yyyyyyyyyyyyyyhVZSSkkSSSSSSSSSSSZSSSkS6t|`\bd1.                                    
#                                        >xXXbGhSSSSSSkSSSSSSSkZVyyyyyyyyyu`:yyyyyyyyyyyyyh4SSSSSSSSSSSSSSSSSZVZZ8r!`.>Zy\`                                      
#                                          ~?4XXFGPZSSIiSkSSSSVyyyyyyyyyyy||4yyyyyyyyyyyh4SSSSSSSSSSSSSkSSSSZZL]_``|vyv|                                         
#                                             ~+YFXwFG]`YSSSShyyyyyyyyyyyVlkyyyyyyyyyyP4SSSSSSSSSZZ4VVhhhVni!. `!z6v!`     ,;`                                   
#                                                `^+3G? }SSS4yyyyyyyyyyyyyyyyyyyyyyyyVZSSSSSSZVPyyyyykv=!. `|inL?,      ^lx2.                                    
#                                                     ` !SSZPyyyyyyyyyyyyyyyyyyyyyyyVSSSSSSVhyyyy6t\^``,\1ss7|`     .\txSk0.                                     
#                                                       \SkVyyyyyhyyyyyyyyyyyyyyyyy4SSSS4hyyyyn=,`  `v5t\~`     .!7skSSSSY.                                      
#                                                       ]kSPyyyyVPyyyyyyyyyyyyyyyyZSS4VPyyyZi!|_`   `      `~!7skSSSSSSSn`                                       
#                                                       IS4yyyy4hyyyyyyyyyyyyyyyyZS4PyyyyyVjI0!      `^!=jL6SkSSSSSSSSSL~                                        
#                                                      `5kVyyyZVyyyyyyyyyyyyyyyyVVyyyyyyyyyn!  _]luxkkSSSSSSSSSSSSSSSSI`                                         
#                                                      !SSVyy44yyyyyyyyyyyyyyyyyyyyyyyyyy5:  ~tkSSSS82SSSSSSSSSSSSSSe;                                           
#                                                      rSkVyPSPyyyyyyyyyyyyyyyyyyyyyyyyP]` .l6SSkSkv18SSSSSSSSSSSSS3.                                            
#                                                     `skShy44yyyyyyyyyyyyyyyyyyyyyyyy5, `=8SSkSSL+zkSSSSSSSSSSSS8+`                                             
#                                                     .xSSPPZhyyyyyyyyyyyyyyyyyyyyyyV]` !LSSSSSkr,vSkSSSSSSSSSSSu~                                               
#                                                     `nSShVZyyyyyyyyyyyyyyyyyyyyyy2~ .zkkSSSSS1.IssSSSSSSkkSuY?                                                 
#                                                      +SSVShyyyyyyyyyyyyyyyyyyyyy7` *8SkSSSSSu`!:=8ZS66SkS0!*]                                                  
#                                                       rSS4yyyyyyyyyyyyyyyyyyyyh| ~vZSSSSSSS6^ `=6SSzrnu67.*u`                                                  
#                                                        =6VyyyyyyyyyyyyyyyyyyyY^`?8eSSSSSSSSv |nS55i|z\3=`iS!                                                   
#                                                         .7kyyyyyyyyyyyyyyyn[^  i\:YSSSSSSSk[ Ik6!..Y|vv`?S6.                                                   
#                                                            ~!+ij3YuvIr?;,`      =kSSSSSSSSS+`YS8.*$u~nz`jS$.                                                   
#                                                                                 7SSSSSSSkkSz`vk8~vSn^0x.>Sk,                                                   
#                                                                                 !kSSSS=|\\;!`tS6^1S8^lk!~6S*                                                   
#                                                                                 `2SSSS?^[080.>SS:}kS}|6i`YSI                                                   
#                                                                                  !6SS4Sn1\:*^`Yk7!kS0.tL`+Sl                                                   
#                                                                                   ~l8SSSSSSk; _;\,$Sk!\3..!`                                                   
#                                                                                     `.^!:!|,.~=r;_i]?^,r!                                                      
#                                                                                           `=037=~;Y>*;.-                                                       
#                                                                                              ```  ``                              