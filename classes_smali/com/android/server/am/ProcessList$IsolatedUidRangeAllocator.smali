.class final Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "IsolatedUidRangeAllocator"
.end annotation


# instance fields
.field private final mAppRanges:Lcom/android/internal/app/ProcessMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessList$IsolatedUidRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mAvailableUidRanges:Ljava/util/BitSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation
.end field

.field private final mFirstUid:I

.field private final mNumUidRanges:I

.field private final mNumUidsPerRange:I

.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList;III)V
    .registers 5

    .line 446
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 443
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 447
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    .line 448
    iput p4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    .line 449
    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    div-int/2addr p3, p4

    iput p3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidRanges:I

    .line 450
    new-instance p1, Ljava/util/BitSet;

    iget p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidRanges:I

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    .line 452
    iget-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    iget p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidRanges:I

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/util/BitSet;->set(II)V

    .line 453
    return-void
.end method


# virtual methods
.method freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 481
    if-eqz v0, :cond_24

    .line 483
    iget v0, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    div-int/2addr v0, v1

    .line 485
    iget-object v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 487
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 489
    :cond_24
    return-void
.end method

.method getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 457
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object p1
.end method

.method getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 462
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 463
    if-nez v0, :cond_2b

    .line 464
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    .line 465
    if-gez v0, :cond_11

    .line 467
    const/4 p1, 0x0

    return-object p1

    .line 469
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->clear(I)V

    .line 470
    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    iget v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    mul-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 471
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->this$0:Lcom/android/server/am/ProcessList;

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    .line 472
    iget-object v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_2b
    return-object v0
.end method
