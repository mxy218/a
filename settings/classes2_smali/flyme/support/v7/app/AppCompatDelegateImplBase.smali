.class abstract Lflyme/support/v7/app/AppCompatDelegateImplBase;
.super Lflyme/support/v7/app/AppCompatDelegate;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
    }
.end annotation


# instance fields
.field mActionBar:Lflyme/support/v7/app/ActionBar;

.field final mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

.field final mAppCompatWindowCallback:Landroid/view/Window$Callback;

.field final mContext:Landroid/content/Context;

.field mHasActionBar:Z

.field private mIsDestroyed:Z

.field mIsFloating:Z

.field mMenuInflater:Landroid/view/MenuInflater;

.field mMzUiOptions:I

.field final mOriginalWindowCallback:Landroid/view/Window$Callback;

.field mOverlayActionBar:Z

.field mOverlayActionMode:Z

.field private mTitle:Ljava/lang/CharSequence;

.field final mWindow:Landroid/view/Window;

.field mWindowNoTitle:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Lflyme/support/v7/app/AppCompatCallback;)V
    .registers 4

    .line 69
    invoke-direct {p0}, Lflyme/support/v7/app/AppCompatDelegate;-><init>()V

    .line 70
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    .line 72
    iput-object p3, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatCallback:Lflyme/support/v7/app/AppCompatCallback;

    .line 74
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    .line 75
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of p2, p1, Lflyme/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    if-nez p2, :cond_25

    .line 79
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    .line 81
    iget-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mAppCompatWindowCallback:Landroid/view/Window$Callback;

    invoke-virtual {p1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void

    .line 76
    :cond_25
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "AppCompat has already installed itself into the Window"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public applyDayNight()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method final getActionBarThemedContext()Landroid/content/Context;
    .registers 2

    .line 136
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 138
    invoke-virtual {v0}, Lflyme/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_10

    .line 142
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    :cond_10
    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 105
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    if-nez v0, :cond_19

    .line 106
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 107
    new-instance v0, Lflyme/support/v7/view/SupportMenuInflater;

    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    if-eqz v1, :cond_12

    .line 108
    invoke-virtual {v1}, Lflyme/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_14

    :cond_12
    iget-object v1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mContext:Landroid/content/Context;

    :goto_14
    invoke-direct {v0, v1}, Lflyme/support/v7/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    .line 110
    :cond_19
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mMenuInflater:Landroid/view/MenuInflater;

    return-object p0
.end method

.method public getSupportActionBar()Lflyme/support/v7/app/ActionBar;
    .registers 1

    .line 94
    invoke-virtual {p0}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->initWindowDecorActionBar()V

    .line 95
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    return-object p0
.end method

.method final getTitle()Ljava/lang/CharSequence;
    .registers 3

    .line 233
    iget-object v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mOriginalWindowCallback:Landroid/view/Window$Callback;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_d

    .line 234
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 237
    :cond_d
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method final getWindowCallback()Landroid/view/Window$Callback;
    .registers 1

    .line 215
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object p0

    return-object p0
.end method

.method abstract initWindowDecorActionBar()V
.end method

.method final isDestroyed()Z
    .registers 1

    .line 211
    iget-boolean p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return p0
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mIsDestroyed:Z

    return-void
.end method

.method abstract onKeyShortcut(ILandroid/view/KeyEvent;)Z
.end method

.method abstract onMenuOpened(ILandroid/view/Menu;)Z
.end method

.method abstract onPanelClosed(ILandroid/view/Menu;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method

.method final peekSupportActionBar()Lflyme/support/v7/app/ActionBar;
    .registers 1

    .line 99
    iget-object p0, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mActionBar:Lflyme/support/v7/app/ActionBar;

    return-object p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mTitle:Ljava/lang/CharSequence;

    .line 221
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplBase;->onTitleChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setUiOptions(I)V
    .registers 2

    .line 316
    iput p1, p0, Lflyme/support/v7/app/AppCompatDelegateImplBase;->mMzUiOptions:I

    return-void
.end method

.method wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3

    .line 87
    new-instance v0, Lflyme/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;

    invoke-direct {v0, p0, p1}, Lflyme/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Lflyme/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V

    return-object v0
.end method
