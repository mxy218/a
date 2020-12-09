.class public Lcom/android/server/locksettings/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final DEFAULT_TAG_LENGTH_BITS:I = 0x80

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-string v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlob(Ljava/lang/String;[B[BJ)[B
    .registers 11

    .line 158
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 159
    const/16 v1, 0x100

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 160
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 161
    const-string v1, "AndroidKeyStore"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 162
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 163
    new-instance v2, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const-string v3, "GCM"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    const-string v3, "NoPadding"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    .line 166
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v2

    .line 167
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-eqz v4, :cond_50

    .line 168
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v3

    .line 169
    invoke-virtual {v3, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object p3

    const/16 p4, 0xf

    .line 170
    invoke-virtual {p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    .line 173
    :cond_50
    new-instance p3, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {p3, v0}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    .line 175
    invoke-virtual {v2}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object p4

    .line 173
    invoke-virtual {v1, p0, p3, p4}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 176
    sget-object p0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object p0

    .line 177
    invoke-static {v0, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_66
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_66} :catch_67
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_66} :catch_67

    return-object p0

    .line 178
    :catch_67
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to encrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 58
    if-nez p1, :cond_4

    .line 59
    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_4
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 62
    array-length v2, p1

    invoke-static {p1, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 63
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 65
    const/4 v2, 0x2

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 66
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decrypt([B[B[B)[B
    .registers 5

    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 112
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 115
    :try_start_17
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object p0

    .line 116
    :catch_1c
    move-exception p0

    .line 119
    invoke-virtual {p0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    .line 120
    const/4 p0, 0x0

    return-object p0
.end method

.method public static decryptBlob(Ljava/lang/String;[B[B)[B
    .registers 5

    .line 140
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 141
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 143
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    .line 144
    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0

    .line 145
    sget-object p1, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, p1, p0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p0
    :try_end_1a
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    .line 146
    :catch_1b
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to decrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .registers 5

    .line 126
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 129
    invoke-virtual {v0, p0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p0

    check-cast p0, Ljavax/crypto/SecretKey;

    .line 130
    sget-object v0, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object p1

    .line 131
    invoke-static {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object p0

    .line 132
    :catch_1b
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Failed to decrypt blob"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .registers 3

    .line 191
    :try_start_0
    const-string v0, "AndroidKeyStore"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 193
    invoke-virtual {v0, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 197
    goto :goto_12

    .line 194
    :catch_e
    move-exception p0

    .line 196
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    :goto_12
    return-void
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 73
    if-nez p1, :cond_4

    .line 74
    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    const-string v0, "AES/GCM/NoPadding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 80
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 81
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object p1

    .line 82
    array-length v1, p1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5a

    .line 85
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    const-class v1, Ljavax/crypto/spec/GCMParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljavax/crypto/spec/GCMParameterSpec;

    .line 87
    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_3f

    .line 90
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 93
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    .line 88
    :cond_3f
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid tag length: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/crypto/spec/GCMParameterSpec;->getTLen()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_5a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid iv length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt([B[B[B)[B
    .registers 5

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [[B

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1, v0}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object p0

    .line 98
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v0, 0x20

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    const-string v0, "AES"

    invoke-direct {p1, p0, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 101
    :try_start_17
    invoke-static {p1, p2}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/InvalidKeyException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_1c
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object p0

    .line 102
    :catch_1c
    move-exception p0

    .line 105
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .registers 5

    .line 203
    :try_start_0
    const-string v0, "SHA-512"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 204
    array-length v1, p0

    const/16 v2, 0x80

    if-gt v1, v2, :cond_23

    .line 209
    invoke-static {p0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    .line 210
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 211
    array-length p0, p1

    const/4 v1, 0x0

    :goto_14
    if-ge v1, p0, :cond_1e

    aget-object v2, p1, v1

    .line 212
    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 214
    :cond_1e
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    .line 205
    :cond_23
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Personalisation too long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2b} :catch_2b

    .line 215
    :catch_2b
    move-exception p0

    .line 216
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method
