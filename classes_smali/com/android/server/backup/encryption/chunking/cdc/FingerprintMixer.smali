.class public Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;
.super Ljava/lang/Object;
.source "FingerprintMixer.java"


# static fields
.field private static final DERIVED_KEY_NAME:Ljava/lang/String; = "RabinFingerprint64Mixer"

.field public static final SALT_LENGTH_BYTES:I = 0x20


# instance fields
.field private final mAddend:J

.field private final mMultiplicand:J


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    array-length v0, p2

    const/16 v1, 0x20

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Requires a 256-bit salt."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    .line 62
    if-eqz p1, :cond_36

    .line 65
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    const-string v1, "RabinFingerprint64Mixer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/android/server/backup/encryption/chunking/cdc/Hkdf;->hkdf([B[B[B)[B

    move-result-object p1

    .line 67
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mAddend:J

    .line 71
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mMultiplicand:J

    .line 72
    return-void

    .line 63
    :cond_36
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "SecretKey must support encoding for FingerprintMixer."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method getAddend()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mAddend:J

    return-wide v0
.end method

.method getMultiplicand()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mMultiplicand:J

    return-wide v0
.end method

.method mix(J)J
    .registers 5

    .line 83
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mAddend:J

    add-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mMultiplicand:J

    mul-long/2addr p1, v0

    return-wide p1
.end method
