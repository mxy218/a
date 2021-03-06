.class public Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;
.super Ljava/lang/Object;
.source "RemoteInputQuickSettingsDisabler.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLastOrientation:I

.field mRemoteInputActive:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field misLandscape:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    .line 49
    const-class v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 50
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    .line 51
    invoke-interface {p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private recomputeDisableFlags()V
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    return-void
.end method


# virtual methods
.method public adjustDisableFlags(I)I
    .registers 3

    .line 55
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->misLandscape:Z

    if-eqz p0, :cond_a

    or-int/lit8 p1, p1, 0x1

    :cond_a
    return p1
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 71
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    if-eq v0, v1, :cond_15

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 72
    :goto_c
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->misLandscape:Z

    .line 73
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mLastOrientation:I

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->recomputeDisableFlags()V

    :cond_15
    return-void
.end method

.method public setRemoteInputActive(Z)V
    .registers 3

    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    if-eq v0, p1, :cond_9

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->mRemoteInputActive:Z

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->recomputeDisableFlags()V

    :cond_9
    return-void
.end method
