.class Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlymeScreenshotRunnable"
.end annotation


# instance fields
.field private mScreenshotTriggeredGestureType:I

.field private mScreenshotType:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 6063
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6064
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotType:I

    .line 6065
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotTriggeredGestureType:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x1"  # Lcom/android/server/policy/PhoneWindowManager$1;

    .line 6063
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method


# virtual methods
.method public getScreenshotTriggeredGestureType()I
    .registers 2

    .line 6081
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotTriggeredGestureType:I

    return v0
.end method

.method public reset()V
    .registers 2

    .line 6076
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->setScreenshotType(I)V

    .line 6077
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotTriggeredGestureType:I

    .line 6078
    return-void
.end method

.method public run()V
    .registers 4

    .line 6086
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotType:I

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotTriggeredGestureType:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayPolicy;->takeScreenshot(II)V

    .line 6087
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4002(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 6089
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotTriggeredGestureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 6090
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectInterceptLongScreenShot(Landroid/content/Context;)V

    goto :goto_27

    .line 6092
    :cond_1e
    if-nez v0, :cond_27

    .line 6093
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/policy/OfflineUsageStats;->collectInterceptScreenShot(Landroid/content/Context;)V

    .line 6096
    :cond_27
    :goto_27
    return-void
.end method

.method public setScreenshotTriggeredGestureType(I)V
    .registers 2
    .param p1, "triggeredGestureType"  # I

    .line 6072
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotTriggeredGestureType:I

    .line 6073
    return-void
.end method

.method public setScreenshotType(I)V
    .registers 2
    .param p1, "screenshotType"  # I

    .line 6068
    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager$FlymeScreenshotRunnable;->mScreenshotType:I

    .line 6069
    return-void
.end method
