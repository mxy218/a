.class public Lcom/android/settings/slices/BlockingSlicePrefController;
.super Lcom/android/settings/slices/SlicePreferenceController;
.source "BlockingSlicePrefController.java"

# interfaces
.implements Lcom/android/settings/core/BasePreferenceController$UiBlocker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SlicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/slice/Slice;)V
    .registers 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/slices/SlicePreferenceController;->onChanged(Landroidx/slice/Slice;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/core/BasePreferenceController;->mUiBlockListener:Lcom/android/settings/core/BasePreferenceController$UiBlockListener;

    if-eqz p1, :cond_a

    .line 40
    invoke-interface {p1, p0}, Lcom/android/settings/core/BasePreferenceController$UiBlockListener;->onBlockerWorkFinished(Lcom/android/settings/core/BasePreferenceController;)V

    :cond_a
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/BlockingSlicePrefController;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method
