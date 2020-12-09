.class final Lcom/android/server/power/PowerManagerService$ProfilePowerState;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProfilePowerState"
.end annotation


# instance fields
.field mLastUserActivityTime:J

.field mLockingNotified:Z

.field mScreenOffTimeout:J

.field final mUserId:I

.field mWakeLockSummary:I


# direct methods
.method public constructor <init>(IJ)V
    .registers 4

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mUserId:I

    .line 619
    iput-wide p2, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mScreenOffTimeout:J

    .line 621
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/power/PowerManagerService$ProfilePowerState;->mLastUserActivityTime:J

    .line 622
    return-void
.end method
