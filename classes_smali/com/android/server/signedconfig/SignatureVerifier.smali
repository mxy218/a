.class public Lcom/android/server/signedconfig/SignatureVerifier;
.super Ljava/lang/Object;
.source "SignatureVerifier.java"


# static fields
.field private static final DBG:Z = false

.field private static final DEBUG_KEY:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

.field private static final PROD_KEY:Ljava/lang/String; = "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

.field private static final TAG:Ljava/lang/String; = "SignedConfig"


# instance fields
.field private final mDebugKey:Ljava/security/PublicKey;

.field private final mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

.field private final mProdKey:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>(Lcom/android/server/signedconfig/SignedConfigEvent;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    .line 56
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_10

    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAEmJKs4lSn+XRhMQmMid+Zbhbu13YrU1haIhVC5296InRu1x7A8PV1ejQyisBODGgRY6pqkAHRncBCYcgg5wIIJg=="

    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    .line 57
    const-string p1, "MFkwEwYHKoZIzj0CAQYIKoZIzj0DAQcDQgAE+lky6wKyGL6lE1VrD0YTMHwb0Xwc+tzC8MvnrzVxodvTpVY/jV7V+Zktcx+pry43XPABFRXtbhTo+qykhyBA1g=="

    invoke-static {p1}, Lcom/android/server/signedconfig/SignatureVerifier;->createKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    .line 58
    return-void
.end method

.method private static createKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    .line 63
    const-string v0, "SignedConfig"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    .line 64
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_10} :catch_23

    .line 68
    nop

    .line 70
    :try_start_11
    const-string p0, "EC"

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p0

    .line 71
    invoke-virtual {p0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_1b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_1b} :catch_1c
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_11 .. :try_end_1b} :catch_1c

    return-object p0

    .line 72
    :catch_1c
    move-exception p0

    .line 73
    const-string v2, "Failed to construct public key"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    return-object v1

    .line 65
    :catch_23
    move-exception p0

    .line 66
    const-string v2, "Failed to base64 decode public key"

    invoke-static {v0, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    return-object v1
.end method

.method private verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 80
    const-string v0, "SHA256withECDSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 82
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 83
    invoke-virtual {v0, p3}, Ljava/security/Signature;->verify([B)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 97
    const-string v0, "SignedConfig"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_b} :catch_57

    .line 102
    nop

    .line 103
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 106
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_30

    .line 107
    iget-object v2, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mDebugKey:Ljava/security/PublicKey;

    if-eqz v2, :cond_2b

    .line 109
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 110
    const-string p1, "Verified config using debug key"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    iput v3, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 112
    return v3

    .line 117
    :cond_2b
    const-string v2, "Debuggable build, but have no debug key"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_30
    iget-object v2, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mProdKey:Ljava/security/PublicKey;

    if-nez v2, :cond_40

    .line 121
    const-string p1, "No prod key; construction failed?"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/16 p2, 0x9

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 124
    return v1

    .line 126
    :cond_40
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/signedconfig/SignatureVerifier;->verifyWithPublicKey(Ljava/security/PublicKey;[B[B)Z

    move-result p1

    if-eqz p1, :cond_51

    .line 127
    const-string p1, "Verified config using production key"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x2

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->verifiedWith:I

    .line 129
    return v3

    .line 132
    :cond_51
    iget-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x7

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 133
    return v1

    .line 98
    :catch_57
    move-exception p1

    .line 99
    iget-object p1, p0, Lcom/android/server/signedconfig/SignatureVerifier;->mEvent:Lcom/android/server/signedconfig/SignedConfigEvent;

    const/4 p2, 0x3

    iput p2, p1, Lcom/android/server/signedconfig/SignedConfigEvent;->status:I

    .line 100
    const-string p1, "Failed to base64 decode signature"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return v1
.end method
