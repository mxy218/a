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

    .line 140
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 101
    new-instance v1, Lcom/android/server/wm/WindowList;

    invoke-direct {v1}, Lcom/android/server/wm/WindowList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 106
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    .line 116
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 117
    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 128
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    .line 129
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    .line 132
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 204
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 205
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 141
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 142
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Lcom/android/server/wm/TransactionFactory;

    invoke-interface {v0}, Lcom/android/server/wm/TransactionFactory;->make()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 143
    new-instance v0, Lcom/android/server/wm/SurfaceAnimator;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/wm/SurfaceAnimator;-><init>(Lcom/android/server/wm/SurfaceAnimator$Animatable;Ljava/lang/Runnable;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    .line 144
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pools$SynchronizedPool;
    .registers 1

    .line 64
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    return-object p0
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

    .line 978
    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 979
    move-object v0, p0

    .line 981
    :goto_4
    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 982
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 983
    if-nez v0, :cond_c

    .line 984
    return-void

    .line 983
    :cond_c
    goto :goto_4
.end method

.method private getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I
    .registers 5

    .line 361
    nop

    .line 362
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1c

    .line 363
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 364
    if-ne p1, v2, :cond_16

    .line 365
    goto :goto_1c

    .line 367
    :cond_16
    iget v2, v2, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    .line 362
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 369
    :cond_1c
    :goto_1c
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_25

    .line 370
    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    add-int/2addr v1, p1

    .line 374
    :cond_25
    add-int/lit8 v1, v1, 0x1

    .line 375
    return v1
.end method

.method private obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;
    .registers 4
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

    .line 1154
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mConsumerWrapperPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    .line 1155
    if-nez v0, :cond_10

    .line 1156
    new-instance v0, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;-><init>(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer$1;)V

    .line 1158
    :cond_10
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->setConsumer(Ljava/util/function/Consumer;)V

    .line 1159
    return-object v0
.end method

.method private onChildAdded(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 273
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 274
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 275
    :goto_b
    if-eqz v0, :cond_19

    .line 276
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 277
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 279
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 280
    return-void
.end method

.method private onChildRemoved(Lcom/android/server/wm/WindowContainer;)V
    .registers 5

    .line 299
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v1, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 301
    :goto_b
    if-eqz v0, :cond_19

    .line 302
    iget v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    iget v2, p1, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/WindowContainer;->mTreeWeight:I

    .line 303
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    goto :goto_b

    .line 305
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 306
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)V"
        }
    .end annotation

    .line 247
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_57

    .line 253
    const/high16 v0, -0x80000000

    if-gez p2, :cond_c

    if-ne p2, v0, :cond_1a

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 254
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p2, v1, :cond_3f

    if-ne p2, v2, :cond_1a

    goto :goto_3f

    .line 255
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: invalid position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", children number="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 256
    invoke-virtual {p2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 259
    :cond_3f
    :goto_3f
    if-ne p2, v2, :cond_48

    .line 260
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowList;->size()I

    move-result p2

    goto :goto_4b

    .line 261
    :cond_48
    if-ne p2, v0, :cond_4b

    .line 262
    const/4 p2, 0x0

    .line 265
    :cond_4b
    :goto_4b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 266
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 269
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 270
    return-void

    .line 248
    :cond_57
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
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

    .line 216
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 222
    nop

    .line 223
    const/4 v0, -0x1

    if-eqz p2, :cond_26

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 225
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_26

    .line 226
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-interface {p2, p1, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_23

    .line 227
    nop

    .line 228
    goto :goto_27

    .line 225
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 233
    :cond_26
    move v2, v0

    :goto_27
    if-ne v2, v0, :cond_2f

    .line 234
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 236
    :cond_2f
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p2, v2, p1}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 238
    :goto_34
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildAdded(Lcom/android/server/wm/WindowContainer;)V

    .line 241
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 242
    return-void

    .line 217
    :cond_3b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addChild: container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already a child of container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t add to container="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .registers 10

    .line 1186
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1187
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v3, p2, Landroid/view/MagnificationSpec;->scale:F

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p2, Landroid/view/MagnificationSpec;->scale:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p2, Landroid/view/MagnificationSpec;->offsetX:F

    iget p2, p2, Landroid/view/MagnificationSpec;->offsetY:F

    .line 1188
    invoke-virtual {p1, v0, v1, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_34

    .line 1190
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1191
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 1194
    :cond_34
    :goto_34
    return-void
.end method

.method assignChildLayers()V
    .registers 2

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1114
    return-void
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 1092
    nop

    .line 1096
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v1, v3, :cond_26

    .line 1097
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1098
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1099
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v4

    if-nez v4, :cond_23

    .line 1100
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v4

    .line 1096
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1103
    :cond_26
    nop

    :goto_27
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_46

    .line 1104
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1105
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 1106
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v3

    .line 1103
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1109
    :cond_46
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 5

    .line 1056
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

    .line 1057
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_1a

    if-eqz v0, :cond_1a

    .line 1058
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1059
    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1060
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 1062
    :cond_1a
    return-void
.end method

.method assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 6

    .line 1065
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

    .line 1066
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_19

    if-eqz v0, :cond_19

    .line 1067
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 1068
    iput p3, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1069
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer;->mLastRelativeToLayer:Landroid/view/SurfaceControl;

    .line 1071
    :cond_19
    return-void
.end method

.method cancelAnimation()V
    .registers 2

    .line 1265
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->cancelAnimation()V

    .line 1266
    return-void
.end method

.method checkAppWindowsReadyToShow()V
    .registers 3

    .line 699
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 700
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 701
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->checkAppWindowsReadyToShow()V

    .line 699
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 703
    :cond_18
    return-void
.end method

.method checkCompleteDeferredRemoval()Z
    .registers 4

    .line 687
    nop

    .line 689
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_1c

    .line 690
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 691
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v2

    or-int/2addr v1, v2

    .line 689
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 694
    :cond_1c
    return v1
.end method

.method public commitPendingTransaction()V
    .registers 1

    .line 1291
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1292
    return-void
.end method

.method public compareTo(Lcom/android/server/wm/WindowContainer;)I
    .registers 9

    .line 926
    if-ne p0, p1, :cond_4

    .line 927
    const/4 p1, 0x0

    return p1

    .line 930
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_1d

    iget-object v3, p1, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-ne v0, v3, :cond_1d

    .line 931
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 932
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-le v3, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    return v1

    .line 935
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    .line 936
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    .line 938
    :try_start_21
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 939
    invoke-direct {p1, v3}, Lcom/android/server/wm/WindowContainer;->getParents(Ljava/util/LinkedList;)V

    .line 942
    const/4 v4, 0x0

    .line 943
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 944
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 945
    :goto_34
    if-eqz v5, :cond_50

    if-eqz v6, :cond_50

    if-ne v5, v6, :cond_50

    .line 946
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 947
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 948
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 949
    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;
    :try_end_4f
    .catchall {:try_start_21 .. :try_end_4f} :catchall_ae

    goto :goto_34

    .line 953
    :cond_50
    if-eqz v4, :cond_8f

    .line 960
    if-ne v4, p0, :cond_60

    .line 961
    nop

    .line 972
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 973
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 961
    return v2

    .line 962
    :cond_60
    if-ne v4, p1, :cond_6e

    .line 963
    nop

    .line 972
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 973
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 963
    return v1

    .line 968
    :cond_6e
    :try_start_6e
    iget-object p1, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 969
    invoke-virtual {v0}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result p1
    :try_end_80
    .catchall {:try_start_6e .. :try_end_80} :catchall_ae

    if-le v0, p1, :cond_83

    .line 970
    goto :goto_84

    :cond_83
    move v1, v2

    .line 972
    :goto_84
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 973
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 969
    return v1

    .line 954
    :cond_8f
    :try_start_8f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No in the same hierarchy this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " other="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_ae
    .catchall {:try_start_8f .. :try_end_ae} :catchall_ae

    .line 972
    :catchall_ae
    move-exception p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain1:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpChain2:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    throw p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 64
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    return p1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 5

    .line 1353
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p3}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result p3

    if-eqz p3, :cond_26

    .line 1354
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "ContainerAnimator:"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1357
    :cond_26
    return-void
.end method

.method endDelayingAnimationStart()V
    .registers 2

    .line 1338
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->endDelayingAnimationStart()V

    .line 1339
    return-void
.end method

.method fillsParent()Z
    .registers 2

    .line 849
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

    .line 893
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 894
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllAppWindows(Ljava/util/function/Consumer;)V

    .line 893
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 896
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

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 905
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 904
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 907
    :cond_18
    return-void
.end method

.method forAllWindows(Ljava/util/function/Consumer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)V"
        }
    .end annotation

    .line 887
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->obtainConsumerWrapper(Ljava/util/function/Consumer;)Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;

    move-result-object p1

    .line 888
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 889
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer$ForAllWindowsConsumerWrapper;->release()V

    .line 890
    return-void
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 869
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 870
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_b
    if-ltz v2, :cond_3a

    .line 871
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 872
    return v1

    .line 870
    :cond_1c
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .line 876
    :cond_1f
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 877
    move v3, v0

    :goto_26
    if-ge v3, v2, :cond_3a

    .line 878
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 879
    return v1

    .line 877
    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 883
    :cond_3a
    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 572
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 573
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 571
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 575
    :cond_18
    return-void
