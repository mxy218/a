.class public final Landroidx/core/os/TraceCompat;
.super Ljava/lang/Object;
.source "TraceCompat.java"


# direct methods
.method public static beginSection(Ljava/lang/String;)V
    .registers 3
    .param p0  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 47
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public static endSection()V
    .registers 2

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 60
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    return-void
.end method
