.class public Lcom/android/server/backup/encryption/chunking/ChunkHasher;
.super Ljava/lang/Object;
.source "ChunkHasher.java"


# static fields
.field private static final MAC_ALGORITHM:Ljava/lang/String; = "HmacSHA256"


# instance fields
.field private final mSecretKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/server/backup/encryption/chunking/ChunkHasher;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 34
    return-void
.end method


# virtual methods
.method public computeHash([B)Lcom/android/server/backup/encryption/chunk/ChunkHash;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 39
    :try_start_0
    const-string v0, "HmacSHA256"

    invoke-static {v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/ChunkHasher;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 41
    new-instance v1, Lcom/android/server/backup/encryption/chunk/ChunkHash;

    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/backup/encryption/chunk/ChunkHash;-><init>([B)V
    :try_end_14
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_14} :catch_15

    return-object v1

    .line 42
    :catch_15
    move-exception p1

    .line 44
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