.end method

.method getAnimation()Lcom/android/server/wm/AnimationAdapter;
    .registers 2

    .line 1324
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .registers 2

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method getAppAnimationLayer(I)Landroid/view/SurfaceControl;
    .registers 3
    .param p1  # I
        .annotation build Lcom/android/server/wm/WindowContainer$AnimationLayer;
        .end annotation
    .end param

    .line 1282
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1283
    if-eqz v0, :cond_b

    .line 1284
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object p1

    return-object p1

    .line 1286
    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    return-object p1
.end method

.method protected getChildAt(I)Lcom/android/server/wm/WindowContainer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    return-object p1
.end method

.method protected getChildCount()I
    .registers 2

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    return v0
.end method

.method getController()Lcom/android/server/wm/WindowContainerController;
    .registers 2

    .line 987
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 1400
    const/4 v0, 0x0

    return-object v0

    .line 1402
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method getDisplayedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 1385
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getLastSurfacePosition()Landroid/graphics/Point;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    return-object v0
.end method

.method getOrientation()I
    .registers 2

    .line 782
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v0

    return v0
.end method

.method getOrientation(I)I
    .registers 8

    .line 797
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_8

    .line 799
    return v1

    .line 806
    :cond_8
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_10

    if-eq v0, v2, :cond_10

    .line 808
    return v0

    .line 811
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_18
    if-ltz v0, :cond_41

    .line 812
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 816
    const/4 v4, 0x3

    if-ne p1, v4, :cond_27

    .line 817
    move v5, v4

    goto :goto_28

    :cond_27
    move v5, v1

    .line 816
    :goto_28
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowContainer;->getOrientation(I)I

    move-result v5

    .line 818
    if-ne v5, v4, :cond_31

    .line 822
    nop

    .line 823
    move p1, v5

    goto :goto_3d

    .line 826
    :cond_31
    if-ne v5, v1, :cond_34

    .line 827
    goto :goto_3d

    .line 830
    :cond_34
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result v3

    if-nez v3, :cond_40

    if-eq v5, v2, :cond_3d

    goto :goto_40

    .line 811
    :cond_3d
    :goto_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 833
    :cond_40
    :goto_40
    return v5

    .line 837
    :cond_41
    return p1
