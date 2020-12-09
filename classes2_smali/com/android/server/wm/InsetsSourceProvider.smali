.class Lcom/android/server/wm/InsetsSourceProvider;
.super Ljava/lang/Object;
.source "InsetsSourceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

.field private mClientVisible:Z

.field private mControl:Landroid/view/InsetsSourceControl;

.field private final mControllable:Z

.field private mControllingWin:Lcom/android/server/wm/WindowState;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFrameProvider:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mServerVisible:Z

.field private final mSource:Landroid/view/InsetsSource;

.field private final mStateController:Lcom/android/server/wm/InsetsStateController;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method constructor <init>(Landroid/view/InsetsSource;Lcom/android/server/wm/InsetsStateController;Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    .line 72
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    .line 74
    iput-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 75
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    .line 77
    invoke-virtual {p1}, Landroid/view/InsetsSource;->getType()I

    move-result p1

    .line 78
    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_34

    if-ne p1, p3, :cond_25

    goto :goto_34

    .line 80
    :cond_25
    const/16 v0, 0xa

    if-ne p1, v0, :cond_31

    .line 81
    sget p1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-lt p1, p3, :cond_2e

    move p2, p3

    :cond_2e
    iput-boolean p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    goto :goto_3c

    .line 83
    :cond_31
    iput-boolean p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    goto :goto_3c

    .line 79
    :cond_34
    :goto_34
    sget p1, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3a

    move p2, p3

    :cond_3a
    iput-boolean p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    .line 85
    :goto_3c
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsStateController;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/InsetsSourceProvider;)Landroid/view/InsetsSource;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/wm/InsetsSourceProvider;Z)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/InsetsSourceControl;)Landroid/view/InsetsSourceControl;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object p1
.end method

.method private setClientVisible(Z)V
    .registers 4

    .line 179
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne v0, p1, :cond_5

    .line 180
    return-void

    .line 182
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    .line 183
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    sget-object v0, Lcom/android/server/wm/-$$Lambda$guE7h8X4ZgHS-WlK6mDEaOIHG60;->INSTANCE:Lcom/android/server/wm/-$$Lambda$guE7h8X4ZgHS-WlK6mDEaOIHG60;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-static {v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 185
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 186
    return-void
.end method

.method private setServerVisible(Z)V
    .registers 2

    .line 189
    iput-boolean p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    .line 190
    invoke-direct {p0}, Lcom/android/server/wm/InsetsSourceProvider;->updateVisibility()V

    .line 191
    return-void
.end method

.method private updateVisibility()V
    .registers 3

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mServerVisible:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 195
    return-void
.end method


# virtual methods
.method getControl()Landroid/view/InsetsSourceControl;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    return-object v0
.end method

.method getSource()Landroid/view/InsetsSource;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    return-object v0
.end method

.method isClientVisible()Z
    .registers 2

    .line 202
    sget v0, Landroid/view/ViewRootImpl;->sNewInsetsMode:I

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method isControllable()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllable:Z

    return v0
.end method

.method onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsSource;)Z
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_16

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    iget-boolean v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    if-ne p1, v0, :cond_d

    goto :goto_16

    .line 174
    :cond_d
    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 175
    const/4 p1, 0x1

    return p1

    .line 172
    :cond_16
    :goto_16
    const/4 p1, 0x0

    return p1
.end method

.method onPostLayout()V
    .registers 5

    .line 127
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_5

    .line 128
    return-void

    .line 131
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    if-eqz v0, :cond_22

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2b

    .line 135
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 137
    :goto_2b
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_51

    .line 139
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 140
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, v0}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mStateController:Lcom/android/server/wm/InsetsStateController;

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->notifyControlChanged(Lcom/android/server/wm/WindowState;)V

    .line 144
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-nez v0, :cond_69

    const/4 v0, 0x1

    goto :goto_6a

    :cond_69
    const/4 v0, 0x0

    :goto_6a
    invoke-direct {p0, v0}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 146
    return-void
.end method

.method setWindow(Lcom/android/server/wm/WindowState;Lcom/android/internal/util/function/TriConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/DisplayFrames;",
            "Lcom/android/server/wm/WindowState;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_8

    .line 108
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->setInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 110
    :cond_8
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 111
    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mFrameProvider:Lcom/android/internal/util/function/TriConsumer;

    .line 112
    if-nez p1, :cond_1d

    .line 113
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider;->setServerVisible(Z)V

    .line 114
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    goto :goto_2a

    .line 116
    :cond_1d
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->setInsetProvider(Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 117
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_2a

    .line 118
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/InsetsSourceProvider;->updateControlForTarget(Lcom/android/server/wm/WindowState;Z)V

    .line 121
    :cond_2a
    :goto_2a
    return-void
.end method

.method updateControlForTarget(Lcom/android/server/wm/WindowState;Z)V
    .registers 7

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_7

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    .line 151
    return-void

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_e

    if-nez p2, :cond_e

    .line 154
    return-void

    .line 156
    :cond_e
    if-nez p1, :cond_16

    .line 158
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    .line 159
    return-void

    .line 161
    :cond_16
    new-instance p2, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$1;)V

    iput-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 162
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result p2

    invoke-static {p2}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result p2

    invoke-direct {p0, p2}, Lcom/android/server/wm/InsetsSourceProvider;->setClientVisible(Z)V

    .line 163
    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    iget-boolean v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mClientVisible:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 165
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControllingWin:Lcom/android/server/wm/WindowState;

    .line 166
    new-instance p1, Landroid/view/InsetsSourceControl;

    iget-object p2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mSource:Landroid/view/InsetsSource;

    invoke-virtual {p2}, Landroid/view/InsetsSource;->getType()I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mAdapter:Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    invoke-static {v0}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->access$100(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    .line 167
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/InsetsSourceProvider;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p1, p2, v0, v1}, Landroid/view/InsetsSourceControl;-><init>(ILandroid/view/SurfaceControl;Landroid/graphics/Point;)V

    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    .line 168
    return-void
.end method
