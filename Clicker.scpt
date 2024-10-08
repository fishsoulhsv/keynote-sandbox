FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l      �� 	 
��   	 L F* Add the argument shape to the current slide at the desired location     
 �   � *   A d d   t h e   a r g u m e n t   s h a p e   t o   t h e   c u r r e n t   s l i d e   a t   t h e   d e s i r e d   l o c a t i o n        i         I      �� ���� 0 addshape addShape   ��  o      ���� "0 wantedshapename wantedShapeName��  ��    O     u    k    t       l   ��  ��    < 6 Assumes that keynote is maximized on the main monitor     �   l   A s s u m e s   t h a t   k e y n o t e   i s   m a x i m i z e d   o n   t h e   m a i n   m o n i t o r   ��  O    t    k    s       l   ��������  ��  ��       !   l   �� " #��   " ( " Set up some convenience variables    # � $ $ D   S e t   u p   s o m e   c o n v e n i e n c e   v a r i a b l e s !  % & % r     ' ( ' 4    �� )
�� 
cwin ) m    ����  ( o      ���� 0 w   &  * + * r     , - , n     . / . 4    �� 0
�� 
tbar 0 m    ����  / o    ���� 0 w   - o      ���� 0 tb   +  1 2 1 r     3 4 3 n     5 6 5 4    �� 7
�� 
chbx 7 m     8 8 � 9 9 
 S h a p e 6 o    ���� 0 tb   4 o      ���� 0 shapebutton shapeButton 2  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   > ] W If the shape dialog isn't open, open it by clicking on the Shape button in the toolbar    ? � @ @ �   I f   t h e   s h a p e   d i a l o g   i s n ' t   o p e n ,   o p e n   i t   b y   c l i c k i n g   o n   t h e   S h a p e   b u t t o n   i n   t h e   t o o l b a r =  A B A Q     = C D E C r   # ) F G F n   # ' H I H 4   $ '�� J
�� 
popv J m   % &����  I o   # $���� 0 shapebutton shapeButton G o      ���� 0 shapedialog shapeDialog D R      �� K L
�� .ascrerr ****      � **** K o      ���� 0 errmsg errMsg L �� M��
�� 
errn M o      ���� 0 errnum errNum��   E k   1 = N N  O P O I  1 6�� Q��
�� .prcsclicnull��� ��� uiel Q o   1 2���� 0 shapebutton shapeButton��   P  R�� R r   7 = S T S n   7 ; U V U 4   8 ;�� W
�� 
popv W m   9 :����  V o   7 8���� 0 shapebutton shapeButton T o      ���� 0 shapedialog shapeDialog��   B  X Y X l  > >��������  ��  ��   Y  Z [ Z l  > >�� \ ]��   \ V P Type in the name of the desired shape into the searchbox of the shapes dialog		    ] � ^ ^ �   T y p e   i n   t h e   n a m e   o f   t h e   d e s i r e d   s h a p e   i n t o   t h e   s e a r c h b o x   o f   t h e   s h a p e s   d i a l o g 	 	 [  _ ` _ r   > D a b a n   > B c d c 4   ? B�� e
�� 
txtf e m   @ A����  d o   > ?���� 0 shapedialog shapeDialog b o      ���� 0 searchfield searchField `  f g f l   E E�� h i��   h � �
		try
			-- If there's already text in the dialog, there'll be an "x" button that will need clicking.
			-- click the "x" to clear the searchfield
			set xBtn to button 2 of searchField
			click xBtn
		end try
		    i � j j� 
 	 	 t r y 
 	 	 	 - -   I f   t h e r e ' s   a l r e a d y   t e x t   i n   t h e   d i a l o g ,   t h e r e ' l l   b e   a n   " x "   b u t t o n   t h a t   w i l l   n e e d   c l i c k i n g . 
 	 	 	 - -   c l i c k   t h e   " x "   t o   c l e a r   t h e   s e a r c h f i e l d 
 	 	 	 s e t   x B t n   t o   b u t t o n   2   o f   s e a r c h F i e l d 
 	 	 	 c l i c k   x B t n 
 	 	 e n d   t r y 
 	 	 g  k l k r   E J m n m o   E F���� "0 wantedshapename wantedShapeName n n       o p o 1   G I��
�� 
valL p o   F G���� 0 searchfield searchField l  q r q I  K P�� s��
�� .sysodelanull��� ��� nmbr s m   K L t t ?�      ��   r  u v u l  Q Q��������  ��  ��   v  w x w l  Q Q�� y z��   y N H click on the first item in the match list to add the shape to the slide    z � { { �   c l i c k   o n   t h e   f i r s t   i t e m   i n   t h e   m a t c h   l i s t   t o   a d d   t h e   s h a p e   t o   t h e   s l i d e x  | } | r   Q k ~  ~ n   Q i � � � 4   d i�� �
�� 
butT � m   g h����  � n   Q d � � � 4   _ d�� �
�� 
sgrp � m   b c����  � n   Q _ � � � 4   Z _�� �
�� 
list � m   ] ^����  � n   Q Z � � � 4   U Z�� �
�� 
list � m   X Y����  � n   Q U � � � 4   R U�� �
�� 
scra � m   S T����  � o   Q R���� 0 shapedialog shapeDialog  o      ���� 0 
firstmatch 
firstMatch }  � � � I  l q�� ���
�� .prcsclicnull��� ��� uiel � o   l m���� 0 
firstmatch 
firstMatch��   �  ��� � l  r r��������  ��  ��  ��    4    �� �
�� 
prcs � m     � � � � �  K e y n o t e��    m      � ��                                                                                  sevs  alis    \  Macintosh HD               ��½BD ����System Events.app                                              ������½        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 	listprops 	listProps �  ��� � o      ���� 0 myobject MyObject��  ��   � k     � � �  � � � I    �� ���
�� .sysodisAaleR        TEXT � m      � � � � �  1��   �  ��� � Q    � � � � � e   	  � � n   	  � � � 1   
 ��
�� 
pALL � o   	 
���� 0 myobject MyObject � R      �� � �
�� .ascrerr ****      � **** � o      ���� 0 errtext errText � �� ���
�� 
errn � o      ���� 0 errnum errNum��   � k    � � �  � � � l   ��������  ��  ��   �  � � � r      � � � I   ���� �
�� .sysooffslong    ��� null��   � �� � �
�� 
psof � m     � � � � �  { � �� ���
�� 
psin � o    ���� 0 errtext errText��   � o      ���� 0 pstart pStart �  � � � r   ! 2 � � � n   ! 0 � � � 7  " 0�� � �
�� 
ctxt � o   & (���� 0 pstart pStart � l  ) / ����� � \   ) / � � � l  * - ����� � n   * - � � � 1   + -��
�� 
leng � o   * +���� 0 errtext errText��  ��   � m   - .���� ��  ��   � o   ! "���� 0 errtext errText � o      ���� 0 	structure   �  � � � r   3 8 � � � n  3 6 � � � 1   4 6��
�� 
txdl � 1   3 4��
�� 
ascr � o      ���� 0 tidl TIDL �  � � � r   9 > � � � m   9 : � � � � �  , � n      � � � 1   ; =��
�� 
txdl � 1   : ;��
�� 
ascr �  � � � r   ? H � � � c   ? F � � � n   ? B � � � 2  @ B��
�� 
citm � o   ? @�� 0 	structure   � m   B E�~
�~ 
list � o      �}�} 
0 fields   �  � � � r   I N � � � m   I L � � � � �   � o      �|�| 0 	mymessage 	myMessage �  � � � Y   O � ��{ � ��z � k   ] � � �  � � � r   ] d � � � m   ] ` � � � � �  : � n      � � � 1   a c�y
�y 
txdl � 1   ` a�x
�x 
ascr �  � � � r   e s � � � c   e q � � � n   e m � � � 2  k m�w
�w 
citm � l  e k ��v�u � n   e k � � � 4   f k�t �
�t 
cobj � o   i j�s�s 0 f   � o   e f�r�r 
0 fields  �v  �u   � m   m p�q
�q 
list � o      �p�p 0 
theseitems 
theseItems �    r   t � n   t � 7  z ��o
�o 
ctxt m   ~ ��n�n  1   � ��m
�m 
leng n   t z	 4   u z�l

�l 
cobj
 m   x y�k�k 	 o   t u�j�j 0 
