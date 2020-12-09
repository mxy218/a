.class public Lcom/google/android/startop/iorap/RequestId;
.super Ljava/lang/Object;
.source "RequestId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/startop/iorap/RequestId;",
            ">;"
        }
    .end annotation
.end field

.field private static mLock:Ljava/lang/Object;

.field private static mNextRequestId:J


# instance fields
.field public final requestId:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/RequestId;->mLock:Ljava/lang/Object;

    .line 42
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    .line 109
    new-instance v0, Lcom/google/android/startop/iorap/RequestId$1;

    invoke-direct {v0}, Lcom/google/android/startop/iorap/RequestId$1;-><init>()V

    sput-object v0, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(J)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-wide p1, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    .line 63
    invoke-direct {p0}, Lcom/google/android/startop/iorap/RequestId;->checkConstructorArguments()V

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    .line 101
    invoke-direct {p0}, Lcom/google/android/startop/iorap/RequestId;->checkConstructorArguments()V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/google/android/startop/iorap/RequestId$1;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/RequestId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkConstructorArguments()V
    .registers 5

    .line 67
    iget-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_9

    .line 70
    return-void

    .line 68
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "request id must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private equals(Lcom/google/android/startop/iorap/RequestId;)Z
    .registers 6

    .line 88
    iget-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    iget-wide v2, p1, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public static nextValueForSequence()Lcom/google/android/startop/iorap/RequestId;
    .registers 7

    .line 53
    sget-object v0, Lcom/google/android/startop/iorap/RequestId;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-wide v1, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    .line 55
    sget-wide v3, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/google/android/startop/iorap/RequestId;->mNextRequestId:J

    .line 56
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_13

    .line 57
    new-instance v0, Lcom/google/android/startop/iorap/RequestId;

    invoke-direct {v0, v1, v2}, Lcom/google/android/startop/iorap/RequestId;-><init>(J)V

    return-object v0

    .line 56
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 79
    if-ne p0, p1, :cond_4

    .line 80
    const/4 p1, 0x1

    return p1

    .line 81
    :cond_4
    instance-of v0, p1, Lcom/google/android/startop/iorap/RequestId;

    if-eqz v0, :cond_f

    .line 82
    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/RequestId;->equals(Lcom/google/android/startop/iorap/RequestId;)Z

    move-result p1

    return p1

    .line 84
    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "{requestId: %d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 95
    iget-wide v0, p0, Lcom/google/android/startop/iorap/RequestId;->requestId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    return-void
.end method
