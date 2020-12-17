.class public abstract Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;
.super Ljava/lang/Object;
.source "SeekBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AccessibilitySeekListener"
.end annotation


# virtual methods
.method public abstract onAccessibilitySeekBackward()Z
.end method

.method public abstract onAccessibilitySeekForward()Z
.end method
