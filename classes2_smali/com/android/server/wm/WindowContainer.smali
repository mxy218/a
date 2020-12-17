.class Lcom/android/server/wm/WindowContainer;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowContainer.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;,
        Lcom/android/server/wm/WindowContainer$AnimationLayer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/wm/WindowContainer;",
        ">",
        "Lcom/android/server/wm/ConfigurationContainer<",
        "TE;>;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;",
        "Lcom/android/server/wm/SurfaceAnimator$Animatable;"
    }
.end annotation


# static fields
.field static final ANIMATION_LAYER_BOOSTED:I = 0x1

.field static final ANIMATION_LAYER_HOME:I = 0x2

.field static final ANIMATION_LAYER_STANDARD:I = 0x0

.field static final ANIMATION_LAYER_WINDOW_MODE:I = 0x3

.field static final POSITION_BOTTOM:I = -0x80000000

.field static final POSITION_TOP:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field protected final mChildren:Lcom/android/server/wm/WindowList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowList<",
            "TE;>;"
        }
    .end annotation
.end field

.field private mCommittedReparentToAnimationLeash:Z

.field private final mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;>;"
        }
    .end annotation
.end field

.field mController:Lcom/android/server/wm/WindowContainerController;

.field protected mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mLastLayer:I

.field private mLastRelativeToLayer:Landroid/view/SurfaceControl;

.field protected final mLastSurfacePosition:Landroid/graphics/Point;

.field protected mOrientation:I

.field private mParent:Lcom/android/server/wm/WindowContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

.field protected final mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

.field protected mSurfaceControl:Landroid/view/SurfaceControl;

.field private final mTmpChain1:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpChain2:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpPos:Landroid/graphics/Point;

.field private mTreeWeight:I

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 145
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 106
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 109
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 111
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 121
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 122
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 133
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 134
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 137
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 209
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 210
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 146
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 147
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 148
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 149
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/WindowContainer;

    .line 64
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method private getParents(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 983
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 984
    move-object v0, p0

    .line 986
    .local v0, "current":Lcom/android/server/wm/WindowContainer;
    :goto_4
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 987
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 988
    if-nez v0, :cond_c

    .line 989
    return-void

    .line 988
    :cond_c
    goto :goto_4
.end method

.method private getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .registers 6
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 366
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 367
    .local v0, "order":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 368
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 369
    .local v2, "childI":Lcom/android/server/wm/WindowContainer;
    if-ne p1, v2, :cond_15

    .line 370
    goto :goto_1b

    .line 372
    :cond_15
    iget v3, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v3

    .line 367
    .end local v2  # "childI":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 374
    .end local v1  # "i":I
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_24

    .line 375
    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    add-int/2addr v0, v1

    .line 379
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 380
    return v0
.end method

.method private obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowContainer<",
            "TE;>.ForAllWindowsConsumerWrapper;"
        }
    .end annotation

    .line 1159
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .line 1160
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    if-nez v0, :cond_11

    .line 1161
    new-instance v1, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V

    move-object v0, v1

    .line 1163
    :cond_11
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    .line 1164
    return-object v0
.end method

.method private onChildAdded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 278
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 279
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 280
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_b
    if-eqz v0, :cond_19

    .line 281
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 282
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 284
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 285
    return-void
.end method

.method private onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 304
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 305
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 306
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    :goto_b
    if-eqz v0, :cond_19

    .line 307
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 308
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 310
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 311
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 6
    .param p2, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 252
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_57

    .line 258
    const/high16 v0, -0x80000000

    if-gez p2, :cond_c

    if-ne p2, v0, :cond_1a

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 259
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p2, v1, :cond_3f

    if-ne p2, v2, :cond_1a

    goto :goto_3f

    .line 260
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", children number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 261
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_3f
    :goto_3f
    if-ne p2, v2, :cond_48

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result p2

    goto :goto_4b

    .line 266
    :cond_48
    if-ne p2, v0, :cond_4b

    .line 267
    const/4 p2, 0x0

    .line 270
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 271
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 274
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 275
    return-void

    .line 253
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/util/Comparator<",
            "TE;>;)V"
        }
    .end annotation

    .line 221
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_3a

    .line 227
    const/4 v0, -0x1

    .line 228
    .local v0, "positionToAdd":I
    if-eqz p2, :cond_25

    .line 229
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 230
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_25

    .line 231
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_22

    .line 232
    move v0, v2

    .line 233
    goto :goto_25

    .line 230
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 238
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_25
    :goto_25
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2e

    .line 239
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 241
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 243
    :goto_33
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 246
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 247
    return-void

    .line 222
    .end local v0  # "positionToAdd":I
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is already a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can\'t add to container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .registers 10
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "spec"  # Landroid/view/MagnificationSpec;

    .line 1191
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1192
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget v3, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1193
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    .line 1195
    :cond_1d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1196
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 1195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1199
    .end local v0  # "i":I
    :cond_34
    :goto_34
    return-void