theseitems 
theseItems o      �i�i 0 itempropname itemPropName  r   � � n   � � 4   � ��h
�h 
cobj m   � ��g�g  o   � ��f�f 0 
theseitems 
theseItems o      �e�e 0 	itemvalue 	itemValue �d r   � � b   � � b   � � b   � � b   � � b   � � b   � �  o   � ��c�c 0 	mymessage 	myMessage  m   � �!! �""   P r o p e r t y   L a b e l :   o   � ��b�b 0 itempropname itemPropName 1   � ��a
�a 
tab  m   � �## �$$  V a l u e :   o   � ��`�` 0 	itemvalue 	itemValue 1   � ��_
�_ 
lnfd o      �^�^ 0 	mymessage 	myMessage�d  �{ 0 f   � m   R S�]�]  � I  S X�\%�[
�\ .corecnte****       ****% o   S T�Z�Z 
0 fields  �[  �z   � &'& r   � �()( o   � ��Y�Y 0 tidl TIDL) n     *+* 1   � ��X
�X 
txdl+ 1   � ��W
�W 
ascr' ,-, r   � �./. m   � �00 �11  o o p s/ o      �V�V 0 	mymessage 	myMessage- 2�U2 I  � ��T3�S
�T .sysodisAaleR        TEXT3 o   � ��R�R 0 	mymessage 	myMessage�S  �U  ��   � 454 l     �Q�P�O�Q  �P  �O  5 676 i    898 I      �N�M�L�N 0 	slideinfo  �M  �L  9 k     m:: ;<; I    �K=�J
�K .ascrcmnt****      � ****= m     >> �??  S l i d e I n f o . . .�J  < @�I@ O    mABA k   
 lCC DED r   
 FGF n   
 HIH 1    �H
�H 
crslI 4  
 �GJ
�G 
docuJ m    �F�F G o      �E�E 0 theslide theSlideE KLK l   �D�C�B�D  �C  �B  L MNM l   �A�@�?�A  �@  �?  N OPO I   �>Q�=
�> .ascrcmnt****      � ****Q n   RSR 1    �<
�< 
sdbiS o    �;�; 0 theslide theSlide�=  P TUT l   �:�9�8�:  �9  �8  U VWV l    �7XY�7  X � �
		BROKEN		log "objCDictionary..."		set objCDictionary to current application's NSDictionary's dictionaryWithDictionary:theSlide		log "allKeys..."		set allKeys to objCDictionary's allKeys()		log allKeys
		   Y �ZZ� 
 	 	 B R O K E N  	 	 l o g   " o b j C D i c t i o n a r y . . . "  	 	 s e t   o b j C D i c t i o n a r y   t o   c u r r e n t   a p p l i c a t i o n ' s   N S D i c t i o n a r y ' s   d i c t i o n a r y W i t h D i c t i o n a r y : t h e S l i d e  	 	 l o g   " a l l K e y s . . . "  	 	 s e t   a l l K e y s   t o   o b j C D i c t i o n a r y ' s   a l l K e y s ( )  	 	 l o g   a l l K e y s 
 	 	W [\[ l   �6�5�4�6  �5  �4  \ ]^] l   �3_`�3  _ w qREF: https://stackoverflow.com/questions/18062494/how-to-enumerate-the-keys-and-values-of-a-record-in-applescript   ` �aa � R E F :   h t t p s : / / s t a c k o v e r f l o w . c o m / q u e s t i o n s / 1 8 0 6 2 4 9 4 / h o w - t o - e n u m e r a t e - t h e - k e y s - a n d - v a l u e s - o f - a - r e c o r d - i n - a p p l e s c r i p t^ bcb Q    .defd c    #ghg n    !iji 1    !�2
�2 
pALLj o    �1�1 0 theslide theSlideh m   ! "�0
�0 
TEXTe R      �/kl
�/ .ascrerr ****      � ****k o      �.�. 0 errmsg errMsgl �-m�,
�- 
errnm o      �+�+ 0 errnum errNum�,  f k   + .nn opo l  + +�*qr�*  q  
log errMsg   r �ss  l o g   e r r M s gp t�)t r   + .uvu o   + ,�(�( 0 errmsg errMsgv o      �'�' 0 si  �)  c wxw I  / 6�&y�%
�& .ascrcmnt****      � ****y b   / 2z{z m   / 0|| �}}  s i - - - >  { o   0 1�$�$ 0 si  �%  x ~~ l  7 7�#�"�!�#  �"  �!   ��� l   7 7� ���   ��� Objective-C classes:
		
			smas - slide layout
			KnMs - slide's parent document's title?
			KnSd - slide
			KSdN - slide number
			sdti - Slide title item
			sdbi - slide body item
			Kskp
			Kbsh
			ksnt
			strn - Slide Transition object (
				xdur - transition's duration
				xdly - transition's delay
				xeft - transition's effect - ****tnil, if no transition
				xaut - transition's automatic-ness. "false" = transition onClick
			)
			Ktsh
		   � ����   O b j e c t i v e - C   c l a s s e s : 
 	 	 
 	 	 	 s m a s   -   s l i d e   l a y o u t 
 	 	 	 K n M s   -   s l i d e ' s   p a r e n t   d o c u m e n t ' s   t i t l e ? 
 	 	 	 K n S d   -   s l i d e 
 	 	 	 K S d N   -   s l i d e   n u m b e r 
 	 	 	 s d t i   -   S l i d e   t i t l e   i t e m 
 	 	 	 s d b i   -   s l i d e   b o d y   i t e m 
 	 	 	 K s k p 
 	 	 	 K b s h 
 	 	 	 k s n t 
 	 	 	 s t r n   -   S l i d e   T r a n s i t i o n   o b j e c t   ( 
 	 	 	 	 x d u r   -   t r a n s i t i o n ' s   d u r a t i o n 
 	 	 	 	 x d l y   -   t r a n s i t i o n ' s   d e l a y 
 	 	 	 	 x e f t   -   t r a n s i t i o n ' s   e f f e c t   -   * * * * t n i l ,   i f   n o   t r a n s i t i o n 
 	 	 	 	 x a u t   -   t r a n s i t i o n ' s   a u t o m a t i c - n e s s .   " f a l s e "   =   t r a n s i t i o n   o n C l i c k 
 	 	 	 ) 
 	 	 	 K t s h 
 	 	� ��� l  7 7����  �  �  � ��� I  7 <���
� .ascrcmnt****      � ****� m   7 8�� ��� 
 - - - - -�  � ��� I  = F���
� .ascrcmnt****      � ****� c   = B��� n   = @��� 1   > @�
� 
pALL� o   = >�� 0 theslide theSlide� m   @ A�
� 
list�  � ��� r   G N��� c   G L��� n   G J��� 1   H J�
� 
pALL� o   G H�� 0 theslide theSlide� m   J K�
� 
list� o      �� 0 a  � ��� Y   O j������ I  ] e���
� .ascrcmnt****      � ****� n   ] a��� 4   ^ a��
� 
cobj� o   _ `�� 0 i  � o   ] ^�� 0 a  �  � 0 i  � m   R S�
�
 � I  S X�	��
�	 .corecnte****       ****� o   S T�� 0 a  �  �  � ��� l  k k����  �  �  � ��� l   k k����  � � �		set i to 0		repeat with p in (properties of theSlide as list)			set i to i + 1			log i & ". " & (p as string)		end repeat		   � ���  	 	 s e t   i   t o   0  	 	 r e p e a t   w i t h   p   i n   ( p r o p e r t i e s   o f   t h e S l i d e   a s   l i s t )  	 	 	 s e t   i   t o   i   +   1  	 	 	 l o g   i   &   " .   "   &   ( p   a s   s t r i n g )  	 	 e n d   r e p e a t  	 	� ��� l  k k����  � , &scroll area 2 of splitter group 1 of w   � ��� L s c r o l l   a r e a   2   o f   s p l i t t e r   g r o u p   1   o f   w� ��� l  k k� ���   � $ BROKEN: listProps({"a", "bc"})   � ��� < B R O K E N :   l i s t P r o p s ( { " a " ,   " b c " } )�  B m    ���                                                                                  keyn  alis    &  Macintosh HD               ��½BD ����Keynote.app                                                    ������        ����  
 cu             Applications  /:Applications:Keynote.app/     K e y n o t e . a p p    M a c i n t o s h   H D  Applications/Keynote.app  / ��  �I  7 ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 drawfreehand drawFreehand� ���� o      ���� 0 wantedpoints wantedPoints��  ��  � k     ��� ��� l     ������  �  slideinfo()   � ���  s l i d e i n f o ( )� ��� l     ��������  ��  ��  � ���� O     ���� k    ��� ��� l   ������  � < 6 Assumes that keynote is maximized on the main monitor   � ��� l   A s s u m e s   t h a t   k e y n o t e   i s   m a x i m i z e d   o n   t h e   m a i n   m o n i t o r� ���� O    ���� k    ��� ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ��� l   ��������  ��  ��  � ��� l   ������  � ( " Set up some convenience variables   � ��� D   S e t   u p   s o m e   c o n v e n i e n c e   v a r i a b l e s� ��� r    ��� 4    ���
�� 
cwin� m    ���� � o      ���� 0 w  � ��� r    ��� n    ��� 4    ���
�� 
tbar� m    ���� � o    ���� 0 w  � o      ���� 0 tb  � ��� r    %��� n    #��� 4     #���
�� 
chbx� m   ! "�� ��� 
 S h a p e� o     ���� 0 tb  � o      ���� 0 shapebutton shapeButton� ��� l  & &��������  ��  ��  � ��� l  & &������  � ] W If the shape dialog isn't open, open it by clicking on the Shape button in the toolbar   � ��� �   I f   t h e   s h a p e   d i a l o g   i s n ' t   o p e n ,   o p e n   i t   b y   c l i c k i n g   o n   t h e   S h a p e   b u t t o n   i n   t h e   t o o l b a r� ��� Q   & C���� r   ) /� � n   ) - 4   * -��
�� 
popv m   + ,����  o   ) *���� 0 shapebutton shapeButton  o      ���� 0 shapedialog shapeDialog� R      ��
�� .ascrerr ****      � **** o      ���� 0 errmsg errMsg ����
�� 
errn o      ���� 0 errnum errNum��  � k   7 C 	 I  7 <��
��
�� .prcsclicnull��� ��� uiel
 o   7 8���� 0 shapebutton shapeButton��  	 �� r   = C n   = A 4   > A��
�� 
popv m   ? @����  o   = >���� 0 shapebutton shapeButton o      ���� 0 shapedialog shapeDialog��  �  l  D D��������  ��  ��    l  D D����   $  Click on the Freehand tool...    � <   C l i c k   o n   t h e   F r e e h a n d   t o o l . . .  r   D J n   D H 4   E H��
�� 
butT m   F G����  o   D E���� 0 shapedialog shapeDialog o      ���� 0 freehandbtn freeHandBtn   I  K P��!��
�� .sysodelanull��� ��� nmbr! m   K L"" ?ə�������    #$# I  Q V��%��
�� .prcsclicnull��� ��� uiel% o   Q R���� 0 freehandbtn freeHandBtn��  $ &'& I  W \��(��
�� .sysodelanull��� ��� nmbr( m   W X)) ?ə�������  ' *+* l  ] ]��������  ��  ��  + ,-, l  ] ]��./��  .   Finding the slide:   / �00 &   F i n d i n g   t h e   s l i d e :- 121 l  ] ]��34��  3 T N  If the navigation panel is showing: `scroll area 2 of splitter group 1 of w`   4 �55 �     I f   t h e   n a v i g a t i o n   p a n e l   i s   s h o w i n g :   ` s c r o l l   a r e a   2   o f   s p l i t t e r   g r o u p   1   o f   w `2 676 l  ] ]��89��  8 l f  If the navigation panel AND the object browser are showing: `scroll area 3 of splitter group 1 of w`   9 �:: �     I f   t h e   n a v i g a t i o n   p a n e l   A N D   t h e   o b j e c t   b r o w s e r   a r e   s h o w i n g :   ` s c r o l l   a r e a   3   o f   s p l i t t e r   g r o u p   1   o f   w `7 ;<; l  ] ]��������  ��  ��  < =>= l  ] ]��������  ��  ��  > ?@? l  ] ]��AB��  A A ; Now click at the point locations requested in wantedPoints   B �CC v   N o w   c l i c k   a t   t h e   p o i n t   l o c a t i o n s   r e q u e s t e d   i n   w a n t e d P o i n t s@ DED l  ] ]��FG��  F Q K TODO: Need to compute the global coordinates of the top-left of the slide.   G �HH �   T O D O :   N e e d   t o   c o m p u t e   t h e   g l o b a l   c o o r d i n a t e s   o f   t h e   t o p - l e f t   o f   t h e   s l i d e .E IJI l  ] ]��KL��  K * $ In the meantime, here's a hardcode.   L �MM H   I n   t h e   m e a n t i m e ,   h e r e ' s   a   h a r d c o d e .J NON r   ] ePQP J   ] cRR STS m   ] ^���� �T U��U m   ^ a���� ���  Q o      ���� 0 slidetopleft slideTopLeftO VWV I  f k��X��
�� .sysodisAaleR        TEXTX m   f g���� ��  W YZY Y   l �[��\]��[ k   { �^^ _`_ r   { �aba n   { �cdc 4   | ���e
�� 
cobje o    ����� 0 i  d o   { |���� 0 wantedpoints wantedPointsb o      ���� 0 curpt curPt` fgf r   � �hih [   � �jkj l  � �l����l n   � �mnm 4   � ���o
�� 
cobjo m   � ����� n o   � ����� 0 curpt curPt��  ��  k l  � �p����p n   � �qrq 4   � ���s
�� 
cobjs m   � ����� r o   � ����� 0 slidetopleft slideTopLeft��  ��  i o      ���� 0 newx newXg tut r   � �vwv [   � �xyx l  � �z����z n   � �{|{ 4   � ���}
�� 
cobj} m   � ����� | o   � ����� 0 curpt curPt��  ��  y l  � �~����~ n   � �� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 slidetopleft slideTopLeft��  ��  w o      ���� 0 newy newYu ��� l  � �������  � 4 .display alert "newX=" & newX & " newY=" & newY   � ��� \ d i s p l a y   a l e r t   " n e w X = "   &   n e w X   &   "   n e w Y = "   &   n e w Y� ��� l  � �������  � * $log "newX=" & newX & " newY=" & newY   � ��� H l o g   " n e w X = "   &   n e w X   &   "   n e w Y = "   &   n e w Y� ��� l  � �������  � + %display alert (click at {newX, newY})   � ��� J d i s p l a y   a l e r t   ( c l i c k   a t   { n e w X ,   n e w Y } )� ��� I  � ������
�� .prcsclicnull��� ��� uiel��  � �����
�� 
insh� J   � ��� ��� o   � ����� 0 newx newX� ��� o   � ��~�~ 0 newy newY�  ��  � ��}� I  � ��|��{
�| .sysodelanull��� ��� nmbr� m   � ��� ?ə������{  �}  �� 0 i  \ m   o p�z�z ] n   p v��� 1   q u�y
�y 
leng� o   p q�x�x 0 wantedpoints wantedPoints��  Z ��w� I  � ��v��u
�v .sysodisAaleR        TEXT� m   � ��t�t �u  �w  � 4    �s�
�s 
prcs� m    �� ���  K e y n o t e��  � m     ���                                                                                  sevs  alis    \  Macintosh HD               ��½BD ����System Events.app                                              ������½        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  ��  � ��� l     �r�q�p�r  �q  �p  � ��� i    ��� I      �o��n�o 0 setshapepos setShapePos� ��� o      �m�m 0 wantedx wantedX� ��l� o      �k�k 0 wantedy wantedY�l  �n  � O     G��� k    F�� ��� l   �j���j  � , & Get the selected item from the slide.   � ��� L   G e t   t h e   s e l e c t e d   i t e m   f r o m   t h e   s l i d e .� ��� r    
��� l   ��i�h� 4   �g�
�g 
docu� m    �f�f �i  �h  � o      �e�e 0 doc  � ��d� Q    F���� k    7�� ��� r    ��� n    ��� 1    �c
�c 
sele� o    �b�b 0 doc  � o      �a�a 0 sel  � ��� l   �`���`  � F @ sel will be a list. Operate only on the first item of the list.   � ��� �   s e l   w i l l   b e   a   l i s t .   O p e r a t e   o n l y   o n   t h e   f i r s t   i t e m   o f   t h e   l i s t .� ��� l   �_���_  � Q K And if NO shapes are selected it'll still have one item: the slide itself.   � ��� �   A n d   i f   N O   s h a p e s   a r e   s e l e c t e d   i t ' l l   s t i l l   h a v e   o n e   i t e m :   t h e   s l i d e   i t s e l f .� ��� Z    '���^�]� l   ��\�[� >    ��� n    ��� m    �Z
�Z 
nmbr� n    ��� 2   �Y
�Y 
cobj� o    �X�X 0 sel  � m    �W�W �\  �[  � I   #�V��U
�V .sysodisAaleR        TEXT� m    �� ��� � C a u t i o n :   S e l e c t i o n   i s   m u l t i p l e   i t e m s .   O p e r a t i n g   o n l y   o n   f i r s t   o n e .�U  �^  �]  � ��� r   ( .��� n   ( ,��� 4   ) ,�T�
�T 
cobj� m   * +�S�S � o   ( )�R�R 0 sel  � o      �Q�Q 0 sel1  � ��P� r   / 7��� J   / 3�� ��� o   / 0�O�O 0 wantedx wantedX� ��N� o   0 1�M�M 0 wantedy wantedY�N  � l     ��L�K� n      ��� 1   4 6�J
�J 
sipo� o   3 4�I�I 0 sel1  �L  �K  �P  � R      �H��
�H .ascrerr ****      � ****� o      �G�G 0 errmsg errMsg� �F��E
�F 
errn� o      �D�D 0 errnum errNum�E  � I  ? F�C��B
�C .sysodisAaleR        TEXT� b   ? B��� m   ? @�� ��� 0 E r r o r   f r o m   s e t S h a p e P o s :  � o   @ A�A�A 0 errmsg errMsg�B  �d  � m     ���                                                                                  keyn  alis    &  Macintosh HD               ��½BD ����Keynote.app                                                    ������        ����  
 cu             Applications  /:Applications:Keynote.app/     K e y n o t e . a p p    M a c i n t o s h   H D  Applications/Keynote.app  / ��  � ��� l     �@�?�>�@  �?  �>  � ��� i    ��� I      �=��<�= 0 setshapesize setShapeSize�    o      �;�; 0 wantedx wantedX �: o      �9�9 0 wantedy wantedY�:  �<  � O     J k    I  l   �8	�8   , & Get the selected item from the slide.   	 �

 L   G e t   t h e   s e l e c t e d   i t e m   f r o m   t h e   s l i d e .  r    
 l   �7�6 4   �5
�5 
docu m    �4�4 �7  �6   o      �3�3 0 doc   �2 Q    I k    :  r     n     1    �1
�1 
sele o    �0�0 0 doc   o      �/�/ 0 sel    l   �.�.   F @ sel will be a list. Operate only on the first item of the list.    �   �   s e l   w i l l   b e   a   l i s t .   O p e r a t e   o n l y   o n   t h e   f i r s t   i t e m   o f   t h e   l i s t . !"! l   �-#$�-  # Q K And if NO shapes are selected it'll still have one item: the slide itself.   $ �%% �   A n d   i f   N O   s h a p e s   a r e   s e l e c t e d   i t ' l l   s t i l l   h a v e   o n e   i t e m :   t h e   s l i d e   i t s e l f ." &'& Z    '()�,�+( l   *�*�)* >    +,+ n    -.- m    �(
�( 
nmbr. n    /0/ 2   �'
�' 
cobj0 o    �&�& 0 sel  , m    �%�% �*  �)  ) I   #�$1�#
�$ .sysodisAaleR        TEXT1 m    22 �33 � C a u t i o n :   S e l e c t i o n   i s   m u l t i p l e   i t e m s .   O p e r a t i n g   o n l y   o n   f i r s t   o n e .�#  �,  �+  ' 454 r   ( .676 n   ( ,898 4   ) ,�":
�" 
cobj: m   * +�!�! 9 o   ( )� �  0 sel  7 o      �� 0 sel1  5 ;<; l  / /�=>�  = R L Many shapes won't let you squish them. In that case, the last setting wins.   > �?? �   M a n y   s h a p e s   w o n ' t   l e t   y o u   s q u i s h   t h e m .   I n   t h a t   c a s e ,   t h e   l a s t   s e t t i n g   w i n s .< @A@ r   / 4BCB o   / 0�� 0 wantedx wantedXC l     D��D n      EFE 1   1 3�
� 
sitwF o   0 1�� 0 sel1  �  �  A G�G r   5 :HIH o   5 6�� 0 wantedy wantedYI l     J��J n      KLK 1   7 9�
� 
sithL o   6 7�� 0 sel1  �  �  �   R      �MN
� .ascrerr ****      � ****M o      �� 0 errmsg errMsgN �O�
� 
errnO o      �� 0 errnum errNum�   I  B I�P�
� .sysodisAaleR        TEXTP b   B EQRQ m   B CSS �TT 2 E r r o r   f r o m   s e t S h a p e S i z e :  R o   C D�� 0 errmsg errMsg�  �2   m     UU�                                                                                  keyn  alis    &  Macintosh HD               ��½BD ����Keynote.app                                                    ������        ����  
 cu             Applications  /:Applications:Keynote.app/     K e y n o t e . a p p    M a c i n t o s h   H D  Applications/Keynote.app  / ��  � VWV l     �
�	��
  �	  �  W XYX l     �Z[�  Z K E Interact with the Style panel to set the fill of the selected shape.   [ �\\ �   I n t e r a c t   w i t h   t h e   S t y l e   p a n e l   t o   s e t   t h e   f i l l   o f   t h e   s e l e c t e d   s h a p e .Y ]^] l     �_`�  _ ( " Requires that we have a selection   ` �aa D   R e q u i r e s   t h a t   w e   h a v e   a   s e l e c t i o n^ bcb i    ded I      ���� 0 setshapefill setShapeFill�  �  e O     Lfgf O    Khih k    Jjj klk l   ��� �  �  �   l mnm l   ��op��  o ( " Set up some convenience variables   p �qq D   S e t   u p   s o m e   c o n v e n i e n c e   v a r i a b l e sn rsr r    tut 4    ��v
�� 
cwinv m    ���� u o      ���� 0 w  s wxw r    yzy n    {|{ 4    ��}
�� 
tbar} m    ���� | o    ���� 0 w  z o      ���� 0 tb  x ~~ l   ��������  ��  ��   ��� l   ������  � d ^ First click on the Document button, then go back and click on the Format button. That'll make   � ��� �   F i r s t   c l i c k   o n   t h e   D o c u m e n t   b u t t o n ,   t h e n   g o   b a c k   a n d   c l i c k   o n   t h e   F o r m a t   b u t t o n .   T h a t ' l l   m a k e� ��� l   ������  � 7 1 sure we are seeing the Formatting tools palette.   � ��� b   s u r e   w e   a r e   s e e i n g   t h e   F o r m a t t i n g   t o o l s   p a l e t t e .� ��� r    "��� n     ��� 4     ���
�� 
radB� m    ���� � n    ��� 4    ���
�� 
sgrp� m    ���� � o    ���� 0 tb  � o      ���� 0 	docbutton 	DocButton� ��� r   # ,��� n   # *��� 4   ' *���
�� 
radB� m   ( )���� � n   # '��� 4   $ '���
�� 
sgrp� m   % &���� � o   # $���� 0 tb  � o      ���� 0 	fmtbutton 	FmtButton� ��� I  - 2�����
�� .prcsclicnull��� ��� uiel� o   - .���� 0 	docbutton 	DocButton��  � ��� I  3 8�����
�� .prcsclicnull��� ��� uiel� o   3 4���� 0 	fmtbutton 	FmtButton��  � ��� l  9 9��������  ��  ��  � ��� l  9 9������  �   Click on the Style tab.   � ��� 0   C l i c k   o n   t h e   S t y l e   t a b .� ��� r   9 B��� n   9 @��� 4   = @���
�� 
radB� m   > ?���� � n   9 =��� 4   : =���
�� 
rgrp� m   ; <���� � o   9 :���� 0 w  � o      ���� 0 styletab StyleTab� ��� I  C H�����
�� .prcsclicnull��� ��� uiel� o   C D���� 0 styletab StyleTab��  � ��� l  I I��������  ��  ��  � ��� l  I I������  � � � Select the Fill Type (caution -- there's a spinny triangle next to Fill and if that's closed, then we can't click any of the Fill items.   � ���   S e l e c t   t h e   F i l l   T y p e   ( c a u t i o n   - -   t h e r e ' s   a   s p i n n y   t r i a n g l e   n e x t   t o   F i l l   a n d   i f   t h a t ' s   c l o s e d ,   t h e n   w e   c a n ' t   c l i c k   a n y   o f   t h e   F i l l   i t e m s .� ��� l  I I��������  ��  ��  � ���� l  I I��������  ��  ��  ��  i 4    ���
�� 
prcs� m    �� ���  K e y n o t eg m     ���                                                                                  sevs  alis    \  Macintosh HD               ��½BD ����System Events.app                                              ������½        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  c ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 
pixelcolor 
pixelColor� ���� o      ���� 0 loc  ��  ��  � k     6�� ��� l     ������  � 3 - return the RGB of the pixel at the given loc   � ��� Z   r e t u r n   t h e   R G B   o f   t h e   p i x e l   a t   t h e   g i v e n   l o c� ��� l     ������  � � z many thanks to https://apple.stackexchange.com/questions/87801/how-to-get-color-of-pixel-in-coordinates-123-456-in-screen   � ��� �   m a n y   t h a n k s   t o   h t t p s : / / a p p l e . s t a c k e x c h a n g e . c o m / q u e s t i o n s / 8 7 8 0 1 / h o w - t o - g e t - c o l o r - o f - p i x e l - i n - c o o r d i n a t e s - 1 2 3 - 4 5 6 - i n - s c r e e n� ��� l     ������  � H B even though the -s parameter in the accepted answer is incorrect.   � ��� �   e v e n   t h o u g h   t h e   - s   p a r a m e t e r   i n   t h e   a c c e p t e d   a n s w e r   i s   i n c o r r e c t .� ��� l     ������  � # log "pixelColor(" & loc & ")"   � ��� : l o g   " p i x e l C o l o r ( "   &   l o c   &   " ) "� ��� l     ��������  ��  ��  � ��� r     ��� n     ��� 4    ���
�� 
cobj� m    ���� � o     ���� 0 loc  � o      ���� 0 x  � ��� r    ��� n    ��� 4    ���
�� 
cobj� m   	 
���� � o    ���� 0 loc  � o      ���� 0 y  � ��� r    ��� b    ��� b    ��� b    ��� b    ��� m    �� �     s c r e e n c a p t u r e   - R� o    ���� 0 x  � m     �  ,� o    ���� 0 y  � m     � 8 , 1 , 1   - t   b m p   $ T M P D I R / t e s t . b m p� o      ���� 0 screencapcmd screenCapCmd�  l   ����   < 6 There are actually four BGRA pixels in this bmp file.    �		 l   T h e r e   a r e   a c t u a l l y   f o u r   B G R A   p i x e l s   i n   t h i s   b m p   f i l e . 

 l   ����   Y S For info on the bmp file format, see https://en.wikipedia.org/wiki/BMP_file_format    � �   F o r   i n f o   o n   t h e   b m p   f i l e   f o r m a t ,   s e e   h t t p s : / / e n . w i k i p e d i a . o r g / w i k i / B M P _ f i l e _ f o r m a t  l   ��������  ��  ��    l   ����   C = The command to hexdump the 2x2 pixel screencapture bmp file.    � z   T h e   c o m m a n d   t o   h e x d u m p   t h e   2 x 2   p i x e l   s c r e e n c a p t u r e   b m p   f i l e .  l   ����   C = This depends on the bit depth being 24 or 32 bits per pixel.    � z   T h i s   d e p e n d s   o n   t h e   b i t   d e p t h   b e i n g   2 4   o r   3 2   b i t s   p e r   p i x e l .  l   ����   x r The value of the "-s" parameter is the offset, and it's based on what the DIB in the header of the bmp file says.    � �   T h e   v a l u e   o f   t h e   " - s "   p a r a m e t e r   i s   t h e   o f f s e t ,   a n d   i t ' s   b a s e d   o n   w h a t   t h e   D I B   i n   t h e   h e a d e r   o f   t h e   b m p   f i l e   s a y s .  !  r    "#" m    $$ �%% F x x d   - p   - l   3   - s   1 4 6   $ T M P D I R / t e s t . b m p# o      ���� 0 xxdcmd xxdCmd! &'& l   ��()��  ( > 8 The order of the color components isn't RGB but is BGR.   ) �** p   T h e   o r d e r   o f   t h e   c o l o r   c o m p o n e n t s   i s n ' t   R G B   b u t   i s   B G R .' +,+ l   ��������  ��  ��  , -.- l   ��/0��  / h b The sed command reverses the order of the output of the hexdump so that we get RGB instead of BGR   0 �11 �   T h e   s e d   c o m m a n d   r e v e r s e s   t h e   o r d e r   o f   t h e   o u t p u t   o f   t h e   h e x d u m p   s o   t h a t   w e   g e t   R G B   i n s t e a d   o f   B G R. 232 r    !454 m    66 �77 D s e d   ' s / \ ( . . \ ) \ ( . . \ ) \ ( . . \ ) / \ 3 \ 2 \ 1 / '5 o      ���� 0 sedcmd sedCmd3 898 l  " "��������  ��  ��  9 :;: r   " 1<=< l  " />����> I  " /��?��
�� .sysoexecTEXT���     TEXT? b   " +@A@ b   " )BCB b   " 'DED b   " %FGF o   " #���� 0 screencapcmd screenCapCmdG m   # $HH �II    & &  E o   % &���� 0 xxdcmd xxdCmdC m   ' (JJ �KK    |  A o   ) *���� 0 sedcmd sedCmd��  ��  ��  = o      ���� 0 ans  ; LML l  2 2��������  ��  ��  M NON L   2 4PP o   2 3���� 0 ans  O Q��Q l  5 5��������  ��  ��  ��  � RSR l     ��������  ��  ��  S TUT i     #VWV I      ��X���� 0 abs  X Y��Y o      ���� 0 num  ��  ��  W k     ZZ [\[ Z    ]^����] A     _`_ o     ���� 0 num  ` m    ����  ^ L    	aa d    bb o    ���� 0 num  ��  ��  \ c��c L    dd o    �� 0 num  ��  U efe l     �~�}�|�~  �}  �|  f ghg i   $ 'iji I      �{�z�y�{ $0 findslidetopleft findSlideTopLeft�z  �y  j k    �kk lml l     �x�w�v�x  �w  �v  m non l     �upq�u  p J D Find the actual top-left of the slide object within the slide pane.   q �rr �   F i n d   t h e   a c t u a l   t o p - l e f t   o f   t h e   s l i d e   o b j e c t   w i t h i n   t h e   s l i d e   p a n e .o sts l     �tuv�t  u \ V There doesn't seem to be an AppleScript handle to get to the slide object's location.   v �ww �   T h e r e   d o e s n ' t   s e e m   t o   b e   a n   A p p l e S c r i p t   h a n d l e   t o   g e t   t o   t h e   s l i d e   o b j e c t ' s   l o c a t i o n .t xyx l     �sz{�s  z [ U Instead, I can click on the document and get the panel that contains the slide. Then   { �|| �   I n s t e a d ,   I   c a n   c l i c k   o n   t h e   d o c u m e n t   a n d   g e t   t h e   p a n e l   t h a t   c o n t a i n s   t h e   s l i d e .   T h e ny }~} l     �r��r   ? 9 I have to find where the slide is within the slide pane.   � ��� r   I   h a v e   t o   f i n d   w h e r e   t h e   s l i d e   i s   w i t h i n   t h e   s l i d e   p a n e .~ ��� l     �q�p�o�q  �p  �o  � ��� O     ��� O    ��� k    �� ��� p    �� �n�m�n 0 	slidepane 	slidePane�m  � ��l� r    ��� l   ��k�j� I   �i�h�
�i .prcsclicnull��� ��� uiel�h  � �g��f
�g 
insh� J    �� ��� m    �e�e?� ��d� m    �c�cg�d  �f  �k  �j  � o      �b�b 0 	slidepane 	slidePane�l  � 4    �a�
�a 
prcs� m    �� ���  K e y n o t e� m     ���                                                                                  sevs  alis    \  Macintosh HD               ��½BD ����System Events.app                                              ������½        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l   �`�_�^�`  �_  �^  � ��]� O   ���� k   ��� ��� p    �� �\�[�\ 0 	slidepane 	slidePane�[  � ��� Q    1���� k   ! !�� ��� l  ! !�Z���Z  � : 4 DOESN'T WORK: display alert properties of slidePane   � ��� h   D O E S N ' T   W O R K :   d i s p l a y   a l e r t   p r o p e r t i e s   o f   s l i d e P a n e� ��Y� l  ! !�X���X  � ! log properties of slidePane   � ��� 6 l o g   p r o p e r t i e s   o f   s l i d e P a n e�Y  � R      �W��
�W .ascrerr ****      � ****� o      �V�V 0 errmsg errMsg� �U��T
�U 
errn� o      �S�S 0 errnum errNum�T  � b   * 1��� m   * +�� ��� 8 p r o p e r t i e s   o f   s l i d e P a n e   - - >  � l  + 0��R�Q� I  + 0�P��O
�P .ascrcmnt****      � ****� o   + ,�N�N 0 errmsg errMsg�O  �R  �Q  � ��� l  2 2�M�L�K�M  �L  �K  � ��� l  2 2�J�I�H�J  �I  �H  � ��� l  2 2�G���G  � 2 , STUDY UI element from System Events.sdef...   � ��� X   S T U D Y   U I   e l e m e n t   f r o m   S y s t e m   E v e n t s . s d e f . . .� ��� l  2 2�F���F  � � � REF: https://developer.apple.com/library/archive/documentation/AppleScript/Conceptual/AppleScriptLangGuide/conceptual/ASLR_fundamentals.html#//apple_ref/doc/uid/TP40000983-CH218-SW8   � ���l   R E F :   h t t p s : / / d e v e l o p e r . a p p l e . c o m / l i b r a r y / a r c h i v e / d o c u m e n t a t i o n / A p p l e S c r i p t / C o n c e p t u a l / A p p l e S c r i p t L a n g G u i d e / c o n c e p t u a l / A S L R _ f u n d a m e n t a l s . h t m l # / / a p p l e _ r e f / d o c / u i d / T P 4 0 0 0 0 9 8 3 - C H 2 1 8 - S W 8� ��� l  2 2�E�D�C�E  �D  �C  � ��� l  2 2�B���B  � � � Find the actual top-left of the slide. Start with the top-left of the pane that contains the slide. Click it. If the color of the pixel   � ���   F i n d   t h e   a c t u a l   t o p - l e f t   o f   t h e   s l i d e .   S t a r t   w i t h   t h e   t o p - l e f t   o f   t h e   p a n e   t h a t   c o n t a i n s   t h e   s l i d e .   C l i c k   i t .   I f   t h e   c o l o r   o f   t h e   p i x e l� ��� l  2 2�A���A  � [ U clicked is the background color, then move half-way to the bottom right of the pane.   � ��� �   c l i c k e d   i s   t h e   b a c k g r o u n d   c o l o r ,   t h e n   m o v e   h a l f - w a y   t o   t h e   b o t t o m   r i g h t   o f   t h e   p a n e .� ��� r   2 <��� n   2 :��� 4   7 :�@�
�@ 
cobj� m   8 9�?�? � l  2 7��>�=� c   2 7��� n   2 5��� 1   3 5�<
�< 
pALL� o   2 3�;�; 0 	slidepane 	slidePane� m   5 6�:
�: 
list�>  �=  � o      �9�9 0 topleft  � ��� r   = E��� [   = C��� l  = A��8�7� n   = A��� 4   > A�6�
�6 
cobj� m   ? @�5�5 � o   = >�4�4 0 topleft  �8  �7  � m   A B�3�3 � o      �2�2 0 minx minX� ��� r   F N��� [   F L��� l  F J��1�0� n   F J��� 4   G J�/�
�/ 
cobj� m   H I�.�. � o   F G�-�- 0 topleft  �1  �0  � m   J K�,�, � o      �+�+ 0 miny minY� ��� I  O ^�*��)
�* .ascrcmnt****      � ****� b   O Z��� b   O X��� b   O T��� m   O R   � 
 m i n X =� o   R S�(�( 0 minx minX� m   T W �  ,   m i n Y =� o   X Y�'�' 0 miny minY�)  �  r   _ j n  _ h	 I   ` h�&
�%�& 0 
pixelcolor 
pixelColor
 �$ J   ` d  o   ` a�#�# 0 minx minX �" o   a b�!�! 0 miny minY�"  �$  �%  	  f   _ ` o      � �  0 topleftcolor topleftColor  I  k ���
� .ascrcmnt****      � **** b   k � b   k ~ l  k z�� c   k z b   k v b   k t l  k p�� c   k p  o   k l�� 0 minx minX  m   l o�
� 
TEXT�  �   m   p s!! �""  ,   o   t u�� 0 miny minY m   v y�
� 
TEXT�  �   m   z }## �$$    =   o   ~ �� 0 topleftcolor topleftColor�   %&% l  � �����  �  �  & '(' r   � �)*) m   � ��
� boovtrue* o      �� 0 notdone notDone( +,+ r   � �-.- m   � ��� d. o      �� 0 deltay deltaY, /0/ r   � �121 m   � ��� 2 o      �� 0 
maxrepeats 
maxRepeats0 343 r   � �565 m   � ���  6 o      �
�
 0 irepeats iRepeats4 787 l  � �9:;9 r   � �<=< m   � ��	
�	 boovfals= o      �� 0 
nowinslide 
nowInSlide: c ] Signal whether the point currently under consideration is not within the bounds of the slide   ; �>> �   S i g n a l   w h e t h e r   t h e   p o i n t   c u r r e n t l y   u n d e r   c o n s i d e r a t i o n   i s   n o t   w i t h i n   t h e   b o u n d s   o f   t h e   s l i d e8 ?@? l  � �ABCA r   � �DED m   � ��
� boovfalsE o      �� 0 previnslide prevInSlideB Y S Signal whether the PREVIOUSLY considered point was within the bounds of the slide.   C �FF �   S i g n a l   w h e t h e r   t h e   P R E V I O U S L Y   c o n s i d e r e d   p o i n t   w a s   w i t h i n   t h e   b o u n d s   o f   t h e   s l i d e .@ GHG l  � ��IJ�  I ! set paneBgColor to "d8d8d9"   J �KK 6 s e t   p a n e B g C o l o r   t o   " d 8 d 8 d 9 "H LML r   � �NON m   � �PP �QQ  e 5 e 5 e 6O o      �� 0 panebgcolor paneBgColorM RSR l  � �����  �  �  S TUT V   �nVWV k   �iXX YZY l  � �[\][ r   � �^_^ [   � �`a` o   � �� �  0 irepeats iRepeatsa m   � ����� _ o      ���� 0 irepeats iRepeats\ 3 - keep track of how many times we've repeated.   ] �bb Z   k e e p   t r a c k   o f   h o w   m a n y   t i m e s   w e ' v e   r e p e a t e d .Z cdc I  � ���e��
�� .ascrcmnt****      � ****e b   � �fgf m   � �hh �ii  i R e p e a t s =g o   � ����� 0 irepeats iRepeats��  d jkj r   � �lml o   � ����� 0 
nowinslide 
nowInSlidem o      ���� 0 previnslide prevInSlidek non l  � ���������  ��  ��  o pqp r   � �rsr n  � �tut I   � ���v���� 0 
pixelcolor 
pixelColorv w��w J   � �xx yzy o   � ����� 0 minx minXz {��{ o   � ����� 0 miny minY��  ��  ��  u  f   � �s o      ���� 0 topleftcolor topleftColorq |}| l  � ���������  ��  ��  } ~~ Z   � ������� >   � ���� o   � ����� 0 topleftcolor topleftColor� o   � ����� 0 panebgcolor paneBgColor� k   � ��� ��� l  � �������  � "  We're WITHIN the slide now!   � ��� 8   W e ' r e   W I T H I N   t h e   s l i d e   n o w !� ���� r   � ���� m   � ���
�� boovtrue� o      ���� 0 
nowinslide 
nowInSlide��  ��  � k   � ��� ��� l  � �������  � 5 / we're still (or back) into the pane background   � ��� ^   w e ' r e   s t i l l   ( o r   b a c k )   i n t o   t h e   p a n e   b a c k g r o u n d� ���� r   � ���� m   � ���
�� boovfals� o      ���� 0 
nowinslide 
nowInSlide��   ��� l  � ���������  ��  ��  � ��� I  ������
�� .ascrcmnt****      � ****� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� l  � ������� c   � ���� b   � ���� b   � ���� l  � ������� c   � ���� o   � ����� 0 minx minX� m   � ���
�� 
TEXT��  ��  � m   � ��� ���  ,  � o   � ����� 0 miny minY� m   � ���
�� 
TEXT��  ��  � m   � ��� ���    =  � o   � ����� 0 topleftcolor topleftColor� m   � ��� ���    d e l t a Y =� o   � ����� 0 deltay deltaY� m   � ��� ���    n o w I n S l i d e =� o   � ����� 0 
nowinslide 
nowInSlide��  � ��� l ��������  ��  ��  � ��� l ������  � � � If previous point was the the opposite of current point, and if deltaX isn't too small, work our way back up towards the edge of the slide.   � ���   I f   p r e v i o u s   p o i n t   w a s   t h e   t h e   o p p o s i t e   o f   c u r r e n t   p o i n t ,   a n d   i f   d e l t a X   i s n ' t   t o o   s m a l l ,   w o r k   o u r   w a y   b a c k   u p   t o w a r d s   t h e   e d g e   o f   t h e   s l i d e .� ��� Z  7������� >  ��� o  ���� 0 previnslide prevInSlide� o  ���� 0 
nowinslide 
nowInSlide� Z  	3������ ?  	��� n 	��� I  
������� 0 abs  � ���� o  
���� 0 deltay deltaY��  ��  �  f  	
� m  ���� � k  -�� ��� l ������  � w q If deltaY is still big, then we need to set it to negative half deltaX and prepare to go in the other direction.   � ��� �   I f   d e l t a Y   i s   s t i l l   b i g ,   t h e n   w e   n e e d   t o   s e t   i t   t o   n e g a t i v e   h a l f   d e l t a X   a n d   p r e p a r e   t o   g o   i n   t h e   o t h e r   d i r e c t i o n .� ��� r  ��� c  ��� l ������ ]  ��� m  �� ��      � o  ���� 0 deltay deltaY��  ��  � m  ��
�� 
long� o      ���� 0 deltay deltaY� ���� Z  -������� =   #��� o   !���� 0 deltay deltaY� m  !"����  � r  &)��� m  &'��
�� boovfals� o      ���� 0 notdone notDone��  ��  ��  ��  � r  03��� m  01��
�� boovfals� o      ���� 0 notdone notDone��  ��  � ��� l 88��������  ��  ��  � ��� Z  8M������� ?  8;��� o  89���� 0 irepeats iRepeats� o  9:���� 0 
maxrepeats 
maxRepeats� k  >I�� ��� I >E�����
�� .ascrcmnt****      � ****� m  >A�� ��� < T o o   m a n y   r e p e a t s .   E x i t i n g   l o o p��  � ���� r  FI��� m  FG��
�� boovfals� o      ���� 0 notdone notDone��  ��  ��  � ��� l NN��������  ��  ��  � ��� Z  Ng������� o  NO���� 0 notdone notDone� k  Rc    l RR����   H B We're still in the background. Update minX, minY and check again.    � �   W e ' r e   s t i l l   i n   t h e   b a c k g r o u n d .   U p d a t e   m i n X ,   m i n Y   a n d   c h e c k   a g a i n .  l RR��	��    set minX to minX + deltaY   	 �

 2 s e t   m i n X   t o   m i n X   +   d e l t a Y  r  RW [  RU o  RS���� 0 miny minY o  ST���� 0 deltay deltaY o      ���� 0 miny minY �� r  Xc n Xa I  Ya������ 0 
pixelcolor 
pixelColor �� J  Y]  o  YZ���� 0 minx minX �� o  Z[���� 0 miny minY��  ��  ��    f  XY o      ���� 0 topleftcolor topleftColor��  ��  ��  � �� l hh��������  ��  ��  ��  W o   � ����� 0 notdone notDoneU  l oo��������  ��  ��     l oo��!"��  ! ` Z If we're here, assume we're in the slide's shadow. At 100% zoom, the shadow is 9px wide.    " �## �   I f   w e ' r e   h e r e ,   a s s u m e   w e ' r e   i n   t h e   s l i d e ' s   s h a d o w .   A t   1 0 0 %   z o o m ,   t h e   s h a d o w   i s   9 p x   w i d e .    $%$ l oo��&'��  & K E So add 9px to the y value to get us to the actual edge of the slide.   ' �(( �   S o   a d d   9 p x   t o   t h e   y   v a l u e   t o   g e t   u s   t o   t h e   a c t u a l   e d g e   o f   t h e   s l i d e .% )*) r  ov+,+ [  ot-.- o  op���� 0 miny minY. m  ps���� 
, o      ���� 0 miny minY* /0/ l ww��������  ��  ��  0 121 I w���3��
�� .ascrcmnt****      � ****3 b  w|454 m  wz66 �77 X f i n d S l i d e T o p L e f t   A n s w e r :   t o p   o f   s l i d e   i s   a t  5 o  z{���� 0 miny minY��  2 8��8 l ������~��  �  �~  ��  � m    99�                                                                                  keyn  alis    &  Macintosh HD               ��½BD ����Keynote.app                                                    ������        ����  
 cu             Applications  /:Applications:Keynote.app/     K e y n o t e . a p p    M a c i n t o s h   H D  Applications/Keynote.app  / ��  �]  h :;: l     �}�|�{�}  �|  �{  ; <=< l     �z>?�z  > ! addShape("Circle") -- works   ? �@@ 6 a d d S h a p e ( " C i r c l e " )   - -   w o r k s= ABA l     �yCD�y  C $ setShapePos(200, 200) -- works   D �EE < s e t S h a p e P o s ( 2 0 0 ,   2 0 0 )   - -   w o r k sB FGF l     �xHI�x  H % setShapeSize(190, 720) -- works   I �JJ > s e t S h a p e S i z e ( 1 9 0 ,   7 2 0 )   - -   w o r k sG KLK l     �wMN�w  M  WIP:setShapeFill()   N �OO $ W I P : s e t S h a p e F i l l ( )L PQP l     �vRS�v  R 8 2WIP:drawFreehand({{10, 10}, {100, 30}, {300, 10}})   S �TT d W I P : d r a w F r e e h a n d ( { { 1 0 ,   1 0 } ,   { 1 0 0 ,   3 0 } ,   { 3 0 0 ,   1 0 } } )Q UVU l    W�u�tW I     �s�r�q�s $0 findslidetopleft findSlideTopLeft�r  �q  �u  �t  V XYX l     �pZ[�p  Z  slideinfo()   [ �\\  s l i d e i n f o ( )Y ]�o] l     �n^_�n  ^ * $display alert pixelColor({410, 410})   _ �`` H d i s p l a y   a l e r t   p i x e l C o l o r ( { 4 1 0 ,   4 1 0 } )�o       �mabcdefghijklm�l�k�j�i�h�g�f�e�d�c�m  a �b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�b 0 addshape addShape�a 0 	listprops 	listProps�` 0 	slideinfo  �_ 0 drawfreehand drawFreehand�^ 0 setshapepos setShapePos�] 0 setshapesize setShapeSize�\ 0 setshapefill setShapeFill�[ 0 
pixelcolor 
pixelColor�Z 0 abs  �Y $0 findslidetopleft findSlideTopLeft
�X .aevtoappnull  �   � ****�W 0 	slidepane 	slidePane�V  �U  �T  �S  �R  �Q  �P  �O  �N  �M  b �L �K�Jno�I�L 0 addshape addShape�K �Hp�H p  �G�G "0 wantedshapename wantedShapeName�J  n 	�F�E�D�C�B�A�@�?�>�F "0 wantedshapename wantedShapeName�E 0 w  �D 0 tb  �C 0 shapebutton shapeButton�B 0 shapedialog shapeDialog�A 0 errmsg errMsg�@ 0 errnum errNum�? 0 searchfield searchField�> 0 
firstmatch 
firstMatcho  ��= ��<�;�: 8�9�8q�7�6�5 t�4�3�2�1�0
�= 
prcs
�< 
cwin
�; 
tbar
�: 
chbx
�9 
popv�8 0 errmsg errMsgq �/�.�-
�/ 
errn�. 0 errnum errNum�-  
�7 .prcsclicnull��� ��� uiel
�6 
txtf
�5 
valL
�4 .sysodelanull��� ��� nmbr
�3 
scra
�2 
list
�1 
sgrp
�0 
butT�I v� r*��/ j*�k/E�O��k/E�O���/E�O ��k/E�W X  	�j 
O��k/E�O��k/E�O���,FO�j O��k/a k/a k/a k/a k/E�O�j 
OPUUc �, ��+�*rs�)�, 0 	listprops 	listProps�+ �(t�( t  �'�' 0 myobject MyObject�*  r �&�%�$�#�"�!� ������& 0 myobject MyObject�% 0 errtext errText�$ 0 errnum errNum�# 0 pstart pStart�" 0 	structure  �! 0 tidl TIDL�  
0 fields  � 0 	mymessage 	myMessage� 0 f  � 0 
theseitems 
theseItems� 0 itempropname itemPropName� 0 	itemvalue 	itemValues  ����u� �������� ��� �� ��!�#�
0
� .sysodisAaleR        TEXT
� 
pALL� 0 errtext errTextu �	��
�	 
errn� 0 errnum errNum�  
� 
psof
� 
psin� 
� .sysooffslong    ��� null
� 
ctxt
� 
leng
� 
ascr
� 
txdl
� 
citm
� 
list
� .corecnte****       ****
� 
cobj
� 
tab 
�
 
lnfd�) ��j O 	��,EW �X  *���� 	E�O�[�\[Z�\Z��,l2E�O��,E�O���,FO��-a &E�Oa E�O \k�j kh a ��,FO�a �/�-a &E�O�a k/[�\[Zl\�,2E�O�a l/E�O�a %�%_ %a %�%_ %E�[OY��O���,FOa E�O�j d �9��vw�� 0 	slideinfo  �  �  v ��� ������� 0 theslide theSlide� 0 errmsg errMsg�  0 errnum errNum�� 0 si  �� 0 a  �� 0 i  w >���������������x|�������
�� .ascrcmnt****      � ****
�� 
docu
�� 
crsl
�� 
sdbi
�� 
pALL
�� 
TEXT�� 0 errmsg errMsgx ������
�� 
errn�� 0 errnum errNum��  
�� 
list
�� .corecnte****       ****
�� 
cobj� n�j O� d*�k/�,E�O��,j O 
��,�&W 
X  	�E�O�%j O�j O��,�&j O��,�&E�O k�j kh ��/j [OY��OPUe �������yz���� 0 drawfreehand drawFreehand�� ��{�� {  ���� 0 wantedpoints wantedPoints��  y ���������������������������� 0 wantedpoints wantedPoints�� 0 w  �� 0 tb  �� 0 shapebutton shapeButton�� 0 shapedialog shapeDialog�� 0 errmsg errMsg�� 0 errnum errNum�� 0 freehandbtn freeHandBtn�� 0 slidetopleft slideTopLeft�� 0 i  �� 0 curpt curPt�� 0 newx newX�� 0 newy newYz �����������������|����"��������������
�� 
prcs
�� .miscactvnull��� ��� null
�� 
cwin
�� 
tbar
�� 
chbx
�� 
popv�� 0 errmsg errMsg| ������
�� 
errn�� 0 errnum errNum��  
�� .prcsclicnull��� ��� uiel
�� 
butT
�� .sysodelanull��� ��� nmbr�� ��� �
�� .sysodisAaleR        TEXT
�� 
leng
�� 
cobj
�� 
insh�� �� �*��/ �*j O*�k/E�O��k/E�O���/E�O ��k/E�W X 	 
�j O��k/E�O��k/E�O�j O�j O�j O�a lvE�Okj O Nk�a ,Ekh 	�a �/E�O�a k/�a k/E�O�a l/�a l/E�O*a ��lvl O�j [OY��Olj UUf �������}~���� 0 setshapepos setShapePos�� ����   ������ 0 wantedx wantedX�� 0 wantedy wantedY��  } ���������������� 0 wantedx wantedX�� 0 wantedy wantedY�� 0 doc  �� 0 sel  �� 0 sel1  �� 0 errmsg errMsg�� 0 errnum errNum~ ������������������
�� 
docu
�� 
sele
�� 
cobj
�� 
nmbr
�� .sysodisAaleR        TEXT
�� 
sipo�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  �� H� D*�k/E�O .��,E�O��-�,k 
�j Y hO��k/E�O��lv��,FW X  	�%j Ug ������������� 0 setshapesize setShapeSize�� ����� �  ������ 0 wantedx wantedX�� 0 wantedy wantedY��  � ���������������� 0 wantedx wantedX�� 0 wantedy wantedY�� 0 doc  �� 0 sel  �� 0 sel1  �� 0 errmsg errMsg�� 0 errnum errNum� U��������2���������S
�� 
docu
�� 
sele
�� 
cobj
�� 
nmbr
�� .sysodisAaleR        TEXT
�� 
sitw
�� 
sith�� 0 errmsg errMsg� ������
�� 
errn�� 0 errnum errNum��  �� K� G*�k/E�O 1��,E�O��-�,k 
�j Y hO��k/E�O���,FO���,FW X 	 
�%j Uh ��e���������� 0 setshapefill setShapeFill��  ��  � ������������ 0 w  �� 0 tb  �� 0 	docbutton 	DocButton�� 0 	fmtbutton 	FmtButton�� 0 styletab StyleTab� 	����������������
�� 
prcs
�� 
cwin
�� 
tbar
�� 
sgrp
�� 
radB
�� .prcsclicnull��� ��� uiel
�� 
rgrp�� M� I*��/ A*�k/E�O��k/E�O��k/�m/E�O��k/�k/E�O�j O�j O��k/�k/E�O�j OPUUi ������������� 0 
pixelcolor 
pixelColor�� ����� �  ���� 0 loc  ��  � ��������~�}�|�� 0 loc  �� 0 x  �� 0 y  � 0 screencapcmd screenCapCmd�~ 0 xxdcmd xxdCmd�} 0 sedcmd sedCmd�| 0 ans  � 	�{�$6HJ�z
�{ 
cobj
�z .sysoexecTEXT���     TEXT�� 7��k/E�O��l/E�O�%�%�%�%E�O�E�O�E�O��%�%�%�%j E�O�OPj �yW�x�w���v�y 0 abs  �x �u��u �  �t�t 0 num  �w  � �s�s 0 num  �  �v �j �'Y hO�k �rj�q�p���o�r $0 findslidetopleft findSlideTopLeft�q  �p  � �n�m�l�k�j�i�h�g�f�e�d�c�b�n 0 errmsg errMsg�m 0 errnum errNum�l 0 topleft  �k 0 minx minX�j 0 miny minY�i 0 topleftcolor topleftColor�h 0 notdone notDone�g 0 deltay deltaY�f 0 
maxrepeats 
maxRepeats�e 0 irepeats iRepeats�d 0 
nowinslide 
nowInSlide�c 0 previnslide prevInSlide�b 0 panebgcolor paneBgColor� $��a��`�_�^�]�\9�[���Z�Y�X�W �V�U!#�T�SPh�����R��Q��P6
�a 
prcs
�` 
insh�_?�^g
�] .prcsclicnull��� ��� uiel�\ 0 	slidepane 	slidePane�[ 0 errmsg errMsg� �O�N�M
�O 
errn�N 0 errnum errNum�M  
�Z .ascrcmnt****      � ****
�Y 
pALL
�X 
list
�W 
cobj�V 0 
pixelcolor 
pixelColor
�U 
TEXT�T d�S �R 0 abs  
�Q 
long�P 
�o�� *��/ *���lvl E�UUO�f hW X 	 
�j %O��,�&�m/E�O��k/kE�O��l/kE�Oa �%a %�%j O)��lvk+ E�O�a &a %�%a &a %�%j OeE�Oa E�Oa E�OjE�OfE�OfE�Oa E�O �h��kE�Oa �%j O�E�O)��lvk+ E�O�� eE�Y fE�O�a &a %�%a &a %�%a %�%a %�%j O�� /)�k+ k a � a  &E�O�j  fE�Y hY fE�Y hO�� a !j OfE�Y hO� ��E�O)��lvk+ E�Y hOP[OY�?O�a "E�Oa #�%j OPUl �L��K�J���I
�L .aevtoappnull  �   � ****� k     �� U�H�H  �K  �J  �  � �G�G $0 findslidetopleft findSlideTopLeft�I *j+  m �� ��F�E� ��D�C� ��B�� ��A�
�A 
pcap� ���  K e y n o t e
�B 
cwin� ���  t e s t m e . k e y
�D 
splg�C 
�F 
scra�E �l  �k  �j  �i  �h  �g  �f  �e  �d  �c   ascr  ��ޭ