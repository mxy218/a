.class final Lcom/android/server/wm/AccessibilityController;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;,
        Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;
    }
.end annotation


# static fields
.field private static final sTempFloats:[F


# instance fields
.field private mDisplayMagnifiers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    .line 84
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 85
    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 2

    .line 77
    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityController;->populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static populateTransformationMatrixLocked(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V
    .registers 3

    .line 270
    sget-object v0, Lcom/android/server/wm/AccessibilityController;->sTempFloats:[F

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 271
    return-void
.end method


# virtual methods
.method public drawMagnifiedRegionBorderIfNeededLocked(I)V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 239
    if-eqz p1, :cond_d

    .line 240
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 243
    :cond_d
    return-void
.end method

.method public getMagnificationRegionLocked(ILandroid/graphics/Region;)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 159
    if-eqz p1, :cond_d

    .line 160
    invoke-virtual {p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationRegionLocked(Landroid/graphics/Region;)V

    .line 162
    :cond_d
    return-void
.end method

.method public getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;
    .registers 4

    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 247
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 248
    if-eqz v0, :cond_13

    .line 249
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object p1

    return-object p1

    .line 251
    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCallbacksLocked()Z
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 5

    .line 196
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 198
    if-eqz v0, :cond_11

    .line 199
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onAppWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 202
    :cond_11
    return-void
.end method

.method public onRectangleOnScreenRequestedLocked(ILandroid/graphics/Rect;)V
    .registers 4

    .line 165
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 166
    if-eqz p1, :cond_d

    .line 167
    invoke-virtual {p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRectangleOnScreenRequestedLocked(Landroid/graphics/Rect;)V

    .line 170
    :cond_d
    return-void
.end method

.method public onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 184
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 186
    if-eqz v1, :cond_11

    .line 187
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 190
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p1, :cond_1a

    if-nez v0, :cond_1a

    .line 191
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 193
    :cond_1a
    return-void
.end method

.method public onSomeWindowResizedOrMovedLocked()V
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 234
    :cond_7
    return-void
.end method

.method public onWindowFocusChangedNotLocked()V
    .registers 3

    .line 219
    nop

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v0

    .line 221
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 222
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_e

    .line 223
    if-eqz v1, :cond_d

    .line 224
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked(Z)V

    .line 226
    :cond_d
    return-void

    .line 222
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onWindowLayersChangedLocked(I)V
    .registers 3

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 174
    if-eqz v0, :cond_d

    .line 175
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowLayersChangedLocked()V

    .line 178
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    .line 179
    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 181
    :cond_16
    return-void
.end method

.method public onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V
    .registers 5

    .line 205
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 207
    if-eqz v1, :cond_11

    .line 208
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 211
    :cond_11
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p1, :cond_1a

    if-nez v0, :cond_1a

    .line 212
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 214
    :cond_1a
    return-void
.end method

.method public performComputeChangedWindowsNotLocked(Z)V
    .registers 4

    .line 137
    nop

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    monitor-enter v0

    .line 139
    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 140
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    .line 141
    if-eqz v1, :cond_c

    .line 142
    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->performComputeChangedWindowsNotLocked(Z)V

    .line 144
    :cond_c
    return-void

    .line 140
    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public setForceShowMagnifiableBoundsLocked(IZ)V
    .registers 4

    .line 261
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 262
    if-eqz p1, :cond_10

    .line 263
    invoke-virtual {p1, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setForceShowMagnifiableBoundsLocked(Z)V

    .line 264
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->showMagnificationBoundsIfNeeded()V

    .line 266
    :cond_10
    return-void
.end method

.method public setMagnificationCallbacksLocked(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .registers 9

    .line 93
    nop

    .line 94
    const/4 v0, 0x1

    if-eqz p2, :cond_3b

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_33

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_30

    .line 100
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_30

    .line 102
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    new-instance v4, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v1, v2, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Landroid/view/Display;Lcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)V

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    goto :goto_32

    .line 107
    :cond_30
    const/4 p1, 0x0

    move v0, p1

    :goto_32
    goto :goto_4e

    .line 96
    :cond_33
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Magnification callbacks already set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_3b
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 109
    if-eqz p2, :cond_4f

    .line 112
    invoke-virtual {p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->destroyLocked()V

    .line 113
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 114
    nop

    .line 116
    :goto_4e
    return v0

    .line 110
    :cond_4f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Magnification callbacks already cleared!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mDisplayMagnifiers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;

    .line 148
    if-eqz v0, :cond_d

    .line 149
    invoke-virtual {v0, p2}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier;->setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    .line 152
    :cond_d
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p2, :cond_16

    if-nez p1, :cond_16

    .line 153
    invoke-virtual {p2}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->scheduleComputeChangedWindowsLocked()V

    .line 155
    :cond_16
    return-void
.end method

.method public setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 4

    .line 120
    if-eqz p1, :cond_18

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-nez v0, :cond_10

    .line 125
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    goto :goto_1f

    .line 122
    :cond_10
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Windows for accessibility callback already set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_18
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    if-eqz p1, :cond_20

    .line 132
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController;->mWindowsForAccessibilityObserver:Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;

    .line 134
    :goto_1f
    return-void

    .line 129
    :cond_20
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Windows for accessibility callback already cleared!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
