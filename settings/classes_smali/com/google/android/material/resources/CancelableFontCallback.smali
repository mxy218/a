.class public final Lcom/google/android/material/resources/CancelableFontCallback;
.super Lcom/google/android/material/resources/TextAppearanceFontCallback;
.source "CancelableFontCallback.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;
    }
.end annotation


# instance fields
.field private final applyFont:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

.field private cancelled:Z

.field private final fallbackFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;Landroid/graphics/Typeface;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lcom/google/android/material/resources/TextAppearanceFontCallback;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    .line 44
    iput-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    return-void
.end method

.method private updateIfNotCancelled(Landroid/graphics/Typeface;)V
    .registers 3

    .line 68
    iget-boolean v0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    if-nez v0, :cond_9

    .line 69
    iget-object p0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->applyFont:Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;

    invoke-interface {p0, p1}, Lcom/google/android/material/resources/CancelableFontCallback$ApplyFont;->apply(Landroid/graphics/Typeface;)V

    :cond_9
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/google/android/material/resources/CancelableFontCallback;->cancelled:Z

    return-void
.end method

.method public onFontRetrievalFailed(I)V
    .registers 2

    .line 54
    iget-object p1, p0, Lcom/google/android/material/resources/CancelableFontCallback;->fallbackFont:Landroid/graphics/Typeface;

    invoke-direct {p0, p1}, Lcom/google/android/material/resources/CancelableFontCallback;->updateIfNotCancelled(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public onFontRetrieved(Landroid/graphics/Typeface;Z)V
    .registers 3

    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/material/resources/CancelableFontCallback;->updateIfNotCancelled(Landroid/graphics/Typeface;)V

    return-void
.end method