.end method

.method assignChildLayers()V
    .registers 2

    .line 1117
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1119
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 1097
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 1101
    .local v0, "layer":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1102
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1103
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1104
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1105
    add-int/lit8 v3, v0, 0x1

    .end local v0  # "layer":I
    .local v3, "layer":I
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v3

    .line 1101
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3  # "layer":I
    .restart local v0  # "layer":I
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1108
    .end local v1  # "j":I
    :cond_24
    const/4 v1, 0x0

    .restart local v1  # "j":I
    :goto_25
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 1109
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 1110
    .restart local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1111
    add-int/lit8 v3, v0, 0x1

    .end local v0  # "layer":I
    .restart local v3  # "layer":I
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v0, v3

    .line 1108
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v3  # "layer":I
    .restart local v0  # "layer":I
    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1114
    .end local v1  # "j":I
    :cond_44
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"  # I

    .line 1061
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p2, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 1062
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 1063
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1064
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1065
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 1067
    :cond_1a
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 6
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"  # Landroid/view/SurfaceControl;
    .param p3, "layer"  # I

    .line 1070
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    if-ne p3, v0, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    if-eq v0, p2, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 1071
    .local v0, "changed":Z
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 1072
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 1073
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1074
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 1076
    :cond_19
    return-void
.end method

.method cancelAnimation()V
    .registers 2

    .line 1270
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1271
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 704
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 705
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 706
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 704
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 708
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 5

    .line 692
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .line 694
    .local v0, "stillDeferringRemoval":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1b

    .line 695
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 696
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v3

    or-int/2addr v0, v3

    .line 694
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 699
    .end local v1  # "i":I
    :cond_1b
    return v0
.end method

