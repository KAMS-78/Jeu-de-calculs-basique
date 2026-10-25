Program jeu_de_calcul;

Uses
sysutils, crt;

Var
Nom, Chaine : String;
Niv_de_Diff, Recommencer, SLT : Char;
i, j, pts, ADD, STRCT, MTPL, e, DIVS, a, b, c, d, f, Num, Den, DSCR, DSCR_RP  : Integer;
DIVS_A, DIVS_A1, DIVS_A2, rslt, EQT_1, EQT_1_OPS,  x0, x1, x2, Num_R, Den_R :Real;

Begin
  Textbackground(black);
	ClrScr;
	Randomize;
	Textcolor(yellow);
	
	WriteLn('                     _________________________');
	WriteLn('                    |                         |');
	WriteLn('                    |      CALULS RAPIDES     |');
	WriteLn('                    |_________________________|');
	WriteLn('                    |           |             |');
	WriteLn('                    |  NIVEAU   |POINTS REQUIS|');
	WriteLn('                    |___________|_____________|');
	WriteLn('                    |           |             |');
	WriteLn('                    |  PRIMAIRE |   10pts     |');
	WriteLn('                    |           |             |');
	WriteLn('                    |  COLLEGE  |   20pts     |');
	WriteLn('                    |           |             |');
	WriteLn('                    |  LYCEE    |   40pts     |');
	WriteLn('                    |___________|_____________|');
	WriteLn;
	WriteLn;
	
	Repeat
	  Textcolor(cyan);
	  WriteLn('Commençons par le primaire.');                                          //primaire
	  pts := 0;
	  WriteLn;

    Writeln('1°) ADDITION : ');                //addition
	  i := Random(30);
    j := Random(30);
	  ADD := i+j;
		Textcolor(lightBlue);
	  Write('    ',i,' + ',j,' = ');
		Textcolor(lightcyan);
	  Readln(Chaine);
		Val(chaine, rslt, e);

	  If rslt <> ADD Then
	    Begin
			  TextColor(Red);
        Write('Faux, ',i,' + ',j,' = ');
				Textcolor(lightgreen);
				WriteLn(ADD);
		    pts := pts+0;
				WriteLn;
		  End
	  Else
	    Begin
			  TextColor(Green);
        WriteLn('     Vrai');
		    pts := pts+5;
				WriteLn;
		  End;

		i := Random(30);
    j := Random(30);
	  ADD := i+j;
		Textcolor(lightBlue);
	  Write('    ',i,' + ',j,' = ');
		Textcolor(lightcyan);
	  Readln(Chaine);
		Val(Chaine, rslt, e);

	  If rslt <> ADD Then
	    Begin
			  TextColor(Red);
        Write('Faux, ',i,' + ',j,' = ');
				Textcolor(lightgreen);
				WriteLn(ADD);
		    pts := pts+0;
				WriteLn;
		  End
	  Else
	    Begin
			  TextColor(Green);
        WriteLn('     Vrai');
		    pts := pts+5;
				WriteLn;
		  End;

		Textcolor(cyan);
		Writeln('2°) SOUSTRACTION : ');       //soustraction
	  i := Random(30);
    j := Random(30);

	  If i >= j Then
	    Begin
				Textcolor(lightBlue);
				f := 1;
				STRCT := i-j;
				Write('    ',i,' - ',j,' = ');
				Textcolor(lightcyan);
	      Readln(Chaine);
				Val(chaine, rslt, e);
		  End
	  Else
	    Begin
				Textcolor(lightBlue);
				f := 0;
				STRCT := j-i;
				Write('    ',j,' - ',i,' = ');
				Textcolor(lightcyan);
	      Readln(Chaine);
				Val(Chaine, rslt, e);
		  End;

	  If rslt <> STRCT Then
	    Begin
			  If f = 1 Then
				  Begin
					  TextColor(Red);
            Write('Faux, ',i,' - ',j,' = ');
				    Textcolor(lightgreen);
				    WriteLn(STRCT);
		        pts := pts+0;
				    WriteLn;
					End
				Else
				  Begin
					  TextColor(Red);
            Write('Faux, ',j,' - ',i,' = ');
				    Textcolor(lightgreen);
				    WriteLn(STRCT);
		        pts := pts+0;
				    WriteLn;
					End
		  End
	  Else
	    Begin
		    TextColor(Green);
        WriteLn('     Vrai');
		    pts := pts+5;
				WriteLn;
		  End;

		TextColor(cyan);
		Writeln('3°) MULTIPLICATION : ');         //multiplication
	  i := 1+Random(9);
    j := Random(10);
	  MTPL := i*j;
		Textcolor(lightBlue);
	  Write('    ',i,' * ',j,' = ');
		Textcolor(lightcyan);
	  Readln(Chaine);
		Val(Chaine, rslt, e);

	  If rslt <> MTPL Then
	    Begin
			  TextColor(Red);
        Write('Faux, ',i,' * ',j,' = ');
				Textcolor(lightgreen);
				WriteLn(MTPL);
		    pts := pts+0;
				WriteLn;
		  End
	  Else
	    Begin
			  TextColor(Green);
        WriteLn('     Vrai');
		    pts := pts+5;
				WriteLn;
		  End;

		TextColor(cyan);
		Writeln('4°) DIVISION (2 chiffres maximum après la virgule(.)) : ');         //division
	  i := 1+Random(29);
    j := 1+Random(14);
		DIVS := i Div j;
		DIVS_A := Round(i/j*100)/100;		DIVS_A1 := Trunc(i/j*10)/10;
	  DIVS_A2 := Trunc(i/j*100)/100;
		Textcolor(lightBlue);
	  Write('    ',i,' / ',j,' = ');
		Textcolor(lightcyan);
	  Readln(Chaine);
		Val(Chaine, rslt, e);
		
		
	  If (rslt = DIVS) Or (rslt = DIVS_A) Or (rslt = DIVS_A1) Or (rslt = DIVS_A2) Then
	    Begin
			  TextColor(Green);
        WriteLn('     Vrai');
		    pts := pts+5;
				WriteLn;
		  End
	  Else
	    Begin
			  TextColor(Red);
        Write('Faux, ',i,' / ',j,' = ');
				pts := pts+0;
				Textcolor(lightgreen);
				If DIVS_A = DIVS_A2 Then
				  Begin
					  WriteLn(DIVS,' ou ',DIVS_A:1:2,' ou ',DIVS_A1:1:1);
						WriteLn;
					End
				Else
				  Begin
					  WriteLn(DIVS,' ou ',DIVS_A:1:2,' ou ',DIVS_A1:1:2,' ou ',DIVS_A2:1:2);
				    WriteLn;
					End
		  End;

			If pts >= 20 Then
			  Begin
				  Writeln('Tu as eu ',pts,' pts, donc tu es au moins au niveau PRIMAIRE.');
					WriteLn;
					WriteLn;
					Textcolor(cyan);
					WriteLn('Avancons au niveau COLLEGE');
					//Pts := 20;
					WriteLn;

		      Writeln('1°) SOUSTRACTION : ');       //soustraction
	        i := Random(30);
          j := Random(30);

	        If i >= j Then
	          Begin
				      Textcolor(lightBlue);
				      f := 1;
				      STRCT := i-j;
				      Write('    ',i,' - ',j,' = ');
				      Textcolor(lightcyan);
	            Readln(Chaine);
				      Val(chaine, rslt, e);
		        End
	        Else
	          Begin
				      Textcolor(lightBlue);
				      f := 0;
				      STRCT := j-i;
				      Write('    ',j,' - ',i,' = ');
				      Textcolor(lightcyan);
	            Readln(Chaine);
				      Val(Chaine, rslt, e);
		        End;

	        If rslt <> STRCT Then
	          Begin
			        If f = 1 Then
				        Begin
					        TextColor(Red);
                  Write('Faux, ',i,' - ',j,' = ');
				          Textcolor(lightgreen);
				          WriteLn(STRCT);
		              pts := pts+0;
				          WriteLn;
					      End
				     Else
				       Begin
					       TextColor(Red);
                 Write('Faux, ',j,' - ',i,' = ');
				         Textcolor(lightgreen);
				         WriteLn(STRCT);
		             pts := pts+0;
				         WriteLn;
					     End
		        End
	       Else
	         Begin
		         TextColor(Green);
             WriteLn('     Vrai');
		         pts := pts+5;
				     WriteLn;
		       End;

					i := Random(30);
          j := Random(30);

	        If i <= j Then
	          Begin
			      	Textcolor(lightBlue);
				      STRCT := i-j;
							f := 1;
				      Write('    ',i,' - ',j,' = ');
				      Textcolor(lightcyan);
	            Readln(Chaine);
				      Val(chaine, rslt, e);
		        End
	        Else
	          Begin
				      Textcolor(lightBlue);
				      STRCT := j-i;
							f := 0;
				      Write('    ',j,' - ',i,' = ');
				      Textcolor(lightcyan);
	            Readln(Chaine);
				      Val(chaine, rslt, e);
		        End;

	        If rslt <> STRCT Then
	          Begin
						  If f = 1 Then
							  Begin
		              TextColor(Red);
                  Write('Faux, ',i,' - ',j,' = ');
				          Textcolor(lightgreen);
				          WriteLn(STRCT);
		              pts := pts+0;
				          WriteLn;
								End
							Else
							  Begin
		              TextColor(Red);
                  Write('Faux, ',j,' - ',i,' = ');
				          Textcolor(lightgreen);
				          WriteLn(STRCT);
		              pts := pts+0;
				          WriteLn;
								End
		        End
	        Else
	          Begin
		          TextColor(Green);
              WriteLn('     Vrai');
		          pts := pts+3;
				      WriteLn;
		        End;

		      TextColor(cyan);
		      Writeln('2°) MULTIPLICATION : ');         //multiplication
	        i := 10+Random(20);
          j := 10+Random(20);
	        MTPL := i*j;
		      Textcolor(lightBlue);
	        Write('    ',i,' * ',j,' = ');
		      Textcolor(lightcyan);
	        Readln(Chaine);
		      Val(chaine, rslt, e);

	        If rslt <> MTPL Then
	          Begin
			        TextColor(Red);
              Write('Faux, ',i,' * ',j,' = ');
				      Textcolor(lightgreen);
				      WriteLn(MTPL);
		          pts := pts+0;
				      WriteLn;
		        End
	        Else
	          Begin
			        TextColor(Green);
              WriteLn('     Vrai');
		          pts := pts+5;
				      WriteLn;
		        End;

		      TextColor(cyan);
		      Writeln('3°) DIVISION (2 chiffres maximum après la virgule(.)) : ');         //division
	        i := 1+Random(29);
          j := 1+Random(14);
		      DIVS_A := Round(i/j*100)/100;
		      DIVS_A1 := Trunc(i/j*10)/10;
	        DIVS_A2 := Trunc(i/j*100)/100;
		      Textcolor(lightBlue);
	        Write('    ',i,' / ',j,' = ');
		      Textcolor(lightcyan);
	        Readln(Chaine);
		      Val(chaine, rslt, e);


	        If (rslt = DIVS_A) Or (rslt = DIVS_A1) Or (rslt = DIVS_A2) Then
	          Begin
			        TextColor(Green);
              WriteLn('     Vrai');
		          pts := pts+5;
				      WriteLn;
		        End
	        Else
	          Begin
			        TextColor(Red);
              Write('Faux, ',i,' / ',j,' = ');
				      pts := pts+0;
				      Textcolor(lightgreen);
				      If DIVS_A = DIVS_A2 Then
				        Begin
					        WriteLn(DIVS_A:1:2,' ou ',DIVS_A1:1:1);
						      WriteLn;
					      End
				      Else
				        Begin
					        WriteLn(DIVS_A:1:2,' ou ',DIVS_A1:1:2,' ou ',DIVS_A2:1:2);
				          WriteLn;
					      End
		        End;

					TextColor(cyan);
		      Writeln('4°) EQUATION DE DEGRE 1 : ');         //equation du premier dégré
	        a := 2+Random(18);
          b := 2+Random(18);
					c := 2+Random(18);
	        EQT_1 := (c-b)/a;
		      Textcolor(lightBlue);
	        WriteLn('    ',a,'x + ',b,' = ',c);
					WriteLn('Le résultat doit être sous la forme num/den (2/1 pour x = 2) sans simplification.');
					Write('Enter le numérateur : ');
					Textcolor(lightcyan);
					Readln(Chaine);
					Val(chaine, Num, e);

					Repeat
					  Textcolor(lightBlue);
					  Write('Enter le denominateur : ');
					  Textcolor(lightcyan);
					  Readln(Chaine);
					  Val(chaine, Den, e);
					Until(Den <> 0);
					
				  Textcolor(lightBlue);
					rslt := Num/Den;
					WriteLn('Donc x = ',Num,'/',Den);

	        If  rslt <> EQT_1 Then
	          Begin
			        TextColor(Red);
              Write('Faux, x  = ');
				      Textcolor(lightgreen);
				      WriteLn(c-b,'/',a);
		          pts := pts+0;
				      WriteLn;
		        End
	        Else
	          Begin
			        TextColor(Green);
              WriteLn('     Vrai');
		          pts := pts+5;
				      WriteLn;
		        End;

					TextColor(cyan);
					Writeln('5°) INEQUATION DE DEGRE 1 : ');         //inequation du premier dégré
	        a := 2+Random(18);
          b := 2+Random(18);
					c := 2+Random(18);
	        EQT_1 := (c+b)/a;
		      Textcolor(lightBlue);
	        WriteLn('    ',a,'x - ',b,' > ',c);
					WriteLn('Le résultat doit être sous la forme num/den (2/1 pour x > 2) sans simplification.');
					Write('Enter le numérateur : ');
					Textcolor(lightcyan);
					Readln(Chaine);
					Val(chaine, Num, e);
					
					Repeat
					  Textcolor(lightBlue);
					  Write('Enter le denominateur : ');
					  Textcolor(lightcyan);
					  Readln(Chaine);
					  Val(chaine, Den, e);
					Until(Den <> 0);
					
					Textcolor(lightBlue);
					Write('Entrer le symbole (<,>) : ');
					Textcolor(lightcyan);
					Readln(Chaine);
					Textcolor(lightBlue);
					rslt := Num/Den;
					WriteLn('Donc x ',Chaine,' ',Num,'/',Den);

	        If (Chaine <> '>') Then
	          Begin
			        TextColor(Red);
              Write('Faux, x  > ');
				      Textcolor(lightgreen);
				      WriteLn(c+b,'/',a);
		          pts := pts+0;
				      WriteLn;
		        End
	        Else
	          Begin
						  If (rslt <> EQT_1) Then
							  Begin
			            TextColor(Red);
                  Write('Faux, x  > ');
				          Textcolor(lightgreen);
				          WriteLn(c+b,'/',a);
		              pts := pts+0;
				          WriteLn;
								End
							Else
							  Begin
								  TextColor(Green);
                  WriteLn('     Vrai');
		              pts := pts+3;
				          WriteLn;
								End
		        End;
						
					EQT_1_OPS := -(c+b)/a;
		      Textcolor(lightBlue);
					WriteLn('Que vaut -x.');
					Write('Enter le numérateur : ');
					Textcolor(lightcyan);
					Readln(Chaine);
					Val(chaine, Num, e);
					Textcolor(lightBlue);

					Repeat
					  Textcolor(lightBlue);
					  Write('Enter le denominateur : ');
					  Textcolor(lightcyan);
					  Readln(Chaine);
					  Val(chaine, Den, e);
					Until(Den > 0);
					
					Textcolor(lightBlue);
					Write('Entrer le symbole (<,>) : ');
					Textcolor(lightcyan);
					Readln(Chaine);
					Textcolor(lightBlue);
					rslt := Num/Den;
					WriteLn('Donc x ',Chaine,' ',Num,'/',Den);
					
					If (Chaine <> '<') Then
	          Begin
			        TextColor(Red);
              Write('Faux, -x  < ');
				      Textcolor(lightgreen);
				      WriteLn(c+b,'/',a);
		          pts := pts+0;
				      WriteLn;
		        End
	        Else
	          Begin
						  If (rslt <> EQT_1_OPS) Then
							  Begin
			            TextColor(Red);
                  Write('Faux, -x  < ');
				          Textcolor(lightgreen);
				          WriteLn(c-b,'/',a);
		              pts := pts+0;
				          WriteLn;
								End
							Else
							  Begin
								  TextColor(Green);
                  WriteLn('     Vrai');
		              pts := pts+2;
				          WriteLn;
								End
		        End;
						
						

			    If pts >= 40 Then
			      Begin
				      Writeln('Tu as eu ',pts,' pts, donc tu es au moins au niveau LYCEE.');
					    WriteLn;
					    WriteLn;
					    Textcolor(cyan);
					    WriteLn('Avancons au niveau LYCEE');
							//pts := 40;
							WriteLn;

					    Writeln('1°) EQUATION DE DEGRE 2 : ');         //equation du deuxième dégré
	            a := 1;
              b := 2+Random(9);
					    c := 2+Random(9);
							d := Random(21);
	            DSCR := Sqr(b)-4*(c-d);
		          Textcolor(lightBlue);
	            WriteLn('    x² - ',b,'x + ',c,' = ',d);
					    Write('Enter le le discriminat : ');
					    Textcolor(lightcyan);
					    Readln(Chaine);
					    Val(chaine, DSCR_RP, e);

							If DSCR_RP <> DSCR Then
							  Begin
								  TextColor(Red);
                  Write('Faux, le discrinant est : ');
				          Textcolor(lightgreen);
				          WriteLn(DSCR);
		              pts := pts+0;
				          WriteLn;
								End
							Else
							  Begin
									pts := pts+2;
									If DSCR_RP > 0 Then
									  Begin
											x1 := -b+Sqrt(DSCR);
											x2 := -b-Sqrt(DSCR);
		                  DIVS_A1 := x1/2;
	                    DIVS_A2 := x2/2;
											Textcolor(lightBlue);
											WriteLn('Le résultat doit être sous la forme num/den (Ex: 2/1 pour x1=2)');
											WriteLn;
					            Write('Enter le numerateur de x1 : ');
					            Textcolor(lightcyan);
					            Readln(Chaine);
					            Val(chaine, Num_R, e);
							        Textcolor(lightBlue);
											
					            Repeat
					              Textcolor(lightBlue);
					              Write('Enter le denominateur x1 : ');
					              Textcolor(lightcyan);
					              Readln(Chaine);
					              Val(chaine, Den_R, e);
					            Until(Den_R <> 0);
											
											rslt := Num_R/Den_R;
											WriteLn('Donc x1 = ',Num_R:1:2,'/',Den_R:1:2);

											If rslt = DIVS_A1 Then
											  Begin
												  TextColor(Green);
                          WriteLn('     Vrai');
												  pts := pts+1;
													WriteLn;
												End
											Else
											  Begin
												  TextColor(Red);
                          Write('Faux, x1 = ');
				                  Textcolor(lightgreen);
				                  WriteLn(x1:1:2,'/2');
		                      pts := pts+0;
				                  WriteLn;
												End;
												
											WriteLn;
							        Textcolor(lightBlue);
					            Write('Enter le numerateur de x2 : ');
					            Textcolor(lightcyan);
					            Readln(Chaine);
					            Val(chaine, Num_R, e);
											Textcolor(lightBlue);
											
					           Repeat
					              Textcolor(lightBlue);
					              Write('Enter le denominateur x2 : ');
					              Textcolor(lightcyan);
					              Readln(Chaine);
					              Val(chaine, Den_R, e);
					            Until(Den_R <> 0);
											
											rslt := Num_R/Den_R;
											WriteLn('Donc x1 = ',Num_R:1:2,'/',Den_R:1:2);

											If rslt = DIVS_A2 Then
											  Begin
												  TextColor(Green);
                          WriteLn('     Vrai');
												  pts := pts+2;
													WriteLn;
												End
											Else
											  Begin
												  TextColor(Red);
                          Write('Faux, x1 = ');
				                  Textcolor(lightgreen);
				                  WriteLn(x2:1:2,'/2');
		                      pts := pts+0;
				                  WriteLn;
												End;
												
											WriteLn;
										End
									Else If DSCR_RP < 0 Then
									  Begin
											x1 := Sqrt(Abs(DSCR));
											x2 := Sqrt(Abs(DSCR));
		                  DIVS_A1 := (-b+x1) /2;
	                    DIVS_A2 := (-b-x2) /2;
											Textcolor(lightBlue);
											WriteLn('L''enssemble des solutions est : A) (S):{',b,' + ',x1:1:2,'*i/2 ; ',b,' ',x2:1:2,' * i/2 }');
											WriteLn('L''enssemble des solutions est : B) (S):{',-b,' + ',x1:1:2,'*i/2 ; ',-b,' ',x2:1:2,' * i/2 }');
											WriteLn('                                 C) (S):{',-b-2,' + ',x1:1:2,' * i/2 ; ',-b-2,' ',x2:1:2,' * i/2 }');
											WriteLn('                                 D) (S):{ 0 }');
											WriteLn;
											Write('Repondez par A, B, C ou D : ');
											Readln(SLT);

											If SLT = 'B' Then
											  Begin
												  TextColor(Green);
                          WriteLn('     Vrai');
												  pts := pts+5;
													WriteLn;
												End
											Else
											  Begin
												  TextColor(Red);
                          Write('Faux,  la bonne reponse est B) : ');
				                  Textcolor(lightgreen);
				                  WriteLn('L''enssemble des solutions est : B) (S):{',-b,' + ',x1:1:2,' * i/2 ; ',-b,' ',x2:1:2,' * i/2 }');
		                      pts := pts+0;
				                  WriteLn;
												End;
										End
									Else 
									  Begin
											x0 := b/2;
											Textcolor(lightBlue);
											WriteLn('Le résultat doit être sous la forme num/den (Ex: 2/1 pour x0 = 2)');
											WriteLn;
					            Write('Enter le numerateur de x0 : ');
					            Textcolor(lightcyan);
					            Readln(Chaine);
					            Val(chaine, Num_R, e);
							        Textcolor(lightBlue);
											
					            Repeat
					              Textcolor(lightBlue);
					              Write('Enter le denominateur de x0: ');
					              Textcolor(lightcyan);
					              Readln(Chaine);
					              Val(chaine, Den_R, e);
					            Until(Den_R <> 0);
											
											rslt := Num_R/Den_R;
											WriteLn('Donc x0 = ',Num_R:1:2,'/',Den_R:1:2);

											If rslt = x0 Then
											  Begin
												  pts := pts+5;
													TextColor(Green);
													WriteLn('     Vrai');
												End
											Else
											  Begin
												  TextColor(Red);
                          Write('Faux, x0 = ');
				                  Textcolor(lightgreen);
				                  WriteLn(b,'/2');
		                      pts := pts+0;
				                  WriteLn;
												End;
												
											WriteLn;
										End
								End;

								If pts >= 70 Then
			            Begin
				            Writeln('Tu as eu ',pts,' pts, donc tu es au moins au niveau LYCEE.');
					          WriteLn;
					          WriteLn;
				          End
								Else
			            Begin
				            WriteLn('Tu as eu ',pts,' pts, donc tu es de niveau LYCEE.');
										WriteLn;
					          WriteLn;
				          End;

						End
			    Else
			      Begin
				      WriteLn('Tu as eu ',pts,' pts, donc tu es de niveau COLLEGE.');
							WriteLn;
					    WriteLn;
				    End;

						
				End
			Else
			  Begin
				   WriteLn('Tu as eu ',pts,' pts, donc tu es de niveau PRIMAIRE.');
					 WriteLn;
					 WriteLn;
				End;

    Repeat
			Textcolor(lightMagenta);
			Write('Tu veux rejouer ? (O = Oui, N = Non) : ');
			Textcolor(lightcyan);
		  Readln(Recommencer);
			Recommencer := Upcase(Recommencer);
		Until((Recommencer = 'O') Or (Recommencer = 'N'));
		
	Until(Recommencer <> 'O');

	WriteLn('MERCI ET À BIENTÔT !!!');

End.
