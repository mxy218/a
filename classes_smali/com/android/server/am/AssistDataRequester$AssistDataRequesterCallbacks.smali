.class public interface abstract Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
.super Ljava/lang/Object;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AssistDataRequester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AssistDataRequesterCallbacks"
.end annotation


# virtual methods
.method public abstract canHandleReceivedAssistDataLocked()Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacksLock"
        }
    .end annotation
.end method

.method public onAssistDataReceivedLocked(Landroid/os/Bundle;II)V
    .registers 4
    .param p1, "data"  # Landroid/os/Bundle;
    .param p2, "activityIndex"  # I
    .param p3, "activityCount"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacksLock"
        }
    .end annotation

    .line 92
    return-void
.end method

.method public onAssistRequestCompleted()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacksLock"
        }
    .end annotation

    .line 115
    return-void
.end method

.method public onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "screenshot"  # Landroid/graphics/Bitmap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCallbacksLock"
        }
    .end annotation

    .line 104
    return-void
.end method
