.class public Lcom/android/systemui/screenshot/AsyncTaskUtil;
.super Ljava/lang/Object;
.source "AsyncTaskUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;
    }
.end annotation


# direct methods
.method public static doAsync(Ljava/lang/String;Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 10
    :cond_3
    new-instance v0, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/screenshot/AsyncTaskUtil$1;-><init>(Lcom/android/systemui/screenshot/AsyncTaskUtil$AsyncCallBack;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, p1, v1

    .line 26
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
