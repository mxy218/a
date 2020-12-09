.class Lcom/android/server/wm/WindowToken;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field hasVisible:Z

.field private mHidden:Z

.field final mOwnerCanManageAppTokens:Z

.field mPersistOnEmpty:Z

.field final mRoundedCornerOverlay:Z

.field private final mWindowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field paused:Z

.field sendingToBottom:Z

.field stringName:Ljava/lang/String;

.field final token:Landroid/os/IBinder;

.field waitingToShow:Z

.field final windowType:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V
    .registers 15

    .line 110
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V

    .line 112
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZ)V
    .registers 8

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 69
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    .line 92
    new-instance p1, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/-$$Lambda$WindowToken$tFLHn4S6WuSXW1gp1kvT_sp7WC0;-><init>(Lcom/android/server/wm/WindowToken;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    .line 117
    iput-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 118
    iput p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    .line 119
    iput-boolean p4, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 120
    iput-boolean p6, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    .line 121
    iput-boolean p7, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    .line 122
    invoke-virtual {p0, p5}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 123
    return-void
.end method


# virtual methods
.method addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 203
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 205
    return-void

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 209
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWindowComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowToken;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 210
    iget-object p1, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    .line 213
    :cond_19
    return-void
.end method

.method asAppWindowToken()Lcom/android/server/wm/AppWindowToken;
    .registers 2

    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method canLayerAboveSystemBars()Z
    .registers 5

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    invoke-interface {v0, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    const/16 v3, 0x7e3

    invoke-interface {v1, v3, v2}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(IZ)I

    move-result v1

    .line 338
    iget-boolean v2, p0, Lcom/android/server/wm/WindowToken;->mOwnerCanManageAppTokens:Z

    if-eqz v2, :cond_20

    if-le v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 4

    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "windows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "windowType="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/WindowToken;->windowType:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 296
    const-string p3, " hidden="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 297
    const-string p3, " hasVisible="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 298
    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-nez p3, :cond_39

    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    if-eqz p3, :cond_50

    .line 299
    :cond_39
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "waitingToShow="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 300
    const-string p2, " sendingToBottom="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/server/wm/WindowToken;->sendingToBottom:Z

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 302
    :cond_50
    return-void
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 318
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 222
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 223
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_19

    .line 225
    return-object v1

    .line 221
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 228
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getSizeCompatScale()F
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    return v0
.end method

.method isEmpty()Z
    .registers 2

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 196
    iget p1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    iget p2, p2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt p1, p2, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method isHidden()Z
    .registers 2

    .line 132
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    return v0
.end method

.method public synthetic lambda$new$0$WindowToken(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)I
    .registers 6

    .line 94
    nop

    .line 95
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    const-string v1, " is not a child of token="

    if-ne v0, p0, :cond_32

    .line 100
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v0, p0, :cond_15

    .line 105
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowToken;->isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_14

    :cond_13
    const/4 p1, -0x1

    :goto_14
    return p1

    .line 101
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "existingWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newWindow="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method okToAnimate()Z
    .registers 2

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method okToDisplay()Z
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 261
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->reParentWindowToken(Lcom/android/server/wm/WindowToken;)V

    .line 268
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 269
    return-void
.end method

.method removeAllWindowsIfPossible()V
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 137
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 140
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeIfPossible()V

    .line 136
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 142
    :cond_18
    return-void
.end method

.method removeImmediately()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_b

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    .line 256
    :cond_b
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 257
    return-void
.end method

.method setExiting()V
    .registers 9

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 146
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 147
    return-void

    .line 151
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mPersistOnEmpty:Z

    .line 153
    iget-boolean v1, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    if-eqz v1, :cond_14

    .line 154
    return-void

    .line 157
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 158
    nop

    .line 159
    nop

    .line 161
    move v2, v0

    move v3, v2

    move v4, v3

    :goto_1f
    const/4 v5, 0x1

    if-ge v2, v1, :cond_39

    .line 162
    iget-object v6, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 163
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v7

    if-eqz v7, :cond_31

    .line 164
    move v4, v5

    .line 166
    :cond_31
    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v5

    or-int/2addr v3, v5

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 169
    :cond_39
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowToken;->setHidden(Z)V

    .line 171
    if-eqz v3, :cond_4a

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 173
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 176
    :cond_4a
    if-eqz v4, :cond_53

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_53
    return-void
.end method

.method setHidden(Z)V
    .registers 3

    .line 126
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    if-eq p1, v0, :cond_6

    .line 127
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    .line 129
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-nez v0, :cond_2e

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    const-string v1, "WindowToken{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    .line 313
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method windowsCanBeWallpaperTarget()Z
    .registers 5

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1f

    .line 234
    iget-object v2, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 235
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    .line 236
    return v1

    .line 233
    :cond_1c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 240
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 9

    .line 275
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 276
    return-void

    .line 279
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 280
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 281
    const-wide v0, 0x10500000002L

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 282
    const/4 v0, 0x0

    :goto_23
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3e

    .line 283
    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 284
    const-wide v2, 0x20b00000003L

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/android/server/wm/WindowState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 286
    :cond_3e
    const-wide v0, 0x10800000004L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowToken;->mHidden:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 287
    const-wide v0, 0x10800000005L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 288
    const-wide v0, 0x10800000006L

    iget-boolean p4, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, v0, v1, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 289
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 290
    return-void
.end method