.end method

.method protected bridge synthetic getParent()Lcom/android/server/wm/ConfigurationContainer;
    .registers 2

    .line 64
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    return-object v0
.end method

.method protected final getParent()Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1025
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1026
    if-nez v0, :cond_8

    .line 1027
    const/4 v0, 0x0

    return-object v0

    .line 1029
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 2

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_d

    if-eq v0, p0, :cond_d

    .line 1236
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object v0
.end method

.method getPrefixOrderIndex()I
    .registers 2

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_6

    .line 355
    const/4 v0, 0x0

    return v0

    .line 357
    :cond_6
    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    return v0
.end method

.method getRelativeDisplayedPosition(Landroid/graphics/Point;)V
    .registers 4

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1390
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1392
    if-eqz v0, :cond_1e

    .line 1393
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayedBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1394
    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->offset(II)V

    .line 1396
    :cond_1e
    return-void
.end method

.method getSession()Landroid/view/SurfaceSession;
    .registers 2

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1050
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0

    .line 1052
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .registers 2

    .line 1229
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .registers 2

    .line 1348
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .registers 2

    .line 1343
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

    .line 682
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

    .line 910
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 911
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 912
    if-eqz v1, :cond_19

    .line 913
    return-object v1

    .line 910
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 917
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 2

    .line 741
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method hasChild(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1f

    .line 395
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 396
    if-eq v2, p1, :cond_1e

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1e

    .line 394
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 397
    :cond_1e
    :goto_1e
    return v1

    .line 400
    :cond_1f
    const/4 p1, 0x0

    return p1
.end method

.method hasCommittedReparentToAnimationLeash()Z
    .registers 2

    .line 1210
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    return v0
.end method

.method hasContentToDisplay()Z
    .registers 4

    .line 641
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 642
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 643
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 644
    return v1

    .line 641
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 647
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isAnimating()Z
    .registers 2

    .line 601
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
    .registers 4

    .line 609
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 610
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 611
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isAppAnimating()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 612
    return v1

    .line 609
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 615
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method isOnTop()Z
    .registers 2

    .line 677
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

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isSelfOrChildAnimating()Z
    .registers 4

    .line 582
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isSelfAnimating()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 583
    return v1

    .line 585
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_23

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 587
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isSelfOrChildAnimating()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 588
    return v1

    .line 585
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 591
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method isVisible()Z
    .registers 4

    .line 664
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 665
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 666
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 667
    return v1

    .line 664
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 670
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 1013
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1016
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1017
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object p1

    .line 1016
    return-object p1
.end method

.method makeSurface()Landroid/view/SurfaceControl$Builder;
    .registers 2

    .line 1004
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1005
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method needsZBoost()Z
    .registers 4

    .line 1117
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 1118
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->needsZBoost()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1119
    const/4 v0, 0x1

    return v0

    .line 1117
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1122
    :cond_1d
    return v0
.end method

.method protected onAnimationFinished()V
    .registers 2

    .line 1317
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 1318
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 3

    .line 1303
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1304
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1305
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 1309
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowContainer;->mLastLayer:I

    .line 1310
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->reassignLayer(Landroid/view/SurfaceControl$Transaction;)V

    .line 1311
    return-void
.end method

.method onAppTransitionDone()V
    .registers 3

    .line 706
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 707
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 708
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    .line 706
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 710
    :cond_18
    return-void
.end method

.method onChildPositionChanged()V
    .registers 1

    .line 471
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 163
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    .line 165
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 166
    return-void
.end method

.method onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z
    .registers 4

    .line 722
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 723
    if-nez v0, :cond_8

    .line 724
    const/4 p1, 0x0

    return p1

    .line 726
    :cond_8
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    move-result p1

    return p1
.end method

.method onDescendantOverrideConfigurationChanged()V
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_7

    .line 505
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 507
    :cond_7
    return-void
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 516
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 517
    if-eqz p1, :cond_f

    if-eq p1, p0, :cond_f

    .line 518
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 520
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_17
    if-ltz v0, :cond_27

    .line 521
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 522
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 520
    add-int/lit8 v0, v0, -0x1

    goto :goto_17

    .line 524
    :cond_27
    return-void
.end method

.method onMovedByResize()V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 558
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 559
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 557
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 561
    :cond_18
    return-void
.end method

.method onParentChanged()V
    .registers 3

    .line 179
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->onParentChanged()V

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-nez v0, :cond_8

    .line 181
    return-void

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_23

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 188
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition()V

    goto :goto_2e

    .line 195
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 199
    :goto_2e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 200
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 201
    return-void
.end method

.method onParentResize()V
    .registers 2

    .line 548
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->hasOverrideBounds()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 549
    return-void

    .line 553
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 554
    return-void
.end method

.method public onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    .line 482
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 483
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->diffRequestedOverrideBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 484
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 485
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz p1, :cond_14

    .line 486
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOverrideConfigurationChanged()V

    .line 489
    :cond_14
    if-nez v0, :cond_17

    .line 490
    return-void

    .line 493
    :cond_17
    const/4 p1, 0x2

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1f

    .line 494
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    goto :goto_22

    .line 496
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 498
    :goto_22
    return-void
.end method

.method onResize()V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 539
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 540
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->onParentResize()V

    .line 538
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 542
    :cond_18
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;Z)V"
        }
    .end annotation

    .line 416
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_aa

    .line 422
    const/high16 v0, -0x80000000

    if-gez p1, :cond_c

    if-ne p1, v0, :cond_1a

    :cond_c
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 423
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const v2, 0x7fffffff

    if-le p1, v1, :cond_3f

    if-ne p1, v2, :cond_1a

    goto :goto_3f

    .line 424
    :cond_1a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "positionAt: invalid position="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", children number="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 425
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 428
    :cond_3f
    :goto_3f
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    if-lt p1, v1, :cond_4b

    .line 429
    move p1, v2

    goto :goto_4e

    .line 430
    :cond_4b
    if-nez p1, :cond_4e

    .line 431
    move p1, v0

    .line 434
    :cond_4e
    :goto_4e
    if-eq p1, v0, :cond_85

    if-eq p1, v2, :cond_60

    .line 462
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 463
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 464
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    goto :goto_a9

    .line 436
    :cond_60
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_75

    .line 437
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 438
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 441
    :cond_75
    if-eqz p3, :cond_a9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 442
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1, v2, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_a9

    .line 447
    :cond_85
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->peekFirst()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p2, :cond_9a

    .line 448
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 449
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowList;->addFirst(Ljava/lang/Object;)V

    .line 450
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged()V

    .line 452
    :cond_9a
    if-eqz p3, :cond_a9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_a9

    .line 453
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1, v0, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 466
    :cond_a9
    :goto_a9
    return-void

    .line 417
    :cond_aa
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeChild: container="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a child of container="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " current parent="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method prepareSurfaces()V
    .registers 3

    .line 1199
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mCommittedReparentToAnimationLeash:Z

    .line 1200
    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1201
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 1200
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1203
    :cond_1f
    return-void
