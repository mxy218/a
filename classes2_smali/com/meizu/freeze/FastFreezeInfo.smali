.class final Lcom/meizu/freeze/FastFreezeInfo;
.super Ljava/lang/Object;
.source "FastFreezeInfo.java"


# instance fields
.field mIntervalTime:I

.field mNowTime:J

.field mPackageName:Ljava/lang/String;

.field mPids:[I


# direct methods
.method public constructor <init>([IILjava/lang/String;J)V
    .registers 6
    .param p1, "pids"  # [I
    .param p2, "intervalTime"  # I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "nowTime"  # J

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/meizu/freeze/FastFreezeInfo;->mPids:[I

    .line 24
    iput p2, p0, Lcom/meizu/freeze/FastFreezeInfo;->mIntervalTime:I

    .line 25
    iput-object p3, p0, Lcom/meizu/freeze/FastFreezeInfo;->mPackageName:Ljava/lang/String;

    .line 26
    iput-wide p4, p0, Lcom/meizu/freeze/FastFreezeInfo;->mNowTime:J

    .line 27
    return-void
.end method
