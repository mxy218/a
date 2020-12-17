.class public Lcom/android/settingslib/suggestions/SuggestionController;
.super Ljava/lang/Object;
.source "SuggestionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
    }
.end annotation


# virtual methods
.method public getSuggestions()Ljava/util/List;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public start()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public stop()V
    .registers 1

    const p0, 0x0

    throw p0
.end method