.method public commitPendingTransaction()V
    .registers 1

    .line 1296
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1297
    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 12
    .param p1, "other"  # Lcom/android/server/wm/WindowContainer;

    .line 931
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    if-ne p0, p1, :cond_4

    .line 932
    const/4 v0, 0x0

    return v0

    .line 935
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1d

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_1d

    .line 936
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 937
    .local v0, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 940
    .end local v0  # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 941
    .local v0, "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 943
    .local v3, "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    :try_start_21
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 944
    invoke-direct {p1, v3}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 947
    const/4 v4, 0x0

    .line 948
    .local v4, "commonAncestor":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 949
    .local v5, "thisTop":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 950
    .local v6, "otherTop":Lcom/android/server/wm/WindowContainer;
    :goto_34
    if-eqz v5, :cond_53

    if-eqz v6, :cond_53

    if-ne v5, v6, :cond_53

    .line 951
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v4, v7

    .line 952
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 953
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;

    move-object v5, v7

    .line 954
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowContainer;
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_b1

    move-object v6, v7

    goto :goto_34

    .line 958
    :cond_53
    if-eqz v4, :cond_92

    .line 965
    if-ne v4, p0, :cond_63

    .line 966
    nop

    .line 977
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 978
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 966
    return v2

    .line 967
    :cond_63
    if-ne v4, p1, :cond_71

    .line 968
    nop

    .line 977
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 978
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 968
    return v1

    .line 973
    :cond_71
    :try_start_71
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 974
    .local v7, "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v9
    :try_end_83
    .catchall {:try_start_71 .. :try_end_83} :catchall_b1

    if-le v8, v9, :cond_86

    .line 975
    goto :goto_87

    :cond_86
    move v1, v2

    .line 977
    :goto_87
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 978
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 974
    return v1

    .line 959
    .end local v7  # "list":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/WindowContainer;>;"
    :cond_92
    :try_start_92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No in the same hierarchy this="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " other="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .end local v3  # "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .end local p0  # "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .end local p1  # "other":Lcom/android/server/wm/WindowContainer;
    throw v1
    :try_end_b1
    .catchall {:try_start_92 .. :try_end_b1} :catchall_b1

    .line 977
    .end local v4  # "commonAncestor":Lcom/android/server/wm/WindowContainer;
    .end local v5  # "thisTop":Lcom/android/server/wm/WindowContainer;
    .end local v6  # "otherTop":Lcom/android/server/wm/WindowContainer;
    .restart local v0  # "thisParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .restart local v3  # "otherParentChain":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/WindowContainer;>;"
    .restart local p0  # "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .restart local p1  # "other":Lcom/android/server/wm/WindowContainer;
    :catchall_b1
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 978
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 64
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 1358
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "ContainerAnimator:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/SurfaceAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1362
    :cond_26
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 2

    .line 1343
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 1344
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 854
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method forAllAppWindows(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 898
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/AppWindowToken;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 899
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllAppWindows(Ljava/util/function/Consumer;)V

    .line 898
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 901
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method forAllTasks(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 909
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 910
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 909
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 912
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method forAllWindows(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .line 892
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/WindowState;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object v0

    .line 893
    .local v0, "wrapper":Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;, "Lcom/android/server/wm/WindowContainer<TE;>.ForAllWindowsConsumerWrapper;"
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 894
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    .line 895
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 7
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 874
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1f

    .line 875
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1e

    .line 876
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 877
    return v0

    .line 875
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .end local v1  # "i":I
    :cond_1e
    goto :goto_3a

    .line 881
    :cond_1f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 882
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_26
    if-ge v2, v1, :cond_3a

    .line 883
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 884
    return v0

    .line 882
    :cond_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 888
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_3a
    :goto_3a
    const/4 v0, 0x0

    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .registers 4
    .param p1, "force"  # Z

    .line 576
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 577
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 578
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 576
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 580
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 2

    .line 1329
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 1280
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "animationLayer"  # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 1287
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1288
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_b

    .line 1289
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1

    .line 1291
    :cond_b
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 64
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .registers 3
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method protected getChildCount()I
    .registers 2

    .line 158
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    .line 992
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 1404
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 1405
    const/4 v0, 0x0

    return-object v0

    .line 1407
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 532
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1390
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getLastSurfacePosition()Landroid/graphics/Point;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1380
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method getOrientation()I
    .registers 2

    .line 787
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .registers 8
    .param p1, "candidate"  # I

    .line 802
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_8

    .line 804
    return v1

    .line 811
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_10

    if-eq v0, v2, :cond_10

    .line 813
    return v0

    .line 816
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_18
    if-ltz v0, :cond_40

    .line 817
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 821
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x3

    if-ne p1, v4, :cond_27

    .line 822
    move v5, v4

    goto :goto_28

    :cond_27
    move v5, v1

    .line 821
    :goto_28
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v5

    .line 823
    .local v5, "orientation":I
    if-ne v5, v4, :cond_30

    .line 827
    move p1, v5

    .line 828
    goto :goto_3c

    .line 831
    :cond_30
    if-ne v5, v1, :cond_33

    .line 832
    goto :goto_3c

    .line 835
    :cond_33
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v4

    if-nez v4, :cond_3f

    if-eq v5, v2, :cond_3c

    goto :goto_3f

    .line 816
    .end local v3  # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5  # "orientation":I
    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 838
    .restart local v3  # "wc":Lcom/android/server/wm/WindowContainer;
    .restart local v5  # "orientation":I
    :cond_3f
    :goto_3f
    return v5

    .line 842
    .end local v0  # "i":I
    .end local v3  # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v5  # "orientation":I
    :cond_40
    return p1
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 64
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method protected final getParent()Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 153
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 3

    .line 1030
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1031
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 1032
    const/4 v1, 0x0

    return-object v1

    .line 1034
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 3

    .line 1239
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1240
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 1241
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    return-object v1

    .line 1247
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v1
.end method

.method getPrefixOrderIndex()I
    .registers 2

    .line 359
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 360
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_6
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method getRelativeDisplayedPosition(Landroid/graphics/Point;)V
    .registers 7
    .param p1, "outPos"  # Landroid/graphics/Point;

    .line 1394
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1395
    .local v0, "dispBounds":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1397
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1e

    .line 1398
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1399
    .local v2, "parentBounds":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Point;->offset(II)V

    .line 1401
    .end local v2  # "parentBounds":Landroid/graphics/Rect;
    :cond_1e
    return-void
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 1054
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0

    .line 1057
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1234
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 1353
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 1348
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    return v0
.end method

.method getTopChild()Lcom/android/server/wm/WindowContainer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 687
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 915
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 916
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 917
    .local v1, "w":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_19

    .line 918
    return-object v1

    .line 915
    .end local v1  # "w":Lcom/android/server/wm/WindowState;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 922
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 3

    .line 746
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 747
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 399
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1f

    .line 400
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 401
    .local v2, "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    if-eq v2, p1, :cond_1e

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_1e

    .line 399
    .end local v2  # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 402
    .restart local v2  # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1e
    :goto_1e
    return v1

    .line 405
    .end local v0  # "i":I
    .end local v2  # "current":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method hasCommittedReparentToAnimationLeash()Z
    .registers 2

    .line 1215
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    return v0
.end method

.method hasContentToDisplay()Z
    .registers 5

    .line 646
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 647
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 648
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 649
    return v1

    .line 646
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 652
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isAnimating()Z
    .registers 2

    .line 606
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method isAppAnimating()Z
    .registers 5

    .line 614
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 615
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 616
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAppAnimating()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 617
    return v1

    .line 614
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 620
    .end local v0  # "j":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isOnTop()Z
    .registers 2

    .line 682
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isOnTop()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method isSelfAnimating()Z
    .registers 2

    .line 627
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isSelfOrChildAnimating()Z
    .registers 5

    .line 587
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 588
    return v1

    .line 590
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_f
    if-ltz v0, :cond_23

    .line 591
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 592
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isSelfOrChildAnimating()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 593
    return v1

    .line 590
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 596
    .end local v0  # "j":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method isVisible()Z
    .registers 5

    .line 669
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 670
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 671
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 672
    return v1

    .line 669
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 675
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1275
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 1018
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1021
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1022
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 1021
    return-object v1
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1009
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1010
    .local v0, "p":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    return-object v1
.end method

.method needsZBoost()Z
    .registers 3

    .line 1122
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1123
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1124
    const/4 v1, 0x1

    return v1

    .line 1122
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1127
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method protected onAnimationFinished()V
    .registers 2

    .line 1322
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 1323
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"  # Landroid/view/SurfaceControl;

    .line 1308
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1309
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1310
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 1314
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1315
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1316
    return-void
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 711
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 712
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 713
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 711
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 715
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method onChildPositionChanged()V
    .registers 1

    .line 476
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 168
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 171
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 5
    .param p1, "freezeDisplayToken"  # Landroid/os/IBinder;
    .param p2, "requestingContainer"  # Lcom/android/server/wm/ConfigurationContainer;

    .line 727
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 728
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 729
    const/4 v1, 0x0

    return v1

    .line 731
    :cond_8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result v1

    return v1
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 509
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_7

    .line 510
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 512
    :cond_7
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 521
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 522
    if-eqz p1, :cond_f

    if-eq p1, p0, :cond_f

    .line 523
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 525
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_17
    if-ltz v0, :cond_27

    .line 526
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 527
    .local v1, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 525
    .end local v1  # "child":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 529
    .end local v0  # "i":I
    :cond_27
    return-void
.end method

.method onMovedByResize()V
    .registers 3

    .line 562
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 563
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 564
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 562
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 566
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method onParentChanged()V
    .registers 3

    .line 184
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_8

    .line 186
    return-void

    .line 189
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_23

    .line 192
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 194
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    goto :goto_2e

    .line 200
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 204
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 206
    return-void
.end method

.method onParentResize()V
    .registers 2

    .line 553
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 554
    return-void

    .line 558
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 559
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "overrideConfiguration"  # Landroid/content/res/Configuration;

    .line 487
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 488
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 487
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 489
    .local v0, "diff":I
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 490
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v1, :cond_14

    .line 491
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 494
    :cond_14
    if-nez v0, :cond_17

    .line 495
    return-void

    .line 498
    :cond_17
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 499
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    goto :goto_23

    .line 501
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 503
    :goto_23
    return-void
.end method

.method onResize()V
    .registers 3

    .line 543
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 544
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 545
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    .line 543
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 547
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 8
    .param p1, "position"  # I
    .param p3, "includingParents"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .line 421
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p2, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_ad

    .line 427
    const/high16 v0, -0x80000000

    if-gez p1, :cond_c

    if-ne p1, v0, :cond_1a

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 428
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p1, v1, :cond_3f

    if-ne p1, v2, :cond_1a

    goto :goto_3f

    .line 429
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "positionAt: invalid position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", children number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 430
    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-lt p1, v1, :cond_4d

    .line 434
    const p1, 0x7fffffff

    goto :goto_51

    .line 435
    :cond_4d
    if-nez p1, :cond_51

    .line 436
    const/high16 p1, -0x80000000

    .line 439
    :cond_51
    :goto_51
    if-eq p1, v0, :cond_88

    if-eq p1, v2, :cond_63

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    goto :goto_ac

    .line 441
    :cond_63
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_78

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 443
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 446
    :cond_78
    if-eqz p3, :cond_ac

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_ac

    .line 447
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_ac

    .line 452
    :cond_88
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_9d

    .line 453
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 454
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 457
    :cond_9d
    if-eqz p3, :cond_ac

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_ac

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, v0, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 471
    :cond_ac
    :goto_ac
    return-void

    .line 422
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " current parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method prepareSurfaces()V
    .registers 3

    .line 1204
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 1205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1206
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1208
    .end local v0  # "i":I
    :cond_1f
    return-void
.end method

.method reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 1300
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1301
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v0, :cond_9

    .line 1302
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1304
    :cond_9
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 295
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 296
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 301
    return-void

    .line 298
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child of container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIfPossible()V
    .registers 3

    .line 391
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 392
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 393
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 391
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 395
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 321
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 322
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 323
    .local v0, "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 328
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 330
    .end local v0  # "child":Lcom/android/server/wm/WindowContainer;, "TE;"
    :cond_1e
    goto :goto_0

    .line 332
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 333
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_3c

    .line 338
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 341
    :cond_3c
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 342
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 345
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_48

    .line 346
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 349
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_4f

    .line 350
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 353
    :cond_4f
    return-void
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"  # Landroid/view/SurfaceControl;

    .line 1093
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 1094
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 3

    .line 569
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 570
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 571
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 569
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 573
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1223
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_7

    .line 1224
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1226
    :cond_7
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 3

    .line 631
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 632
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 633
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 631
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 635
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method setController(Lcom/android/server/wm/WindowContainerController;)V
    .registers 5
    .param p1, "controller"  # Lcom/android/server/wm/WindowContainerController;

    .line 996
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_32

    if-nez p1, :cond_7

    goto :goto_32

    .line 997
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set controller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Already set to="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1000
    :cond_32
    :goto_32
    if-eqz p1, :cond_38

    .line 1001
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_40

    .line 1002
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_40

    .line 1003
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 1005
    :cond_40
    :goto_40
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    .line 1006
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"  # I

    .line 1082
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1083
    return-void
.end method

.method setOrientation(I)V
    .registers 3
    .param p1, "orientation"  # I

    .line 757
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 759
    return-void
.end method

.method setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 6
    .param p1, "orientation"  # I
    .param p2, "freezeDisplayToken"  # Landroid/os/IBinder;
    .param p3, "requestingContainer"  # Lcom/android/server/wm/ConfigurationContainer;

    .line 775
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 776
    .local v0, "changed":Z
    :goto_7
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 777
    if-nez v0, :cond_c

    .line 778
    return-void

    .line 780
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 781
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_15

    .line 782
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 784
    :cond_15
    return-void
.end method

.method protected final setParent(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    .local p1, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<Lcom/android/server/wm/WindowContainer;>;"
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 176
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "relativeTo"  # Landroid/view/SurfaceControl;
    .param p3, "layer"  # I

    .line 1089
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 1090
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 3

    .line 536
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 537
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 538
    .local v1, "wc":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 536
    .end local v1  # "wc":Lcom/android/server/wm/WindowContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 540
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method shouldMagnify()Z
    .registers 4

    .line 1041
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1042
    return v1

    .line 1045
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1046
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1047
    return v1

    .line 1045
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1050
    .end local v0  # "i":I
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .registers 6
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "anim"  # Lcom/android/server/wm/AnimationAdapter;
    .param p3, "hidden"  # Z

    .line 1258
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting animation on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 1263
    return-void
.end method

.method startDelayingAnimationStart()V
    .registers 2

    .line 1336
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->startDelayingAnimationStart()V

    .line 1337
    return-void
.end method

.method switchUser()V
    .registers 3

    .line 859
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 860
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 859
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 862
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "from"  # Lcom/android/server/wm/WindowContainer;

    .line 1266
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 1267
    return-void
.end method

.method updateSurfacePosition()V
    .registers 5

    .line 1365
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1366
    return-void

    .line 1369
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1371
    return-void

    .line 1374
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1375
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1376
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 11
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 1143
    .local p0, "this":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<TE;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    .line 1144
    .local v0, "isVisible":Z
    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    .line 1145
    return-void

    .line 1148
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1149
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-super {p0, p1, v3, v4, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1150
    const-wide v3, 0x10500000002L

    iget v5, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1151
    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1152
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 1153
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/SurfaceAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1155
    :cond_3a
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1156
    return-void
.end method
