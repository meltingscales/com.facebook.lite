package X;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageItemInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.02a  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C004902a {
    public C002901g A01;
    public long A00 = 0;
    public final ArrayList A02 = new ArrayList();
    public final ArrayList A03 = new ArrayList();
    public final Map A04 = new HashMap();

    /* JADX WARN: Type inference failed for: r0v2, types: [X.02b] */
    public final C005002b A00() {
        if (this.A01 != null && !this.A04.isEmpty()) {
            throw new IllegalArgumentException("TrustedCaller needs to be configured with either a TrustedApp or list of trusted packages");
        }
        Map map = this.A04;
        if (!map.isEmpty()) {
            this.A01 = new C002901g(map);
        }
        return new Object(this) { // from class: X.02b
            public final long A00;
            public final C002901g A01;
            public final ArrayList A02;
            public final ArrayList A03;

            public static void A00(Context context, AnonymousClass005 anonymousClass005, C02J c02j, C005002b c005002b) {
                C0AZ c0az;
                boolean contains;
                InterfaceC02280Ag interfaceC02280Ag;
                C02240Ac c02240Ac;
                InterfaceC02280Ag interfaceC02280Ag2;
                if (c02j != null) {
                    ArrayList arrayList = c005002b.A02;
                    if (!arrayList.isEmpty() && !arrayList.contains(c02j.A01)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Missing required Caller Domains ");
                        sb.append(arrayList);
                        sb.append(" from caller ");
                        sb.append(c02j);
                        throw new SecurityException(sb.toString());
                    } else if ((1 & c005002b.A00) != 0 && context.getPackageName().equals(c02j.A05())) {
                        return;
                    } else {
                        C018108d A00 = C018108d.A00(context);
                        String packageName = context.getPackageName();
                        Context context2 = A00.A00;
                        if (context2.getPackageName().equals(packageName)) {
                            AtomicReference atomicReference = A00.A02;
                            c0az = (C0AZ) atomicReference.get();
                            if (c0az == null) {
                                c0az = new C0AZ(C02J.A02(context2, packageName, false), A00.A01.getAndIncrement());
                                atomicReference.set(c0az);
                            }
                        } else {
                            c0az = new C0AZ(C02J.A02(context2, packageName, false), A00.A01.getAndIncrement());
                        }
                        C003801p A04 = c0az.A00.A04();
                        if (A04 == null) {
                            contains = false;
                        } else {
                            contains = AbstractC003701o.A1H.contains(A04);
                        }
                        C002901g c002901g = c005002b.A01;
                        if (c002901g != null && !c002901g.A04(c02j, contains)) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append("Caller Identity '");
                            sb2.append(c02j);
                            sb2.append("' is not trusted");
                            throw new SecurityException(sb2.toString());
                        }
                        ArrayList arrayList2 = c005002b.A03;
                        if (!arrayList2.isEmpty()) {
                            if (anonymousClass005 != null) {
                                if (AbstractC003701o.A1H.contains(AnonymousClass023.A02(context, context.getPackageName()))) {
                                    interfaceC02280Ag2 = new InterfaceC02280Ag() { // from class: X.08c
                                        /* JADX WARN: Multi-variable type inference failed */
                                        /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List] */
                                        /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
                                        /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
                                        /* JADX WARN: Type inference failed for: r3v3, types: [java.util.AbstractCollection, java.util.ArrayList] */
                                        @Override // X.InterfaceC02280Ag
                                        public final void A2s(Context context3, String str, String str2) {
                                            ApplicationInfo applicationInfo;
                                            ?? emptyList = Collections.emptyList();
                                            try {
                                                C08H.A04(str, 1);
                                                PackageManager packageManager = context3.getPackageManager();
                                                if (Build.VERSION.SDK_INT >= 33) {
                                                    applicationInfo = packageManager.getApplicationInfo(str, PackageManager.ApplicationInfoFlags.of(128));
                                                } else {
                                                    applicationInfo = packageManager.getApplicationInfo(str, 128);
                                                }
                                                C08H.A03(applicationInfo);
                                                Bundle bundle = ((PackageItemInfo) applicationInfo).metaData;
                                                if (bundle != null && bundle.size() > 0) {
                                                    emptyList = AnonymousClass000.A0E();
                                                    for (String str3 : bundle.keySet()) {
                                                        if (str3.contains(".fbpermission.")) {
                                                            emptyList.add(str3);
                                                        }
                                                    }
                                                }
                                            } catch (PackageManager.NameNotFoundException unused) {
                                                emptyList = Collections.emptyList();
                                            }
                                            if (emptyList.contains(str2)) {
                                                return;
                                            }
                                            StringBuilder A0C = AnonymousClass000.A0C();
                                            A0C.append("Caller '");
                                            A0C.append(str);
                                            A0C.append("' has not declared the FbPermission: '");
                                            A0C.append(str2);
                                            throw new C02310Aj(AnonymousClass000.A0A("' in its AndroidManifest.xml", A0C));
                                        }
                                    };
                                } else {
                                    interfaceC02280Ag2 = new InterfaceC02280Ag() { // from class: X.08e
                                        @Override // X.InterfaceC02280Ag
                                        public final void A2s(Context context3, String str, String str2) {
                                            JSONArray jSONArray;
                                            Signature signature;
                                            boolean z;
                                            String packageName2 = context3.getPackageName();
                                            try {
                                                try {
                                                    InputStream open = context3.createPackageContext(str, 0).getAssets().open("fbpermissions.json");
                                                    try {
                                                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
                                                        StringBuilder A0C = AnonymousClass000.A0C();
                                                        while (true) {
                                                            String readLine = bufferedReader.readLine();
                                                            if (readLine == null) {
                                                                break;
                                                            }
                                                            A0C.append(readLine);
                                                        }
                                                        bufferedReader.close();
                                                        if (A0C.length() != 0) {
                                                            JSONObject jSONObject = new JSONObject(A0C.toString());
                                                            if (jSONObject.has(packageName2)) {
                                                                JSONObject jSONObject2 = jSONObject.getJSONObject(packageName2);
                                                                HashSet hashSet = new HashSet();
                                                                JSONArray jSONArray2 = jSONObject2.getJSONArray("permissions");
                                                                if (jSONArray2.length() != 0) {
                                                                    int i = 0;
                                                                    for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                                                        hashSet.add(jSONArray2.getString(i2));
                                                                    }
                                                                    if (jSONObject2.has("signatures")) {
                                                                        jSONArray = jSONObject2.getJSONArray("signatures");
                                                                    } else {
                                                                        jSONArray = new JSONArray();
                                                                        jSONArray.put(jSONObject2.getJSONObject("signature"));
                                                                    }
                                                                    HashSet hashSet2 = new HashSet();
                                                                    String str3 = jSONObject2;
                                                                    while (i < jSONArray.length()) {
                                                                        JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                                                                        String string = jSONObject3.getString("algorithm");
                                                                        String string2 = jSONObject3.getString("value");
                                                                        hashSet2.add(new C02270Af(string, string2));
                                                                        i++;
                                                                        str3 = string2;
                                                                    }
                                                                    if (open != null) {
                                                                        open.close();
                                                                    }
                                                                    try {
                                                                        str3 = str2;
                                                                        String str4 = AnonymousClass023.A02(context3, str).A01;
                                                                        if (str4 != null && !str4.isEmpty()) {
                                                                            try {
                                                                                long A002 = C01C.A01(context3, str, 0).A00();
                                                                                if (A002 > 0) {
                                                                                    boolean z2 = false;
                                                                                    if (!hashSet2.isEmpty() && !hashSet.isEmpty()) {
                                                                                        Iterator it = hashSet2.iterator();
                                                                                        while (it.hasNext()) {
                                                                                            C02270Af c02270Af = (C02270Af) it.next();
                                                                                            if (!TextUtils.isEmpty(c02270Af.A00)) {
                                                                                                z = true;
                                                                                                if (!TextUtils.isEmpty(c02270Af.A01)) {
                                                                                                    z2 |= z;
                                                                                                }
                                                                                            }
                                                                                            z = false;
                                                                                            z2 |= z;
                                                                                        }
                                                                                        if (z2) {
                                                                                            try {
                                                                                                String packageName3 = context3.getPackageName();
                                                                                                PublicKey publicKey = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(AnonymousClass023.A00(AnonymousClass023.A01(context3, packageName2)).toByteArray())).getPublicKey();
                                                                                                if (hashSet.contains(str3)) {
                                                                                                    if (!hashSet2.isEmpty()) {
                                                                                                        try {
                                                                                                            StringBuilder A0C2 = AnonymousClass000.A0C();
                                                                                                            A0C2.append("");
                                                                                                            A0C2.append(A002);
                                                                                                            String obj = A0C2.toString();
                                                                                                            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                                                                            byteArrayOutputStream.write(-5);
                                                                                                            byteArrayOutputStream.write(0);
                                                                                                            TreeSet treeSet = new TreeSet(hashSet);
                                                                                                            if (treeSet.size() <= 255) {
                                                                                                                ArrayList A0E = AnonymousClass000.A0E();
                                                                                                                Iterator it2 = treeSet.iterator();
                                                                                                                while (it2.hasNext()) {
                                                                                                                    byte[] bytes = ((String) it2.next()).getBytes(AbstractC02260Ae.A00);
                                                                                                                    if (bytes.length <= 255) {
                                                                                                                        A0E.add(bytes);
                                                                                                                    } else {
                                                                                                                        throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                        };
                                                                                                                    }
                                                                                                                }
                                                                                                                byteArrayOutputStream.write(1);
                                                                                                                byteArrayOutputStream.write(treeSet.size() & 255);
                                                                                                                Iterator it3 = A0E.iterator();
                                                                                                                while (it3.hasNext()) {
                                                                                                                    byte[] bArr = (byte[]) it3.next();
                                                                                                                    int length = bArr.length;
                                                                                                                    byteArrayOutputStream.write(length & 255);
                                                                                                                    byteArrayOutputStream.write(bArr, 0, length);
                                                                                                                }
                                                                                                                Charset charset = AbstractC02260Ae.A00;
                                                                                                                byte[] bytes2 = str.getBytes(charset);
                                                                                                                int length2 = bytes2.length;
                                                                                                                if (length2 <= 255) {
                                                                                                                    byteArrayOutputStream.write(2);
                                                                                                                    byteArrayOutputStream.write(length2 & 255);
                                                                                                                    byteArrayOutputStream.write(bytes2, 0, length2);
                                                                                                                    byte[] bytes3 = obj.getBytes(charset);
                                                                                                                    int length3 = bytes3.length;
                                                                                                                    if (length3 <= 255) {
                                                                                                                        byteArrayOutputStream.write(3);
                                                                                                                        byteArrayOutputStream.write(length3 & 255);
                                                                                                                        byteArrayOutputStream.write(bytes3, 0, length3);
                                                                                                                        byte[] bytes4 = str4.getBytes(charset);
                                                                                                                        int length4 = bytes4.length;
                                                                                                                        if (length4 <= 255) {
                                                                                                                            byteArrayOutputStream.write(4);
                                                                                                                            byteArrayOutputStream.write(length4 & 255);
                                                                                                                            byteArrayOutputStream.write(bytes4, 0, length4);
                                                                                                                            byte[] bytes5 = packageName3.getBytes(charset);
                                                                                                                            int length5 = bytes5.length;
                                                                                                                            if (length5 <= 255) {
                                                                                                                                byteArrayOutputStream.write(5);
                                                                                                                                byteArrayOutputStream.write(length5 & 255);
                                                                                                                                byteArrayOutputStream.write(bytes5, 0, length5);
                                                                                                                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                                                                                                byteArray[1] = (byte) 5;
                                                                                                                                Iterator it4 = hashSet2.iterator();
                                                                                                                                while (it4.hasNext()) {
                                                                                                                                    C02270Af c02270Af2 = (C02270Af) it4.next();
                                                                                                                                    byte[] decode = Base64.decode(c02270Af2.A01, 10);
                                                                                                                                    try {
                                                                                                                                        signature = Signature.getInstance(c02270Af2.A00);
                                                                                                                                        signature.initVerify(publicKey);
                                                                                                                                        signature.update(byteArray);
                                                                                                                                    } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException unused) {
                                                                                                                                    }
                                                                                                                                    if (signature.verify(decode)) {
                                                                                                                                        return;
                                                                                                                                    }
                                                                                                                                }
                                                                                                                                StringBuilder A0D = AnonymousClass000.A0D("Permission '");
                                                                                                                                A0D.append(str3);
                                                                                                                                A0D.append("' is contained in the set of permissions, but is not specifically granted to '");
                                                                                                                                A0D.append(str);
                                                                                                                                A0D.append("' by '");
                                                                                                                                throw new C02310Aj(AnonymousClass000.A09(packageName3, "'", A0D));
                                                                                                                            }
                                                                                                                            throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                            };
                                                                                                                        }
                                                                                                                        throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                        };
                                                                                                                    }
                                                                                                                    throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                    };
                                                                                                                }
                                                                                                                throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                };
                                                                                                            }
                                                                                                            throw new Exception("Collection size (duplicates removed) cannot exceed 255") { // from class: X.0Ad
                                                                                                            };
                                                                                                        } catch (C02250Ad e) {
                                                                                                            throw new C02310Aj("Unable to encode data for signature validation", e);
                                                                                                        }
                                                                                                    }
                                                                                                    throw new C02310Aj("Empty signature list in the grants");
                                                                                                }
                                                                                                StringBuilder A0D2 = AnonymousClass000.A0D("Permission '");
                                                                                                A0D2.append(str3);
                                                                                                throw new C02310Aj(AnonymousClass000.A0A("' is not contained in the set of permissions granted", A0D2));
                                                                                            } catch (SecurityException e2) {
                                                                                                throw new C02310Aj("Failed to get provider package signature", e2);
                                                                                            } catch (CertificateException e3) {
                                                                                                throw new C02310Aj("Unable to parse consumer package certificate", e3);
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    StringBuilder A0C3 = AnonymousClass000.A0C();
                                                                                    AnonymousClass000.A0M("Invalid signature or algorithm for package '", str, "' while verifying '", A0C3);
                                                                                    throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C3));
                                                                                }
                                                                                StringBuilder A0C4 = AnonymousClass000.A0C();
                                                                                AnonymousClass000.A0M("Invalid version code for package '", str, "' while verifying '", A0C4);
                                                                                throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C4));
                                                                            } catch (PackageManager.NameNotFoundException | RuntimeException e4) {
                                                                                StringBuilder A0C5 = AnonymousClass000.A0C();
                                                                                AnonymousClass000.A0M("Exception in getting version code for package '", str, "' while verifying '", A0C5);
                                                                                throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C5), e4);
                                                                            }
                                                                        }
                                                                        StringBuilder A0C6 = AnonymousClass000.A0C();
                                                                        AnonymousClass000.A0M("Empty developer key for package '", str, "' while verifying '", A0C6);
                                                                        throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C6));
                                                                    } catch (SecurityException e5) {
                                                                        StringBuilder A0C7 = AnonymousClass000.A0C();
                                                                        AnonymousClass000.A0M("Invalid developer key for package '", str, "' while verifying '", A0C7);
                                                                        throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C7), e5);
                                                                    }
                                                                }
                                                                throw new JSONException("Empty permissions list");
                                                            }
                                                            StringBuilder A0D3 = AnonymousClass000.A0D("Consumer app '");
                                                            A0D3.append(str);
                                                            A0D3.append("' is missing an entry for provider '");
                                                            throw new IOException(AnonymousClass000.A09(packageName2, "'", A0D3));
                                                        }
                                                        StringBuilder A0D4 = AnonymousClass000.A0D("Consumer app '");
                                                        A0D4.append(str);
                                                    } catch (Throwable th) {
                                                        if (open != null) {
                                                            try {
                                                                open.close();
                                                            } catch (Throwable unused2) {
                                                            }
                                                        }
                                                        throw th;
                                                    }
                                                } catch (IOException e6) {
                                                    StringBuilder A0C8 = AnonymousClass000.A0C();
                                                    A0C8.append("Failed to read FBPermission asset file from package '");
                                                } catch (JSONException e7) {
                                                    StringBuilder A0C9 = AnonymousClass000.A0C();
                                                    A0C9.append("Failed to decode FBPermission asset file from package '");
                                                    throw new C02310Aj(AnonymousClass000.A09(str, "'", A0C9), e7);
                                                }
                                            } catch (PackageManager.NameNotFoundException e8) {
                                                StringBuilder A0C10 = AnonymousClass000.A0C();
                                                A0C10.append("Cannot create package context for '");
                                                throw new C02310Aj(AnonymousClass000.A09(str, "'", A0C10), e8);
                                            }
                                        }
                                    };
                                }
                                c02240Ac = new C02240Ac(anonymousClass005, interfaceC02280Ag2);
                            } else {
                                synchronized (C02240Ac.class) {
                                    AnonymousClass005 anonymousClass0052 = new AnonymousClass005() { // from class: X.006
                                        @Override // X.AnonymousClass005
                                        public final void AXW(String str) {
                                            Log.e("Security-LocalReporter", str);
                                        }

                                        @Override // X.AnonymousClass005
                                        public final void AXX(String str, String str2, Throwable th) {
                                            Log.e(str, str2, th);
                                        }
                                    };
                                    if (AbstractC003701o.A1H.contains(AnonymousClass023.A02(context, context.getPackageName()))) {
                                        interfaceC02280Ag = new InterfaceC02280Ag() { // from class: X.08c
                                            /* JADX WARN: Multi-variable type inference failed */
                                            /* JADX WARN: Type inference failed for: r3v0, types: [java.util.List] */
                                            /* JADX WARN: Type inference failed for: r3v1, types: [java.util.List] */
                                            /* JADX WARN: Type inference failed for: r3v2, types: [java.util.List] */
                                            /* JADX WARN: Type inference failed for: r3v3, types: [java.util.AbstractCollection, java.util.ArrayList] */
                                            @Override // X.InterfaceC02280Ag
                                            public final void A2s(Context context3, String str, String str2) {
                                                ApplicationInfo applicationInfo;
                                                ?? emptyList = Collections.emptyList();
                                                try {
                                                    C08H.A04(str, 1);
                                                    PackageManager packageManager = context3.getPackageManager();
                                                    if (Build.VERSION.SDK_INT >= 33) {
                                                        applicationInfo = packageManager.getApplicationInfo(str, PackageManager.ApplicationInfoFlags.of(128));
                                                    } else {
                                                        applicationInfo = packageManager.getApplicationInfo(str, 128);
                                                    }
                                                    C08H.A03(applicationInfo);
                                                    Bundle bundle = ((PackageItemInfo) applicationInfo).metaData;
                                                    if (bundle != null && bundle.size() > 0) {
                                                        emptyList = AnonymousClass000.A0E();
                                                        for (String str3 : bundle.keySet()) {
                                                            if (str3.contains(".fbpermission.")) {
                                                                emptyList.add(str3);
                                                            }
                                                        }
                                                    }
                                                } catch (PackageManager.NameNotFoundException unused) {
                                                    emptyList = Collections.emptyList();
                                                }
                                                if (emptyList.contains(str2)) {
                                                    return;
                                                }
                                                StringBuilder A0C = AnonymousClass000.A0C();
                                                A0C.append("Caller '");
                                                A0C.append(str);
                                                A0C.append("' has not declared the FbPermission: '");
                                                A0C.append(str2);
                                                throw new C02310Aj(AnonymousClass000.A0A("' in its AndroidManifest.xml", A0C));
                                            }
                                        };
                                    } else {
                                        interfaceC02280Ag = new InterfaceC02280Ag() { // from class: X.08e
                                            @Override // X.InterfaceC02280Ag
                                            public final void A2s(Context context3, String str, String str2) {
                                                JSONArray jSONArray;
                                                Signature signature;
                                                boolean z;
                                                String packageName2 = context3.getPackageName();
                                                try {
                                                    try {
                                                        InputStream open = context3.createPackageContext(str, 0).getAssets().open("fbpermissions.json");
                                                        try {
                                                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(open));
                                                            StringBuilder A0C = AnonymousClass000.A0C();
                                                            while (true) {
                                                                String readLine = bufferedReader.readLine();
                                                                if (readLine == null) {
                                                                    break;
                                                                }
                                                                A0C.append(readLine);
                                                            }
                                                            bufferedReader.close();
                                                            if (A0C.length() != 0) {
                                                                JSONObject jSONObject = new JSONObject(A0C.toString());
                                                                if (jSONObject.has(packageName2)) {
                                                                    JSONObject jSONObject2 = jSONObject.getJSONObject(packageName2);
                                                                    HashSet hashSet = new HashSet();
                                                                    JSONArray jSONArray2 = jSONObject2.getJSONArray("permissions");
                                                                    if (jSONArray2.length() != 0) {
                                                                        int i = 0;
                                                                        for (int i2 = 0; i2 < jSONArray2.length(); i2++) {
                                                                            hashSet.add(jSONArray2.getString(i2));
                                                                        }
                                                                        if (jSONObject2.has("signatures")) {
                                                                            jSONArray = jSONObject2.getJSONArray("signatures");
                                                                        } else {
                                                                            jSONArray = new JSONArray();
                                                                            jSONArray.put(jSONObject2.getJSONObject("signature"));
                                                                        }
                                                                        HashSet hashSet2 = new HashSet();
                                                                        String str3 = jSONObject2;
                                                                        while (i < jSONArray.length()) {
                                                                            JSONObject jSONObject3 = jSONArray.getJSONObject(i);
                                                                            String string = jSONObject3.getString("algorithm");
                                                                            String string2 = jSONObject3.getString("value");
                                                                            hashSet2.add(new C02270Af(string, string2));
                                                                            i++;
                                                                            str3 = string2;
                                                                        }
                                                                        if (open != null) {
                                                                            open.close();
                                                                        }
                                                                        try {
                                                                            str3 = str2;
                                                                            String str4 = AnonymousClass023.A02(context3, str).A01;
                                                                            if (str4 != null && !str4.isEmpty()) {
                                                                                try {
                                                                                    long A002 = C01C.A01(context3, str, 0).A00();
                                                                                    if (A002 > 0) {
                                                                                        boolean z2 = false;
                                                                                        if (!hashSet2.isEmpty() && !hashSet.isEmpty()) {
                                                                                            Iterator it = hashSet2.iterator();
                                                                                            while (it.hasNext()) {
                                                                                                C02270Af c02270Af = (C02270Af) it.next();
                                                                                                if (!TextUtils.isEmpty(c02270Af.A00)) {
                                                                                                    z = true;
                                                                                                    if (!TextUtils.isEmpty(c02270Af.A01)) {
                                                                                                        z2 |= z;
                                                                                                    }
                                                                                                }
                                                                                                z = false;
                                                                                                z2 |= z;
                                                                                            }
                                                                                            if (z2) {
                                                                                                try {
                                                                                                    String packageName3 = context3.getPackageName();
                                                                                                    PublicKey publicKey = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(AnonymousClass023.A00(AnonymousClass023.A01(context3, packageName2)).toByteArray())).getPublicKey();
                                                                                                    if (hashSet.contains(str3)) {
                                                                                                        if (!hashSet2.isEmpty()) {
                                                                                                            try {
                                                                                                                StringBuilder A0C2 = AnonymousClass000.A0C();
                                                                                                                A0C2.append("");
                                                                                                                A0C2.append(A002);
                                                                                                                String obj = A0C2.toString();
                                                                                                                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                                                                                                byteArrayOutputStream.write(-5);
                                                                                                                byteArrayOutputStream.write(0);
                                                                                                                TreeSet treeSet = new TreeSet(hashSet);
                                                                                                                if (treeSet.size() <= 255) {
                                                                                                                    ArrayList A0E = AnonymousClass000.A0E();
                                                                                                                    Iterator it2 = treeSet.iterator();
                                                                                                                    while (it2.hasNext()) {
                                                                                                                        byte[] bytes = ((String) it2.next()).getBytes(AbstractC02260Ae.A00);
                                                                                                                        if (bytes.length <= 255) {
                                                                                                                            A0E.add(bytes);
                                                                                                                        } else {
                                                                                                                            throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                            };
                                                                                                                        }
                                                                                                                    }
                                                                                                                    byteArrayOutputStream.write(1);
                                                                                                                    byteArrayOutputStream.write(treeSet.size() & 255);
                                                                                                                    Iterator it3 = A0E.iterator();
                                                                                                                    while (it3.hasNext()) {
                                                                                                                        byte[] bArr = (byte[]) it3.next();
                                                                                                                        int length = bArr.length;
                                                                                                                        byteArrayOutputStream.write(length & 255);
                                                                                                                        byteArrayOutputStream.write(bArr, 0, length);
                                                                                                                    }
                                                                                                                    Charset charset = AbstractC02260Ae.A00;
                                                                                                                    byte[] bytes2 = str.getBytes(charset);
                                                                                                                    int length2 = bytes2.length;
                                                                                                                    if (length2 <= 255) {
                                                                                                                        byteArrayOutputStream.write(2);
                                                                                                                        byteArrayOutputStream.write(length2 & 255);
                                                                                                                        byteArrayOutputStream.write(bytes2, 0, length2);
                                                                                                                        byte[] bytes3 = obj.getBytes(charset);
                                                                                                                        int length3 = bytes3.length;
                                                                                                                        if (length3 <= 255) {
                                                                                                                            byteArrayOutputStream.write(3);
                                                                                                                            byteArrayOutputStream.write(length3 & 255);
                                                                                                                            byteArrayOutputStream.write(bytes3, 0, length3);
                                                                                                                            byte[] bytes4 = str4.getBytes(charset);
                                                                                                                            int length4 = bytes4.length;
                                                                                                                            if (length4 <= 255) {
                                                                                                                                byteArrayOutputStream.write(4);
                                                                                                                                byteArrayOutputStream.write(length4 & 255);
                                                                                                                                byteArrayOutputStream.write(bytes4, 0, length4);
                                                                                                                                byte[] bytes5 = packageName3.getBytes(charset);
                                                                                                                                int length5 = bytes5.length;
                                                                                                                                if (length5 <= 255) {
                                                                                                                                    byteArrayOutputStream.write(5);
                                                                                                                                    byteArrayOutputStream.write(length5 & 255);
                                                                                                                                    byteArrayOutputStream.write(bytes5, 0, length5);
                                                                                                                                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                                                                                                                                    byteArray[1] = (byte) 5;
                                                                                                                                    Iterator it4 = hashSet2.iterator();
                                                                                                                                    while (it4.hasNext()) {
                                                                                                                                        C02270Af c02270Af2 = (C02270Af) it4.next();
                                                                                                                                        byte[] decode = Base64.decode(c02270Af2.A01, 10);
                                                                                                                                        try {
                                                                                                                                            signature = Signature.getInstance(c02270Af2.A00);
                                                                                                                                            signature.initVerify(publicKey);
                                                                                                                                            signature.update(byteArray);
                                                                                                                                        } catch (InvalidKeyException | NoSuchAlgorithmException | SignatureException unused) {
                                                                                                                                        }
                                                                                                                                        if (signature.verify(decode)) {
                                                                                                                                            return;
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                    StringBuilder A0D = AnonymousClass000.A0D("Permission '");
                                                                                                                                    A0D.append(str3);
                                                                                                                                    A0D.append("' is contained in the set of permissions, but is not specifically granted to '");
                                                                                                                                    A0D.append(str);
                                                                                                                                    A0D.append("' by '");
                                                                                                                                    throw new C02310Aj(AnonymousClass000.A09(packageName3, "'", A0D));
                                                                                                                                }
                                                                                                                                throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                                };
                                                                                                                            }
                                                                                                                            throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                            };
                                                                                                                        }
                                                                                                                        throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                        };
                                                                                                                    }
                                                                                                                    throw new Exception("String size (UTF-8 encoded) cannot exceed 255") { // from class: X.0Ad
                                                                                                                    };
                                                                                                                }
                                                                                                                throw new Exception("Collection size (duplicates removed) cannot exceed 255") { // from class: X.0Ad
                                                                                                                };
                                                                                                            } catch (C02250Ad e) {
                                                                                                                throw new C02310Aj("Unable to encode data for signature validation", e);
                                                                                                            }
                                                                                                        }
                                                                                                        throw new C02310Aj("Empty signature list in the grants");
                                                                                                    }
                                                                                                    StringBuilder A0D2 = AnonymousClass000.A0D("Permission '");
                                                                                                    A0D2.append(str3);
                                                                                                    throw new C02310Aj(AnonymousClass000.A0A("' is not contained in the set of permissions granted", A0D2));
                                                                                                } catch (SecurityException e2) {
                                                                                                    throw new C02310Aj("Failed to get provider package signature", e2);
                                                                                                } catch (CertificateException e3) {
                                                                                                    throw new C02310Aj("Unable to parse consumer package certificate", e3);
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        StringBuilder A0C3 = AnonymousClass000.A0C();
                                                                                        AnonymousClass000.A0M("Invalid signature or algorithm for package '", str, "' while verifying '", A0C3);
                                                                                        throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C3));
                                                                                    }
                                                                                    StringBuilder A0C4 = AnonymousClass000.A0C();
                                                                                    AnonymousClass000.A0M("Invalid version code for package '", str, "' while verifying '", A0C4);
                                                                                    throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C4));
                                                                                } catch (PackageManager.NameNotFoundException | RuntimeException e4) {
                                                                                    StringBuilder A0C5 = AnonymousClass000.A0C();
                                                                                    AnonymousClass000.A0M("Exception in getting version code for package '", str, "' while verifying '", A0C5);
                                                                                    throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C5), e4);
                                                                                }
                                                                            }
                                                                            StringBuilder A0C6 = AnonymousClass000.A0C();
                                                                            AnonymousClass000.A0M("Empty developer key for package '", str, "' while verifying '", A0C6);
                                                                            throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C6));
                                                                        } catch (SecurityException e5) {
                                                                            StringBuilder A0C7 = AnonymousClass000.A0C();
                                                                            AnonymousClass000.A0M("Invalid developer key for package '", str, "' while verifying '", A0C7);
                                                                            throw new C02310Aj(AnonymousClass000.A09(str3, "'", A0C7), e5);
                                                                        }
                                                                    }
                                                                    throw new JSONException("Empty permissions list");
                                                                }
                                                                StringBuilder A0D3 = AnonymousClass000.A0D("Consumer app '");
                                                                A0D3.append(str);
                                                                A0D3.append("' is missing an entry for provider '");
                                                                throw new IOException(AnonymousClass000.A09(packageName2, "'", A0D3));
                                                            }
                                                            StringBuilder A0D4 = AnonymousClass000.A0D("Consumer app '");
                                                            A0D4.append(str);
                                                        } catch (Throwable th) {
                                                            if (open != null) {
                                                                try {
                                                                    open.close();
                                                                } catch (Throwable unused2) {
                                                                }
                                                            }
                                                            throw th;
                                                        }
                                                    } catch (IOException e6) {
                                                        StringBuilder A0C8 = AnonymousClass000.A0C();
                                                        A0C8.append("Failed to read FBPermission asset file from package '");
                                                    } catch (JSONException e7) {
                                                        StringBuilder A0C9 = AnonymousClass000.A0C();
                                                        A0C9.append("Failed to decode FBPermission asset file from package '");
                                                        throw new C02310Aj(AnonymousClass000.A09(str, "'", A0C9), e7);
                                                    }
                                                } catch (PackageManager.NameNotFoundException e8) {
                                                    StringBuilder A0C10 = AnonymousClass000.A0C();
                                                    A0C10.append("Cannot create package context for '");
                                                    throw new C02310Aj(AnonymousClass000.A09(str, "'", A0C10), e8);
                                                }
                                            }
                                        };
                                    }
                                    c02240Ac = new C02240Ac(anonymousClass0052, interfaceC02280Ag);
                                }
                            }
                            if (arrayList2.size() == 1) {
                                String str = (String) arrayList2.get(0);
                                try {
                                    c02240Ac.A00(context, c02j, str);
                                } catch (C02310Aj e) {
                                    StringBuilder sb3 = new StringBuilder();
                                    sb3.append("Missing or unable to evaluate FbPermission '");
                                    sb3.append(str);
                                    sb3.append("' from caller ");
                                    sb3.append(c02j);
                                    throw new SecurityException(sb3.toString(), e);
                                }
                            } else {
                                Iterator it = arrayList2.iterator();
                                while (it.hasNext()) {
                                    String str2 = (String) it.next();
                                    try {
                                        c02240Ac.A00(context, c02j, str2);
                                    } catch (C02310Aj e2) {
                                        AnonymousClass005 anonymousClass0053 = c02240Ac.A00;
                                        StringBuilder sb4 = new StringBuilder();
                                        sb4.append("FBPermission '");
                                        sb4.append(str2);
                                        sb4.append("' was not granted to package '");
                                        sb4.append(c02j.A05());
                                        sb4.append("'");
                                        anonymousClass0053.AXX("FbPermission", sb4.toString(), e2);
                                    }
                                }
                                StringBuilder sb5 = new StringBuilder();
                                sb5.append("Missing at least one required FBPermission (of multiple defined) ");
                                sb5.append(arrayList2);
                                sb5.append(" from caller ");
                                sb5.append(c02j);
                                throw new SecurityException(sb5.toString());
                            }
                        }
                        if (!arrayList2.isEmpty() || c002901g != null) {
                            return;
                        }
                        throw new SecurityException("Calling app is not the same package, and no other identity checks were performed.");
                    }
                }
                throw new SecurityException("Invalid Caller Identity (null)");
            }

            public final void A01(Context context, Intent intent, AnonymousClass005 anonymousClass005) {
                int i;
                C02J A00;
                ComponentName callingActivity;
                long j = this.A00;
                if ((16 & j) != 0) {
                    i = Integer.MAX_VALUE;
                } else {
                    i = 60000;
                    if ((8 & j) != 0) {
                        i = 86400000;
                    }
                }
                if (intent != null && (A00 = AnonymousClass022.A00(context, intent, anonymousClass005, i)) != null) {
                    if ((j & 32) == 0 && Binder.getCallingPid() != Process.myPid()) {
                        int callingUid = Binder.getCallingUid();
                        int i2 = A00.A00;
                        if (callingUid != i2) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Uid ");
                            sb.append(i2);
                            sb.append(" from PI not equal to uid ");
                            sb.append(Binder.getCallingUid());
                            sb.append(" from binder data");
                            String obj = sb.toString();
                            if (anonymousClass005 != null && !obj.isEmpty()) {
                                anonymousClass005.AXW(obj);
                            }
                        }
                    }
                    A00(context, anonymousClass005, A00, this);
                }
                if ((context instanceof Activity) && (callingActivity = ((Activity) context).getCallingActivity()) != null) {
                    A00 = C02J.A02(context, callingActivity.getPackageName(), true);
                } else {
                    if (Binder.getCallingPid() == Process.myPid()) {
                        if (anonymousClass005 != null && !"This method must be called on behalf of an IPC transaction from binder thread.".isEmpty()) {
                            anonymousClass005.AXW("This method must be called on behalf of an IPC transaction from binder thread.");
                        }
                        A00 = null;
                    } else {
                        A00 = C02J.A00(context, Binder.getCallingUid());
                    }
                    if (A00 == null && anonymousClass005 != null && !"AppIdentity not found for caller".isEmpty()) {
                        anonymousClass005.AXW("AppIdentity not found for caller");
                    }
                }
                A00(context, anonymousClass005, A00, this);
            }

            {
                C002901g c002901g = this.A01;
                this.A01 = c002901g;
                this.A02 = this.A02;
                ArrayList arrayList = this.A03;
                this.A03 = arrayList;
                long j = this.A00;
                this.A00 = j;
                if (c002901g == null && arrayList.isEmpty() && (1 & j) == 0) {
                    throw new IllegalArgumentException("TrustedCaller needs to be configured with at least 1 security check");
                }
            }

            public final boolean A02(Context context, Intent intent, AnonymousClass005 anonymousClass005) {
                try {
                    A01(context, intent, anonymousClass005);
                    return true;
                } catch (SecurityException e) {
                    if (anonymousClass005 != null) {
                        String message = e.getMessage();
                        if (message == null) {
                            message = "Cannot trust caller";
                        }
                        anonymousClass005.AXX("TrustedCaller", message, e.getCause());
                        return false;
                    }
                    return false;
                }
            }
        };
    }

    public final void A01(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.A02.add(str);
            return;
        }
        throw new IllegalArgumentException();
    }
}
