.class public interface abstract Landroidx/slice/core/SliceAction;
.super Ljava/lang/Object;
.source "SliceAction.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation


# virtual methods
.method public abstract getAction()Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getIcon()Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getImageMode()I
.end method

.method public abstract getPriority()I
.end method

.method public abstract getTitle()Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isToggle()Z
.end method
