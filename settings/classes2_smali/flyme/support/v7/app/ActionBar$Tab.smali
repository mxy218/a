.class public abstract Lflyme/support/v7/app/ActionBar$Tab;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Tab"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getContentDescription()Ljava/lang/CharSequence;
.end method

.method public abstract getCustomView()Landroid/view/View;
.end method

.method public abstract getIcon()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getMinWidth()I
.end method

.method public abstract getPaddingEnd()I
.end method

.method public abstract getPaddingStart()I
.end method

.method public abstract getPosition()I
.end method

.method public abstract getText()Ljava/lang/CharSequence;
.end method

.method public abstract getTextColor()Landroid/content/res/ColorStateList;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract select()V
.end method

.method public abstract select(Z)V
.end method

.method public abstract setMinWidth(I)V
.end method

.method public abstract setPadding(II)V
.end method