.end method

.method reassignLayer(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 1295
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1296
    if-eqz v0, :cond_9

    .line 1297
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1299
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

    .line 289
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 290
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->setParent(Lcom/android/server/wm/WindowContainer;)V

    .line 296
    return-void

    .line 293
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeChild: container="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a child of container="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method removeIfPossible()V
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 387
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 388
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 386
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 390
    :cond_18
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 318
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 322
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 323
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;->onChildRemoved(Lcom/android/server/wm/WindowContainer;)V

    .line 325
    :cond_1e
    goto :goto_0

    .line 327
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_41

    .line 328
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 332
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_3c

    .line 333
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 336
    :cond_3c
    iput-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 337
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 340
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_48

    .line 341
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 344
    :cond_48
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_4f

    .line 345
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->setController(Lcom/android/server/wm/WindowContainerController;)V

    .line 348
    :cond_4f
    return-void
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 1088
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->reparent(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 1089
    return-void
.end method

.method resetDragResizingChangeReported()V
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 565
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 566
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 564
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 568
    :cond_18
    return-void
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1218
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_7

    .line 1219
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1221
    :cond_7
    return-void
.end method

.method sendAppVisibilityToClients()V
    .registers 3

    .line 626
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 627
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 628
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 626
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 630
    :cond_18
    return-void
.end method

.method setController(Lcom/android/server/wm/WindowContainerController;)V
    .registers 4

    .line 991
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_32

    if-nez p1, :cond_7

    goto :goto_32

    .line 992
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t set controller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Already set to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 995
    :cond_32
    :goto_32
    if-eqz p1, :cond_38

    .line 996
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_40

    .line 997
    :cond_38
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    if-eqz v0, :cond_40

    .line 998
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainerController;->setContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 1000
    :cond_40
    :goto_40
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mController:Lcom/android/server/wm/WindowContainerController;

    .line 1001
    return-void
.end method

.method protected setLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .registers 4

    .line 1077
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/SurfaceAnimator;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 1078
    return-void
.end method

.method setOrientation(I)V
    .registers 3

    .line 752
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 754
    return-void
.end method

.method setOrientation(ILandroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 5

    .line 770
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 771
    :goto_7
    iput p1, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    .line 772
    if-nez v0, :cond_c

    .line 773
    return-void

    .line 775
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    .line 776
    if-eqz p1, :cond_15

    .line 777
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Landroid/os/IBinder;Lcom/android/server/wm/ConfigurationContainer;)Z

    .line 779
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

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mParent:Lcom/android/server/wm/WindowContainer;

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->onParentChanged()V

    .line 171
    return-void
.end method

.method protected setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .registers 5

    .line 1084
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->setRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    .line 1085
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .registers 3

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 533
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 531
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 535
    :cond_18
    return-void
.end method

.method shouldMagnify()Z
    .registers 4

    .line 1036
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1037
    return v1

    .line 1040
    :cond_6
    move v0, v1

    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v0, v2, :cond_21

    .line 1041
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->shouldMagnify()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1042
    return v1

    .line 1040
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1045
    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V
    .registers 5

    .line 1257
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 1258
    return-void
.end method

.method startDelayingAnimationStart()V
    .registers 2

    .line 1331
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->startDelayingAnimationStart()V

    .line 1332
    return-void
.end method

.method switchUser()V
    .registers 3

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 855
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 854
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 857
    :cond_18
    return-void
.end method

.method transferAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 1261
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/SurfaceAnimator;->transferAnimation(Lcom/android/server/wm/SurfaceAnimator;)V

    .line 1262
    return-void
.end method

.method updateSurfacePosition()V
    .registers 5

    .line 1360
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    .line 1361
    return-void

    .line 1364
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayedPosition(Landroid/graphics/Point;)V

    .line 1365
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1366
    return-void

    .line 1369
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

    .line 1370
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTmpPos:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1371
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    .line 1138
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    .line 1139
    const/4 v1, 0x2

    if-ne p4, v1, :cond_a

    if-nez v0, :cond_a

    .line 1140
    return-void

    .line 1143
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1144
    const-wide v1, 0x10b00000001L

    invoke-super {p0, p1, v1, v2, p4}, Lcom/android/server/wm/ConfigurationContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1145
    const-wide v1, 0x10500000002L

    iget p4, p0, Lcom/android/server/wm/WindowContainer;->mOrientation:I

    invoke-virtual {p1, v1, v2, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1146
    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1147
    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {p4}, Lcom/android/server/wm/SurfaceAnimator;->isAnimating()Z

    move-result p4

    if-eqz p4, :cond_3a

    .line 1148
    iget-object p4, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    const-wide v0, 0x10b00000004L

    invoke-virtual {p4, p1, v0, v1}, Lcom/android/server/wm/SurfaceAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1150
    :cond_3a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1151
    return-void
.end method
