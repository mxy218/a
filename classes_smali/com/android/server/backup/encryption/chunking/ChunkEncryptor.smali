.class public Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;
.super Ljava/lang/Object;
.source "ChunkEncryptor.java"


# static fields
.field private static final CIPHER_ALGORITHM:Ljava/lang/String; = "AES/GCM/NoPadding"

.field private static final GCM_NONCE_LENGTH_BYTES:I = 0xc

.field private static final GCM_TAG_LENGTH_BYTES:I = 0x10


# instance fields
.field private final mSecretKey:Ljavax/crypto/SecretKey;

.field private final mSecureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 46
    iput-object p2, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    .line 47
    return-void
.end method

.method private generateNonce()[B
    .registers 3

    .line 86
    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 87
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 88
    return-object v0
.end method


# virtual methods
.method public encrypt(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->generateNonce()[B

    move-result-object v0

    .line 63
    :try_start_4
    const-string v1, "AES/GCM/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 64
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/backup/encryption/chunking/ChunkEncryptor;->mSecretKey:Ljavax/crypto/SecretKey;

    new-instance v4, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v5, 0x80

    invoke-direct {v4, v5, v0}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_17} :catch_2b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4 .. :try_end_17} :catch_2b
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4 .. :try_end_17} :catch_2b

    .line 73
    nop

    .line 76
    :try_start_18
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p2
    :try_end_1c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_18 .. :try_end_1c} :catch_22

    .line 80
    nop

    .line 82
    invoke-static {p1, v0, p2}, Lcom/android/server/backup/encryption/chunking/EncryptedChunk;->create(Lcom/android/server/backup/encryption/chunk/ChunkHash;[B[B)Lcom/android/server/backup/encryption/chunking/EncryptedChunk;

    move-result-object p1

    return-object p1

    .line 77
    :catch_22
    move-exception p1

    .line 79
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Impossible: threw BadPaddingException in encrypt mode."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 68
    :catch_2b
    move-exception p1

    .line 72
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method
