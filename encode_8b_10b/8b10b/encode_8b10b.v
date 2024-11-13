module encode (
       input [8:0]   datain,
       input         dispin, // 0 = 负位移; 1 = 正位移
       output [9:0]  dataout, 
       output        dispout
) ;
  wire ai = datain[0] ;
  wire bi = datain[1] ;
  wire ci = datain[2] ;
  wire di = datain[3] ;
  wire ei = datain[4] ;
  wire fi = datain[5] ;
  wire gi = datain[6] ;
  wire hi = datain[7] ;
  wire ki = datain[8] ;


  wire l22 = (ai & bi & !ci & !di) | (ci & di & !ai & !bi) | ( (ai^bi) & (ci^di)) ; // l22 逻辑条件
  wire l40 = ai & bi & ci & di ; // l40 逻辑条件
  wire l04 = !ai & !bi & !ci & !di ; // l04 逻辑条件
  wire l13 = ( (ai ^ bi) & !ci & !di) | ( (ci ^ di) & !ai & !bi) ; // l13 逻辑条件
  wire l31 = ( (ai ^ bi) & ci & di) | ( (ci ^ di) & ai & bi) ; // l31 逻辑条件

  /*----------------- 5B/6B 编码 --------------------*/

  wire ao = ai ; // 输出 a
  wire bo = (bi & !l40) | l04 ; // 输出 b
  wire co = l04 | ci | (ei & di & !ci & !bi & !ai) ; // 输出 c
  wire do = di & ! (ai & bi & ci) ; // 输出 d
  wire eo = (ei | l13) & ! (ei & di & !ci & !bi & !ai) ; // 输出 e
  wire io = (l22 & !ei) |
        (ei & !di & !ci & !(ai&bi)) |  // D16, D17, D18
        (ei & l40) |
        (ki & ei & di & ci & !bi & !ai) | // K.28
        (ei & !di & ci & !bi & !ai) ; // 输出 i

  // pds16 表示假设 d-1 为 + 来获得编码值的情况
  wire pd1s6 = (ei & di & !ci & !bi & !ai) | (!ei & !l22 & !l31) ;
  // nds16 表示假设 d-1 为 - 来获得编码值的情况
  wire nd1s6 = ki | (ei & !l22 & !l13) | (!ei & !di & ci & bi & ai) ;

  // ndos6 是 pds16 情况，其中 d-1 为 + 产生负位移输出
  wire ndos6 = pd1s6 ;
  // pdos6 是 nds16 情况，其中 d-1 为 - 产生正位移输出
  wire pdos6 = ki | (ei & !l22 & !l13) ;

  // 某些 Dx.7 和所有 Kx.7 情况导致运行长度为 5，除非使用替代编码（称为 Dx.A7，正常为 Dx.P7）
  // 特别是 D11, D13, D14, D17, D18, D19.
  wire alt7 = fi & gi & hi & (ki | (dispin ? (!ei & di & l31) : (ei & !di & l13))) ;
  

  /*-----------------------------3B/4B 编码-----------------------------*/
  wire fo = fi & ! alt7 ; // 输出 f
  wire go = gi | (!fi & !gi & !hi) ; // 输出 g
  wire ho = hi ; // 输出 h
  wire jo = (!hi & (gi ^ fi)) | alt7 ; // 输出 j

  // nd1s4 是假设 d-1 为 - 来获得编码值的情况
  wire nd1s4 = fi & gi ;
  // pd1s4 是假设 d-1 为 + 来获得编码值的情况
  wire pd1s4 = (!fi & !gi) | (ki & ( fi ^ gi)) ;

  // ndos4 是 pd1s4 情况，其中 d-1 为 + 产生负位移输出
  wire ndos4 = (!fi & !gi) ;
  // pdos4 是 nd1s4 情况，其中 d-1 为 - 产生正位移输出
  wire pdos4 = fi & gi & hi ;

  // 只有合法的 K 代码是 K28.0->.7, K23/27/29/30.7
  //    K28.0->7 是 ei=di=ci=1, bi=ai=0
  //    K23 是 10111
  //    K27 是 11011
  //    K29 是 11101
  //    K30 是 11110 - 所以 K23/27/29/30 是 ei & l31
  wire illegalk = ki & 
          (ai | bi | !ci | !di | !ei) & // 不是 K28.0->7
          (!fi | !gi | !hi | !ei | !l31) ; // 不是 K23/27/29/30.7

  // 现在确定是否需要进行补码运算
  // 如果前一个位移为 - 且 pd1s6 被设置，或 + 且 nd1s6 被设置则补码
  wire compls6 = (pd1s6 & !dispin) | (nd1s6 & dispin) ;

  // 5B/6B 的位移输出是 disp in 与 pdso6 和 ndso6 的异或
  // pds16 表示假设 d-1 为 + 来获得编码值的情况
  // ndos6 是 d-1 为 + 产生负位移输出的情况
  // nds16 表示假设 d-1 为 - 来获得编码值的情况
  // pdos6 是 d-1 为 - 产生正位移输出的情况
  // 在所有 ndis16 情况下，位移翻转，并且所有但一个 nds16 情况

  wire disp6 = dispin ^ (ndos6 | pdos6) ;

  wire compls4 = (pd1s4 & !disp6) | (nd1s4 & disp6) ;
  assign dispout = disp6 ^ (ndos4 | pdos4) ; // 输出位移

  assign dataout = {(jo ^ compls4), (ho ^ compls4),
            (go ^ compls4), (fo ^ compls4),
            (io ^ compls6), (eo ^ compls6),
            (do ^ compls6), (co ^ compls6),
            (bo ^ compls6), (ao ^ compls6)} ; // 输出数据

endmodule
