.class public Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;
.super Ljava/lang/Object;
.source "ContentDefinedChunker.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/Chunker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;
    }
.end annotation


# static fields
.field private static final DEFAULT_OUT_BYTE:B = 0x0t

.field private static final WINDOW_SIZE:I = 0x1f


# instance fields
.field private final mBreakpointPredicate:Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;

.field private final mChunkBuffer:[B

.field private final mFingerprintMixer:Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;

.field private final mMaxChunkSize:I

.field private final mMinChunkSize:I

.field private final mRabinFingerprint64:Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;


# direct methods
.method public constructor <init>(IILcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;)V
    .registers 10
    .param p1, "minChunkSize"  # I
    .param p2, "maxChunkSize"  # I
    .param p3, "rabinFingerprint64"  # Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;
    .param p4, "fingerprintMixer"  # Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;
    .param p5, "breakpointPredicate"  # Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt p1, v2, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, v1

    :goto_c
    const-string v3, "Minimum chunk size must be greater than window size."

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 59
    if-lt p2, p1, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    const-string v1, "Maximum chunk size cannot be smaller than minimum chunk size."

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mChunkBuffer:[B

    .line 63
    iput-object p3, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mRabinFingerprint64:Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;

    .line 64
    iput-object p5, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mBreakpointPredicate:Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;

    .line 65
    iput-object p4, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mFingerprintMixer:Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;

    .line 66
    iput p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mMinChunkSize:I

    .line 67
    iput p2, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mMaxChunkSize:I

    .line 68
    return-void
.end method

.method private getCurrentWindowStartByte(I)B
    .registers 4
    .param p1, "chunkLength"  # I

    .line 117
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mMinChunkSize:I

    if-ge p1, v0, :cond_6

    .line 118
    const/4 v0, 0x0

    return v0

    .line 120
    :cond_6
    iget-object v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mChunkBuffer:[B

    add-int/lit8 v1, p1, -0x1f

    aget-byte v0, v0, v1

    return v0
.end method


# virtual methods
.method public chunkify(Ljava/io/InputStream;Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;)V
    .registers 15
    .param p1, "inputStream"  # Ljava/io/InputStream;
    .param p2, "chunkConsumer"  # Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 82
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mMinChunkSize:I

    add-int/lit8 v0, v0, -0x1f

    .line 86
    .local v0, "initialReadLength":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mChunkBuffer:[B

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    move v2, v1

    .local v2, "chunkLength":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_58

    .line 90
    const-wide/16 v4, 0x0

    .line 92
    .local v4, "fingerprint":J
    :goto_11
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v6, v1

    .local v6, "b":I
    if-eq v1, v3, :cond_4c

    .line 93
    int-to-byte v1, v6

    .line 94
    .local v1, "inByte":B
    invoke-direct {p0, v2}, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->getCurrentWindowStartByte(I)B

    move-result v7

    .line 95
    .local v7, "outByte":B
    iget-object v8, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mChunkBuffer:[B

    add-int/lit8 v9, v2, 0x1

    .end local v2  # "chunkLength":I
    .local v9, "chunkLength":I
    aput-byte v1, v8, v2

    .line 97
    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mRabinFingerprint64:Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;

    .line 98
    invoke-virtual {v2, v1, v7, v4, v5}, Lcom/android/server/backup/encryption/chunking/cdc/RabinFingerprint64;->computeFingerprint64(BBJ)J

    move-result-wide v4

    .line 100
    iget v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mMaxChunkSize:I

    if-ge v9, v2, :cond_42

    iget v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mMinChunkSize:I

    if-lt v9, v2, :cond_40

    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mBreakpointPredicate:Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;

    iget-object v8, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mFingerprintMixer:Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;

    .line 103
    invoke-virtual {v8, v4, v5}, Lcom/android/server/backup/encryption/chunking/cdc/FingerprintMixer;->mix(J)J

    move-result-wide v10

    .line 102
    invoke-interface {v2, v10, v11}, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;->isBreakpoint(J)Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_42

    .line 108
    .end local v1  # "inByte":B
    .end local v7  # "outByte":B
    :cond_40
    move v2, v9

    goto :goto_11

    .line 104
    .restart local v1  # "inByte":B
    .restart local v7  # "outByte":B
    :cond_42
    :goto_42
    iget-object v2, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mChunkBuffer:[B

    invoke-static {v2, v9}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;->accept([B)V

    .line 105
    const/4 v2, 0x0

    .line 110
    .end local v1  # "inByte":B
    .end local v7  # "outByte":B
    .end local v9  # "chunkLength":I
    .restart local v2  # "chunkLength":I
    :cond_4c
    if-lez v2, :cond_57

    .line 111
    iget-object v1, p0, Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker;->mChunkBuffer:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/android/server/backup/encryption/chunking/Chunker$ChunkConsumer;->accept([B)V

    .line 113
    .end local v4  # "fingerprint":J
    .end local v6  # "b":I
    :cond_57
    goto :goto_4

    .line 114
    :cond_58
    return-void
.end method
