.class public interface abstract Lcom/android/settings/slices/Sliceable;
.super Ljava/lang/Object;
.source "Sliceable.java"


# direct methods
.method public static setCopyContent(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 5

    const-string v0, "clipboard"

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const-string/jumbo v1, "text"

    .line 95
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const p2, 0x7f120588

    .line 98
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public copy()V
    .registers 1

    return-void
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/SliceBackgroundWorker;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAsyncUpdate()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isCopyableSlice()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isSliceable()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public useDynamicSliceSummary()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
