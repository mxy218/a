.class public Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;
.super Ljava/lang/Object;
.source "SimpleCryptoAES.java"


# static fields
.field private static instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final PREFERENCE_SIMPLE_CRYPTO_AES_KEY_FILE:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private iv:[B

.field private salt:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.meizu.statsapp.v3.simple_crypto_AES"

    .line 167
    iput-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->PREFERENCE_SIMPLE_CRYPTO_AES_KEY_FILE:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->context:Landroid/content/Context;

    const-string p1, "salt"

    const/16 v0, 0x20

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->readFromPreferenceOrCreateRandom(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->salt:[B

    const-string p1, "iv"

    const/16 v0, 0x10

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->readFromPreferenceOrCreateRandom(Ljava/lang/String;I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->iv:[B

    return-void
.end method

.method private deriveKeySecurely(Ljava/lang/String;I)Ljavax/crypto/SecretKey;
    .registers 5

    .line 156
    new-instance v0, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->salt:[B

    mul-int/lit8 p2, p2, 0x8

    const/16 v1, 0x64

    invoke-direct {v0, p1, p0, v1, p2}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    :try_start_f
    const-string p0, "PBKDF2WithHmacSHA1"

    .line 159
    invoke-static {p0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object p0

    .line 160
    invoke-virtual {p0, v0}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object p0

    invoke-interface {p0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p0

    .line 161
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    const-string p2, "AES"

    invoke-direct {p1, p0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_24} :catch_25

    return-object p1

    :catch_25
    move-exception p0

    .line 163
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Deal with exceptions properly!"

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static derivesKeyWithSHA1PRNG([B)Ljavax/crypto/SecretKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AES"

    .line 140
    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v1, "SHA1PRNG"

    const-string v2, "Crypto"

    .line 141
    invoke-static {v1, v2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    .line 142
    invoke-virtual {v1, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    const/16 p0, 0x80

    .line 143
    invoke-virtual {v0, p0, v1}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 144
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;
    .registers 2

    .line 51
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;

    if-eqz v0, :cond_5

    return-object v0

    .line 52
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KeyMgr is not initialised - invoke at least once with parameterised init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .registers 3

    .line 41
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;

    if-nez v0, :cond_17

    .line 42
    sget-object v0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_7
    sget-object v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;

    if-nez v1, :cond_12

    .line 44
    new-instance v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;

    invoke-direct {v1, p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->instance:Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;

    .line 46
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-void
.end method

.method private readFromPreferenceOrCreateRandom(Ljava/lang/String;I)[B
    .registers 6

    .line 172
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->context:Landroid/content/Context;

    const-string v0, "com.meizu.statsapp.v3.simple_crypto_AES"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, ""

    .line 173
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1e

    .line 175
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 176
    array-length v1, v0

    if-ne v1, p2, :cond_1e

    return-object v0

    .line 180
    :cond_1e
    new-array p2, p2, [B

    .line 181
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 182
    invoke-virtual {v0, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 183
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 184
    invoke-static {p2, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object p2
.end method

.method private static toByte(Ljava/lang/String;)[B
    .registers 6

    .line 122
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 123
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_22

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v4, v3, 0x2

    .line 125
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_22
    return-object v1
.end method

.method private static toHex([B)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 114
    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    .line 115
    :goto_e
    array-length v2, p0

    if-ge v1, v2, :cond_2e

    .line 116
    aget-byte v2, p0, v1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    const-string v3, "0123456789ABCDEF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v2, p0, v1

    and-int/lit8 v2, v2, 0xf

    .line 117
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 119
    :cond_2e
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p3, v1, :cond_23

    .line 91
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->derivesKeyWithSHA1PRNG([B)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string p1, "AES"

    .line 92
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 93
    invoke-virtual {p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 94
    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->toByte(Ljava/lang/String;)[B

    move-result-object p0

    .line 95
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 96
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_23
    if-ne p3, v0, :cond_49

    const-string p3, "AES/CBC/PKCS5Padding"

    .line 100
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/16 v1, 0x20

    .line 101
    invoke-direct {p0, p1, v1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->deriveKeySecurely(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 102
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->iv:[B

    invoke-direct {v1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p3, v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 103
    invoke-static {p2}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->toByte(Ljava/lang/String;)[B

    move-result-object p0

    .line 104
    invoke-virtual {p3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 105
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    return-object p1

    :cond_49
    const/4 p0, 0x0

    return-object p0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_21

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->derivesKeyWithSHA1PRNG([B)Ljavax/crypto/SecretKey;

    move-result-object p0

    const-string p1, "AES"

    .line 68
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 69
    invoke-virtual {p1, v0, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 71
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    const/4 v1, 0x2

    if-ne p3, v1, :cond_47

    const-string p3, "AES/CBC/PKCS5Padding"

    .line 75
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p3

    const/16 v1, 0x20

    .line 76
    invoke-direct {p0, p1, v1}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->deriveKeySecurely(Ljava/lang/String;I)Ljavax/crypto/SecretKey;

    move-result-object p1

    .line 77
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->iv:[B

    invoke-direct {v1, p0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p3, v0, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 78
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p3, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0

    .line 79
    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/secure/SimpleCryptoAES;->toHex([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method
