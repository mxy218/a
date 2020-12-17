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
    .registers 8
    .param p1, "this$0"  # Lcom/android/server/am/ProcessList;
    .param p2, "firstUid"  # I
    .param p3, "lastUid"  # I
    .param p4, "numUidsPerRange"  # I

    .line 452
    iput-object p1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->this$0:Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    .line 453
    iput p2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    .line 454
    iput p4, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    .line 455
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    div-int/2addr v0, p4

    iput v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidRanges:I

    .line 456
    new-instance v0, Ljava/util/BitSet;

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidRanges:I

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    .line 458
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    iget v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidRanges:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/BitSet;->set(II)V

    .line 459
    return-void
.end method


# virtual methods
.method freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V
    .registers 7
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 487
    .local v0, "range":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_24

    .line 489
    iget v1, v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    iget v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    div-int/2addr v1, v2

    .line 491
    .local v1, "uidRangeIndex":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 493
    iget-object v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 495
    .end local v1  # "uidRangeIndex":I
    :cond_24
    return-void
.end method

.method getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 4
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 9
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ProcessList.this.mService"
        }
    .end annotation

    .line 468
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 469
    .local v0, "range":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-nez v0, :cond_2d

    .line 470
    iget-object v1, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    .line 471
    .local v1, "uidRangeIndex":I
    if-gez v1, :cond_11

    .line 473
    const/4 v2, 0x0

    return-object v2

    .line 475
    :cond_11
    iget-object v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAvailableUidRanges:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->clear(I)V

    .line 476
    iget v2, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mFirstUid:I

    iget v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mNumUidsPerRange:I

    mul-int v4, v1, v3

    add-int/2addr v2, v4

    .line 477
    .local v2, "actualUid":I
    new-instance v4, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    iget-object v5, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->this$0:Lcom/android/server/am/ProcessList;

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v4, v5, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    move-object v0, v4

    .line 478
    iget-object v3, p0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->mAppRanges:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 480
    .end local v1  # "uidRangeIndex":I
    .end local v2  # "actualUid":I
    :cond_2d
    return-object v0
.end method
