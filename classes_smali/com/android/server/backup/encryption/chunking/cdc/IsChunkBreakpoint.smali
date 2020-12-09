.class public Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;
.super Ljava/lang/Object;
.source "IsChunkBreakpoint.java"

# interfaces
.implements Lcom/android/server/backup/encryption/chunking/cdc/ContentDefinedChunker$BreakpointPredicate;


# instance fields
.field private final mBitmask:J

.field private final mLeadingZeros:I


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    const-string v1, "Average number of trials must be non-negative"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 53
    long-to-double p1, p1

    invoke-static {p1, p2}, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->log2(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p1, p1

    iput p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mLeadingZeros:I

    .line 54
    const-wide/16 p1, -0x1

    iget v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mLeadingZeros:I

    ushr-long/2addr p1, v0

    not-long p1, p1

    iput-wide p1, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mBitmask:J

    .line 55
    return-void
.end method

.method private static log2(D)D
    .registers 4

    .line 76
    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4000000000000000L  # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public getLeadingZeros()I
    .registers 2

    .line 68
    iget v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mLeadingZeros:I

    return v0
.end method

.method public isBreakpoint(J)Z
    .registers 5

    .line 63
    iget-wide v0, p0, Lcom/android/server/backup/encryption/chunking/cdc/IsChunkBreakpoint;->mBitmask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return p1
.end method
