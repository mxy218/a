.class Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InjectedPointerTracker"
.end annotation


# static fields
.field private static final LOG_TAG_INJECTED_POINTER_TRACKER:Ljava/lang/String; = "InjectedPointerTracker"


# instance fields
.field private mInjectedPointersDown:I

.field private mLastInjectedDownEventTime:J

.field private mLastInjectedHoverEvent:Landroid/view/MotionEvent;

.field private mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .registers 2

    .line 1352
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;)Landroid/view/MotionEvent;
    .registers 1

    .line 1352
    iget-object p0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2

    .line 1352
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object p1
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 1413
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1414
    return-void
.end method

.method public getInjectedPointerDownCount()I
    .registers 2

    .line 1427
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getInjectedPointersDown()I
    .registers 2

    .line 1434
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    return v0
.end method

.method public getLastInjectedDownEventTime()J
    .registers 3

    .line 1420
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    return-wide v0
.end method

.method public getLastInjectedHoverEvent()Landroid/view/MotionEvent;
    .registers 2

    .line 1452
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastInjectedHoverEventForClick()Landroid/view/MotionEvent;
    .registers 2

    .line 1459
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public isInjectedPointerDown(I)Z
    .registers 4

    .line 1444
    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 1445
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 5

    .line 1373
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1374
    const/4 v1, 0x1

    if-eqz v0, :cond_4f

    if-eq v0, v1, :cond_36

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4f

    const/4 v2, 0x6

    if-eq v0, v2, :cond_36

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1b

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1b

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1b

    goto :goto_65

    .line 1394
    :cond_1b
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_22

    .line 1395
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1397
    :cond_22
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEvent:Landroid/view/MotionEvent;

    .line 1398
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    if-eqz v0, :cond_2f

    .line 1399
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1401
    :cond_2f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedHoverEventForClick:Landroid/view/MotionEvent;

    goto :goto_65

    .line 1384
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    .line 1385
    shl-int p1, v1, p1

    .line 1386
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1387
    iget p1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    if-nez p1, :cond_4e

    .line 1388
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    .line 1390
    :cond_4e
    goto :goto_65

    .line 1377
    :cond_4f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 1378
    shl-int v0, v1, v0

    .line 1379
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    .line 1380
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mLastInjectedDownEventTime:J

    .line 1381
    nop

    .line 1407
    :goto_65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1465
    const-string v1, "========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1466
    const-string v1, "\nDown pointers #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1468
    const-string v1, " [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    const/4 v1, 0x0

    :goto_1e
    const/16 v2, 0x20

    if-ge v1, v2, :cond_32

    .line 1470
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$InjectedPointerTracker;->mInjectedPointersDown:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_2f

    .line 1471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1472
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1469
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1475
    :cond_32
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    const-string v1, "\n========================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1477
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
