BEGIN { 
statenamemap[1] = 1;
statename[1] = "9";
statenamemap[2] = 2;
statename[2] = "9";
statenamemap[3] = 3;
statename[3] = "9";
statenamemap[6] = 1;
statename[6] = "9:";
statenamemap[7] = 2;
statename[7] = "9:";
statenamemap[8] = 3;
statename[8] = "9:";
statenamemap[11] = 1;
statename[11] = "9i";
statenamemap[12] = 2;
statename[12] = "9i";
statenamemap[13] = 3;
statename[13] = "9i";
statenamemap[16] = 1;
statename[16] = "9i:";
statenamemap[17] = 2;
statename[17] = "9i:";
statenamemap[18] = 3;
statename[18] = "9i:";
statenamemap[21] = 1;
statename[21] = "C";
statenamemap[22] = 2;
statename[22] = "C";
statenamemap[23] = 3;
statename[23] = "C";
statenamemap[26] = 1;
statename[26] = "D";
statenamemap[27] = 2;
statename[27] = "D";
statenamemap[28] = 3;
statename[28] = "D";
statenamemap[31] = 1;
statename[31] = "E";
statenamemap[32] = 2;
statename[32] = "E";
statenamemap[33] = 3;
statename[33] = "E";
statenamemap[36] = 1;
statename[36] = "E:";
statenamemap[37] = 2;
statename[37] = "E:";
statenamemap[38] = 3;
statename[38] = "E:";
statenamemap[41] = 1;
statename[41] = "G";
statenamemap[42] = 2;
statename[42] = "G";
statenamemap[43] = 3;
statename[43] = "G";
statenamemap[46] = 1;
statename[46] = "I";
statenamemap[47] = 2;
statename[47] = "I";
statenamemap[48] = 3;
statename[48] = "I";
statenamemap[51] = 1;
statename[51] = "I:";
statenamemap[52] = 2;
statename[52] = "I:";
statenamemap[53] = 3;
statename[53] = "I:";
statenamemap[56] = 1;
statename[56] = "J";
statenamemap[57] = 2;
statename[57] = "J";
statenamemap[58] = 3;
statename[58] = "J";
statenamemap[61] = 1;
statename[61] = "J_0";
statenamemap[62] = 2;
statename[62] = "J_0";
statenamemap[63] = 3;
statename[63] = "J_0";
statenamemap[66] = 1;
statename[66] = "N";
statenamemap[67] = 2;
statename[67] = "N";
statenamemap[68] = 3;
statename[68] = "N";
statenamemap[71] = 1;
statename[71] = "N_0";
statenamemap[72] = 2;
statename[72] = "N_0";
statenamemap[73] = 3;
statename[73] = "N_0";
statenamemap[76] = 1;
statename[76] = "O";
statenamemap[77] = 2;
statename[77] = "O";
statenamemap[78] = 3;
statename[78] = "O";
statenamemap[81] = 1;
statename[81] = "O:";
statenamemap[82] = 2;
statename[82] = "O:";
statenamemap[83] = 3;
statename[83] = "O:";
statenamemap[86] = 1;
statename[86] = "T";
statenamemap[87] = 2;
statename[87] = "T";
statenamemap[88] = 3;
statename[88] = "T";
statenamemap[91] = 1;
statename[91] = "Y";
statenamemap[92] = 2;
statename[92] = "Y";
statenamemap[93] = 3;
statename[93] = "Y";
statenamemap[96] = 1;
statename[96] = "Y:";
statenamemap[97] = 2;
statename[97] = "Y:";
statenamemap[98] = 3;
statename[98] = "Y:";
statenamemap[101] = 1;
statename[101] = "Yi";
statenamemap[102] = 2;
statename[102] = "Yi";
statenamemap[103] = 3;
statename[103] = "Yi";
statenamemap[106] = 1;
statename[106] = "a";
statenamemap[107] = 2;
statename[107] = "a";
statenamemap[108] = 3;
statename[108] = "a";
statenamemap[111] = 1;
statename[111] = "a:";
statenamemap[112] = 2;
statename[112] = "a:";
statenamemap[113] = 3;
statename[113] = "a:";
statenamemap[116] = 1;
statename[116] = "ai";
statenamemap[117] = 2;
statename[117] = "ai";
statenamemap[118] = 3;
statename[118] = "ai";
statenamemap[121] = 1;
statename[121] = "ai:";
statenamemap[122] = 2;
statename[122] = "ai:";
statenamemap[123] = 3;
statename[123] = "ai:";
statenamemap[126] = 1;
statename[126] = "au";
statenamemap[127] = 2;
statename[127] = "au";
statenamemap[128] = 3;
statename[128] = "au";
statenamemap[131] = 1;
statename[131] = "au:";
statenamemap[132] = 2;
statename[132] = "au:";
statenamemap[133] = 3;
statename[133] = "au:";
statenamemap[136] = 1;
statename[136] = "c";
statenamemap[137] = 2;
statename[137] = "c";
statenamemap[138] = 3;
statename[138] = "c";
statenamemap[141] = 1;
statename[141] = "c_h";
statenamemap[142] = 2;
statename[142] = "c_h";
statenamemap[143] = 3;
statename[143] = "c_h";
statenamemap[146] = 1;
statename[146] = "ei";
statenamemap[147] = 2;
statename[147] = "ei";
statenamemap[148] = 3;
statename[148] = "ei";
statenamemap[151] = 1;
statename[151] = "ei:";
statenamemap[152] = 2;
statename[152] = "ei:";
statenamemap[153] = 3;
statename[153] = "ei:";
statenamemap[156] = 1;
statename[156] = "f";
statenamemap[157] = 2;
statename[157] = "f";
statenamemap[158] = 3;
statename[158] = "f";
statenamemap[161] = 1;
statename[161] = "h";
statenamemap[162] = 2;
statename[162] = "h";
statenamemap[163] = 3;
statename[163] = "h";
statenamemap[166] = 1;
statename[166] = "i";
statenamemap[167] = 2;
statename[167] = "i";
statenamemap[168] = 3;
statename[168] = "i";
statenamemap[171] = 1;
statename[171] = "i:";
statenamemap[172] = 2;
statename[172] = "i:";
statenamemap[173] = 3;
statename[173] = "i:";
statenamemap[176] = 1;
statename[176] = "j";
statenamemap[177] = 2;
statename[177] = "j";
statenamemap[178] = 3;
statename[178] = "j";
statenamemap[181] = 1;
statename[181] = "k";
statenamemap[182] = 2;
statename[182] = "k";
statenamemap[183] = 3;
statename[183] = "k";
statenamemap[186] = 1;
statename[186] = "k_h";
statenamemap[187] = 2;
statename[187] = "k_h";
statenamemap[188] = 3;
statename[188] = "k_h";
statenamemap[191] = 1;
statename[191] = "l";
statenamemap[192] = 2;
statename[192] = "l";
statenamemap[193] = 3;
statename[193] = "l";
statenamemap[196] = 1;
statename[196] = "l_0";
statenamemap[197] = 2;
statename[197] = "l_0";
statenamemap[198] = 3;
statename[198] = "l_0";
statenamemap[201] = 1;
statename[201] = "m";
statenamemap[202] = 2;
statename[202] = "m";
statenamemap[203] = 3;
statename[203] = "m";
statenamemap[206] = 1;
statename[206] = "m_0";
statenamemap[207] = 2;
statename[207] = "m_0";
statenamemap[208] = 3;
statename[208] = "m_0";
statenamemap[211] = 1;
statename[211] = "n";
statenamemap[212] = 2;
statename[212] = "n";
statenamemap[213] = 3;
statename[213] = "n";
statenamemap[216] = 1;
statename[216] = "n_0";
statenamemap[217] = 2;
statename[217] = "n_0";
statenamemap[218] = 3;
statename[218] = "n_0";
statenamemap[221] = 1;
statename[221] = "ou";
statenamemap[222] = 2;
statename[222] = "ou";
statenamemap[223] = 3;
statename[223] = "ou";
statenamemap[226] = 1;
statename[226] = "ou:";
statenamemap[227] = 2;
statename[227] = "ou:";
statenamemap[228] = 3;
statename[228] = "ou:";
statenamemap[231] = 1;
statename[231] = "p";
statenamemap[232] = 2;
statename[232] = "p";
statenamemap[233] = 3;
statename[233] = "p";
statenamemap[236] = 1;
statename[236] = "p_h";
statenamemap[237] = 2;
statename[237] = "p_h";
statenamemap[238] = 3;
statename[238] = "p_h";
statenamemap[241] = 1;
statename[241] = "pau";
statenamemap[242] = 2;
statename[242] = "pau";
statenamemap[243] = 3;
statename[243] = "pau";
statenamemap[246] = 1;
statename[246] = "r";
statenamemap[247] = 2;
statename[247] = "r";
statenamemap[248] = 3;
statename[248] = "r";
statenamemap[251] = 1;
statename[251] = "r_0";
statenamemap[252] = 2;
statename[252] = "r_0";
statenamemap[253] = 3;
statename[253] = "r_0";
statenamemap[256] = 1;
statename[256] = "s";
statenamemap[257] = 2;
statename[257] = "s";
statenamemap[258] = 3;
statename[258] = "s";
statenamemap[261] = 5;
statename[261] = "pau";
statenamemap[264] = 1;
statename[264] = "t";
statenamemap[265] = 2;
statename[265] = "t";
statenamemap[266] = 3;
statename[266] = "t";
statenamemap[269] = 1;
statename[269] = "t_h";
statenamemap[270] = 2;
statename[270] = "t_h";
statenamemap[271] = 3;
statename[271] = "t_h";
statenamemap[274] = 1;
statename[274] = "u";
statenamemap[275] = 2;
statename[275] = "u";
statenamemap[276] = 3;
statename[276] = "u";
statenamemap[279] = 1;
statename[279] = "u:";
statenamemap[280] = 2;
statename[280] = "u:";
statenamemap[281] = 3;
statename[281] = "u:";
statenamemap[284] = 1;
statename[284] = "v";
statenamemap[285] = 2;
statename[285] = "v";
statenamemap[286] = 3;
statename[286] = "v";
statenamemap[289] = 1;
statename[289] = "x";
statenamemap[290] = 2;
statename[290] = "x";
statenamemap[291] = 3;
statename[291] = "x";
}
{ if (NF < 3)
     print $0;
  else
     printf("%s 125 %d %s\n",$1,statenamemap[$3],statename[$3])
}