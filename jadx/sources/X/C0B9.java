package X;

import android.content.Context;
import android.os.Build;
import android.os.StrictMode;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: X.0B9  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0B9 {
    public static boolean A00 = true;
    public static int A01;
    public static int A02;
    public static Context A03;
    public static C0B5 A04;
    public static AnonymousClass086 A05;
    public static final boolean A09;
    public static volatile C0BC[] A0C;
    public static final ReentrantReadWriteLock A08 = new ReentrantReadWriteLock();
    public static final AtomicInteger A07 = new AtomicInteger(0);
    public static final HashSet A06 = new HashSet();
    public static final Map A0A = AnonymousClass000.A0F();
    public static final Set A0B = Collections.newSetFromMap(new ConcurrentHashMap());

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:111:0x01ed
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static void A02(android.content.Context r9, int r10) {
        /*
            Method dump skipped, instructions count: 548
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0B9.A02(android.content.Context, int):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:96:0x0156, code lost:
        if (r0 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0158, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A0A(java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0B9.A0A(java.lang.String):boolean");
    }

    static {
        boolean z = false;
        try {
            if (Build.VERSION.SDK_INT >= 18) {
                z = true;
            }
        } catch (NoClassDefFoundError | UnsatisfiedLinkError unused) {
        }
        A09 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static int A00() {
        ReentrantReadWriteLock reentrantReadWriteLock = A08;
        reentrantReadWriteLock.writeLock().lock();
        try {
            int i = A02;
            boolean A0Q = AnonymousClass000.A0Q(i & 2);
            boolean z = A0Q;
            if ((i & 256) != 0) {
                z = (A0Q ? 1 : 0) | true;
            }
            int i2 = z;
            if ((i & 128) == 0) {
                i2 = (z ? 1 : 0) | true;
            }
            return i2;
        } finally {
            A06(reentrantReadWriteLock);
        }
    }

    public static String A01(String str) {
        ReentrantReadWriteLock reentrantReadWriteLock = A08;
        reentrantReadWriteLock.readLock().lock();
        try {
            String str2 = null;
            if (A0C != null) {
                int i = 0;
                while (str2 == null) {
                    if (i >= A0C.length) {
                        break;
                    }
                    str2 = A0C[i].A06(str);
                    i++;
                }
            }
            return str2;
        } finally {
            AnonymousClass000.A0O(reentrantReadWriteLock);
        }
    }

    public static void A03(StrictMode.ThreadPolicy threadPolicy, String str, int i) {
        AtomicReference atomicReference = AnonymousClass044.A00;
        AnonymousClass045[] A0R = AnonymousClass000.A0R(atomicReference);
        if (A0R != null && 0 < A0R.length) {
            throw AnonymousClass000.A08("onLoadDependencyStart");
        }
        try {
            A08(threadPolicy, str, null, null, i | 1);
            AnonymousClass045[] A0R2 = AnonymousClass000.A0R(atomicReference);
            if (A0R2 != null && 0 < A0R2.length) {
                throw AnonymousClass000.A08("onLoadDependencyEnd");
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                AnonymousClass045[] A0R3 = AnonymousClass000.A0R(atomicReference);
                if (A0R3 != null && 0 < A0R3.length) {
                    throw AnonymousClass000.A08("onLoadDependencyEnd");
                }
                throw th2;
            }
        }
    }

    public static void A04(C0BC c0bc) {
        ReentrantReadWriteLock reentrantReadWriteLock = A08;
        reentrantReadWriteLock.writeLock().lock();
        try {
            if (A07()) {
                c0bc.A07(A00());
                C0BC[] c0bcArr = new C0BC[A0C.length + 1];
                c0bcArr[0] = c0bc;
                System.arraycopy(A0C, 0, c0bcArr, 1, A0C.length);
                A0C = c0bcArr;
                A07.getAndIncrement();
                AbstractC02450Ax.A00("SoLoader");
                return;
            }
            throw AnonymousClass000.A07("SoLoader.init() not yet called");
        } finally {
            A06(reentrantReadWriteLock);
        }
    }

    public static boolean A07() {
        boolean z = true;
        if (A0C != null) {
            return true;
        }
        ReentrantReadWriteLock reentrantReadWriteLock = A08;
        reentrantReadWriteLock.readLock().lock();
        try {
            if (A0C == null) {
                z = false;
            }
            return z;
        } finally {
            AnonymousClass000.A0O(reentrantReadWriteLock);
        }
    }

    public static boolean A09(String str) {
        if (A00) {
            return A0A(str);
        }
        return C0BL.A02(str);
    }

    public static void A05(ArrayList arrayList) {
        String str;
        if (C0BF.A08()) {
            str = "/system/lib64:/vendor/lib64";
        } else {
            str = "/system/lib:/vendor/lib";
        }
        String str2 = System.getenv("LD_LIBRARY_PATH");
        if (str2 != null && !str2.equals("")) {
            str = AnonymousClass000.A09(":", str, AnonymousClass000.A0D(str2));
        }
        Iterator it = new HashSet(Arrays.asList(str.split(":"))).iterator();
        while (it.hasNext()) {
            AbstractC02450Ax.A00("SoLoader");
            arrayList.add(new C08V(new File((String) it.next()), 2));
        }
    }

    public static void A06(ReentrantReadWriteLock reentrantReadWriteLock) {
        reentrantReadWriteLock.writeLock().unlock();
    }

    /* JADX WARN: Removed duplicated region for block: B:914:0x0fc6  */
    /* JADX WARN: Removed duplicated region for block: B:915:0x0fc7 A[Catch: UnsatisfiedLinkError -> 0x0fd8, all -> 0x0ff9, TryCatch #4 {all -> 0x100d, blocks: (B:22:0x0048, B:25:0x004d, B:30:0x0057, B:36:0x0060, B:39:0x0070, B:43:0x007a, B:44:0x0080, B:48:0x008a, B:49:0x008d, B:82:0x00f2, B:83:0x00f5, B:85:0x00fa, B:86:0x00fd, B:87:0x0100, B:925:0x0fff, B:103:0x0122, B:104:0x0125, B:111:0x0151, B:112:0x0154, B:110:0x014d, B:114:0x0156, B:116:0x015c, B:118:0x0164, B:119:0x0171, B:125:0x017a, B:127:0x0180, B:132:0x018d, B:134:0x0191, B:926:0x1000, B:927:0x1003, B:135:0x0198, B:136:0x01a1, B:137:0x01a4, B:138:0x01b2, B:139:0x01b3, B:141:0x01bb, B:916:0x0fd0, B:915:0x0fc7, B:142:0x01c1, B:144:0x01c9, B:145:0x01cf, B:147:0x01d7, B:148:0x01dd, B:150:0x01e5, B:151:0x01eb, B:153:0x01f3, B:154:0x01f9, B:156:0x0201, B:157:0x0207, B:159:0x020f, B:160:0x0215, B:162:0x021d, B:163:0x0223, B:165:0x022b, B:166:0x0231, B:168:0x0239, B:169:0x023f, B:171:0x0247, B:172:0x024d, B:174:0x0255, B:175:0x025b, B:177:0x0263, B:178:0x0269, B:180:0x0271, B:181:0x0277, B:183:0x027f, B:184:0x0285, B:186:0x028d, B:187:0x0293, B:189:0x029b, B:190:0x02a1, B:192:0x02a9, B:193:0x02af, B:195:0x02b7, B:196:0x02bd, B:198:0x02c5, B:199:0x02cb, B:201:0x02d3, B:202:0x02d9, B:204:0x02e1, B:205:0x02e7, B:207:0x02ef, B:208:0x02f5, B:210:0x02fd, B:211:0x0303, B:213:0x030b, B:214:0x0311, B:216:0x0319, B:217:0x031f, B:219:0x0327, B:220:0x032d, B:222:0x0335, B:223:0x033b, B:225:0x0343, B:226:0x0349, B:228:0x0351, B:229:0x0357, B:231:0x035f, B:232:0x0365, B:234:0x036d, B:235:0x0373, B:237:0x037b, B:238:0x0381, B:240:0x0389, B:241:0x038f, B:243:0x0397, B:244:0x039d, B:246:0x03a5, B:247:0x03ab, B:249:0x03b3, B:250:0x03b9, B:252:0x03c1, B:253:0x03c7, B:255:0x03cf, B:256:0x03d5, B:258:0x03dd, B:259:0x03e3, B:261:0x03eb, B:262:0x03f1, B:264:0x03f9, B:265:0x03ff, B:267:0x0407, B:268:0x040d, B:270:0x0415, B:271:0x041b, B:273:0x0423, B:274:0x0429, B:276:0x0431, B:277:0x0437, B:279:0x043f, B:280:0x0445, B:282:0x044d, B:283:0x0453, B:285:0x045b, B:286:0x0461, B:288:0x0469, B:289:0x046f, B:291:0x0477, B:292:0x047d, B:294:0x0485, B:295:0x048b, B:297:0x0493, B:298:0x0499, B:300:0x04a1, B:301:0x04a7, B:303:0x04af, B:304:0x04b5, B:306:0x04bd, B:307:0x04c3, B:309:0x04cb, B:310:0x04d1, B:312:0x04d9, B:313:0x04df, B:315:0x04e7, B:316:0x04ed, B:318:0x04f5, B:319:0x04fb, B:321:0x0503, B:322:0x0509, B:324:0x0511, B:325:0x0517, B:327:0x051f, B:328:0x0525, B:330:0x052d, B:331:0x0533, B:333:0x053b, B:334:0x0541, B:336:0x0549, B:337:0x054f, B:339:0x0557, B:340:0x055d, B:342:0x0565, B:343:0x056b, B:345:0x0573, B:346:0x0579, B:348:0x0581, B:349:0x0587, B:351:0x058f, B:352:0x0595, B:354:0x059d, B:355:0x05a3, B:357:0x05ab, B:358:0x05b1, B:360:0x05b9, B:361:0x05bf, B:363:0x05c7, B:364:0x05cd, B:366:0x05d5, B:367:0x05db, B:369:0x05e3, B:370:0x05e9, B:372:0x05f1, B:373:0x05f7, B:375:0x05ff, B:376:0x0605, B:378:0x060d, B:379:0x0613, B:381:0x061b, B:382:0x0621, B:384:0x0629, B:385:0x062f, B:387:0x0637, B:388:0x063d, B:390:0x0645, B:391:0x064b, B:393:0x0653, B:394:0x0659, B:396:0x0661, B:397:0x0667, B:399:0x066f, B:400:0x0675, B:402:0x067d, B:403:0x0683, B:405:0x068b, B:406:0x0691, B:408:0x0699, B:409:0x069f, B:411:0x06a7, B:412:0x06ad, B:414:0x06b5, B:415:0x06bb, B:417:0x06c3, B:418:0x06c9, B:420:0x06d1, B:421:0x06d7, B:423:0x06df, B:424:0x06e5, B:426:0x06ed, B:427:0x06f3, B:429:0x06fb, B:430:0x0701, B:432:0x0709, B:433:0x070f, B:435:0x0717, B:436:0x071d, B:438:0x0725, B:439:0x072b, B:441:0x0733, B:442:0x0739, B:444:0x0741, B:445:0x0747, B:447:0x074f, B:448:0x0755, B:450:0x075d, B:451:0x0763, B:453:0x076b, B:454:0x0771, B:456:0x0779, B:457:0x077f, B:459:0x0787, B:460:0x078d, B:462:0x0795, B:463:0x079b, B:465:0x07a3, B:466:0x07a9, B:468:0x07b1, B:469:0x07b7, B:471:0x07bf, B:472:0x07c5, B:474:0x07cd, B:475:0x07d3, B:477:0x07db, B:478:0x07e1, B:480:0x07e9, B:481:0x07ef, B:483:0x07f7, B:484:0x07fd, B:486:0x0805, B:487:0x080b, B:489:0x0813, B:490:0x0819, B:492:0x0821, B:493:0x0827, B:495:0x082f, B:496:0x0835, B:498:0x083d, B:499:0x0843, B:501:0x084b, B:502:0x0851, B:504:0x0859, B:505:0x085f, B:507:0x0867, B:508:0x086d, B:510:0x0875, B:511:0x087b, B:513:0x0883, B:514:0x0889, B:516:0x0891, B:517:0x0897, B:519:0x089f, B:520:0x08a5, B:522:0x08ad, B:523:0x08b3, B:525:0x08bb, B:526:0x08c1, B:528:0x08c9, B:529:0x08cf, B:531:0x08d7, B:532:0x08dd, B:534:0x08e5, B:535:0x08eb, B:537:0x08f3, B:538:0x08f9, B:540:0x0901, B:541:0x0907, B:543:0x090f, B:544:0x0915, B:546:0x091d, B:547:0x0923, B:549:0x092b, B:550:0x0931, B:552:0x0939, B:553:0x093f, B:555:0x0947, B:556:0x094d, B:558:0x0955, B:559:0x095b, B:561:0x0963, B:562:0x0969, B:564:0x0971, B:565:0x0977, B:567:0x097f, B:568:0x0985, B:570:0x098d, B:571:0x0993, B:573:0x099b, B:574:0x09a1, B:576:0x09a9, B:577:0x09af, B:579:0x09b7, B:580:0x09bd, B:582:0x09c5, B:583:0x09cb, B:585:0x09d3, B:586:0x09d9, B:588:0x09e1, B:589:0x09e7, B:591:0x09ef, B:592:0x09f5, B:594:0x09fd, B:595:0x0a03, B:597:0x0a0b, B:598:0x0a11, B:600:0x0a19, B:601:0x0a1f, B:603:0x0a27, B:604:0x0a2d, B:606:0x0a35, B:607:0x0a3b, B:609:0x0a43, B:610:0x0a49, B:612:0x0a51, B:613:0x0a57, B:615:0x0a5f, B:616:0x0a65, B:618:0x0a6d, B:619:0x0a73, B:621:0x0a7b, B:622:0x0a81, B:624:0x0a89, B:625:0x0a8f, B:627:0x0a97, B:628:0x0a9d, B:630:0x0aa5, B:631:0x0aab, B:633:0x0ab3, B:634:0x0ab9, B:636:0x0ac1, B:637:0x0ac7, B:639:0x0acf, B:640:0x0ad5, B:642:0x0add, B:643:0x0ae3, B:645:0x0aeb, B:646:0x0af1, B:648:0x0af9, B:649:0x0aff, B:651:0x0b07, B:652:0x0b0d, B:654:0x0b15, B:655:0x0b1b, B:657:0x0b23, B:658:0x0b29, B:660:0x0b31, B:661:0x0b37, B:663:0x0b3f, B:664:0x0b45, B:666:0x0b4d, B:667:0x0b53, B:669:0x0b5b, B:670:0x0b61, B:672:0x0b69, B:673:0x0b6f, B:675:0x0b77, B:676:0x0b7d, B:678:0x0b85, B:679:0x0b8b, B:681:0x0b93, B:682:0x0b99, B:684:0x0ba1, B:685:0x0ba7, B:687:0x0baf, B:688:0x0bb5, B:690:0x0bbd, B:691:0x0bc3, B:693:0x0bcb, B:694:0x0bd1, B:696:0x0bd9, B:697:0x0bdf, B:699:0x0be7, B:700:0x0bed, B:702:0x0bf5, B:703:0x0bfb, B:705:0x0c03, B:706:0x0c09, B:708:0x0c11, B:709:0x0c17, B:711:0x0c1f, B:712:0x0c25, B:714:0x0c2d, B:715:0x0c33, B:717:0x0c3b, B:718:0x0c41, B:720:0x0c49, B:721:0x0c4f, B:723:0x0c57, B:724:0x0c5d, B:726:0x0c65, B:727:0x0c6b, B:729:0x0c73, B:730:0x0c79, B:732:0x0c81, B:733:0x0c87, B:735:0x0c8f, B:736:0x0c95, B:738:0x0c9d, B:739:0x0ca3, B:741:0x0cab, B:742:0x0cb1, B:744:0x0cb9, B:745:0x0cbf, B:747:0x0cc7, B:748:0x0ccd, B:750:0x0cd5, B:751:0x0cdb, B:753:0x0ce3, B:754:0x0ce9, B:756:0x0cf1, B:757:0x0cf7, B:759:0x0cff, B:760:0x0d05, B:762:0x0d0d, B:763:0x0d13, B:765:0x0d1b, B:766:0x0d21, B:768:0x0d29, B:769:0x0d2f, B:771:0x0d37, B:772:0x0d3d, B:774:0x0d45, B:775:0x0d4b, B:777:0x0d53, B:778:0x0d59, B:780:0x0d61, B:781:0x0d67, B:783:0x0d6f, B:784:0x0d75, B:786:0x0d7d, B:787:0x0d83, B:789:0x0d8b, B:790:0x0d91, B:792:0x0d99, B:793:0x0d9f, B:795:0x0da7, B:796:0x0dad, B:798:0x0db5, B:799:0x0dbb, B:801:0x0dc3, B:802:0x0dc9, B:804:0x0dd1, B:805:0x0dd7, B:807:0x0ddf, B:808:0x0de5, B:810:0x0ded, B:811:0x0df3, B:813:0x0dfb, B:814:0x0e01, B:816:0x0e09, B:817:0x0e0f, B:819:0x0e17, B:820:0x0e1d, B:822:0x0e25, B:823:0x0e2b, B:825:0x0e33, B:826:0x0e39, B:828:0x0e41, B:829:0x0e47, B:831:0x0e4f, B:832:0x0e55, B:834:0x0e5d, B:835:0x0e63, B:837:0x0e6b, B:838:0x0e71, B:840:0x0e79, B:841:0x0e7f, B:843:0x0e87, B:844:0x0e8d, B:846:0x0e95, B:847:0x0e9b, B:849:0x0ea3, B:850:0x0ea9, B:852:0x0eb1, B:853:0x0eb7, B:855:0x0ebf, B:856:0x0ec5, B:858:0x0ecd, B:859:0x0ed3, B:861:0x0edb, B:862:0x0ee1, B:864:0x0ee9, B:865:0x0eef, B:867:0x0ef7, B:868:0x0efd, B:870:0x0f05, B:871:0x0f0b, B:873:0x0f13, B:874:0x0f19, B:876:0x0f21, B:877:0x0f27, B:879:0x0f2f, B:880:0x0f35, B:882:0x0f3d, B:883:0x0f43, B:885:0x0f4b, B:886:0x0f50, B:888:0x0f58, B:889:0x0f5d, B:891:0x0f65, B:892:0x0f6a, B:894:0x0f72, B:895:0x0f77, B:897:0x0f7f, B:898:0x0f84, B:900:0x0f8c, B:901:0x0f91, B:903:0x0f99, B:904:0x0f9e, B:906:0x0fa6, B:907:0x0fab, B:909:0x0fb3, B:910:0x0fb8, B:912:0x0fc0, B:920:0x0fd9, B:921:0x0ff8), top: B:940:0x0048 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean A08(android.os.StrictMode.ThreadPolicy r18, java.lang.String r19, java.lang.String r20, java.lang.String r21, int r22) {
        /*
            Method dump skipped, instructions count: 5152
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0B9.A08(android.os.StrictMode$ThreadPolicy, java.lang.String, java.lang.String, java.lang.String, int):boolean");
    }
}
