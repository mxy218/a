.class public abstract Lflyme/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AppCompatDelegate$NightMode;
    }
.end annotation


# static fields
.field private static sDefaultNightMode:I = -0x1


# direct methods
.method constructor <init>()V
    .registers 1

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;
    .registers 3

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/app/Dialog;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;
    .registers 3

    .line 184
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lflyme/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;

    move-result-object p0

    return-object p0
.end method

.method private static create(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)Lflyme/support/v7/app/AppCompatDelegate;
    .registers 5

    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_c

    .line 191
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV23;

    invoke-direct {v0, p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V

    return-object v0

    :cond_c
    const/16 v1, 0xe

    if-lt v0, v1, :cond_16

    .line 193
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV14;

    invoke-direct {v0, p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V

    return-object v0

    :cond_16
    const/16 v1, 0xb

    if-lt v0, v1, :cond_20

    .line 195
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV11;

    invoke-direct {v0, p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V

    return-object v0

    .line 197
    :cond_20
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplV7;

    invoke-direct {v0, p0, p1, p2}, Lflyme/support/v7/app/AppCompatDelegateImplV7;-><init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V

    return-object v0
.end method

.method public static getDefaultNightMode()I
    .registers 1

    .line 471
    sget v0, Lflyme/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I

    return v0
.end method


# virtual methods
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract applyDayNight()Z
.end method

.method public abstract findViewById(I)Landroid/view/View;
    .param p1  # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method

.method public abstract getSupportActionBar()Lflyme/support/v7/app/ActionBar;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract installViewFactory()V
.end method

.method public abstract invalidateOptionsMenu()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method

.method public abstract onPostResume()V
.end method

.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method

.method public abstract onStop()V
.end method

.method public abstract requestWindowFeature(I)Z
.end method

.method public abstract setContentView(I)V
    .param p1  # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
.end method

.method public abstract setContentView(Landroid/view/View;)V
.end method

.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setUiOptions(I)V
.end method
