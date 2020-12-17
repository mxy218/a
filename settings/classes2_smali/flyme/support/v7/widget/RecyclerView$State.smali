.class public Lflyme/support/v7/widget/RecyclerView$State;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "State"
.end annotation


# instance fields
.field private mData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mDeletedInvisibleItemCountSincePreviousLayout:I

.field mFocusedItemId:J

.field mFocusedItemPosition:I

.field mFocusedSubChildId:I

.field mInPreLayout:Z

.field mIsMeasuring:Z

.field mItemCount:I

.field mLayoutStep:I

.field mPreviousLayoutItemCount:I

.field mRunPredictiveAnimations:Z

.field mRunSimpleAnimations:Z

.field mStructureChanged:Z

.field private mTargetPosition:I

.field mTrackOldChangeHolders:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11670
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v0, 0x0

    .line 11681
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 11687
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    const/4 v1, 0x1

    .line 11699
    iput v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 11705
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    .line 11707
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11709
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11711
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11713
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 11719
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 11721
    iput-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return-void
.end method

.method static synthetic access$1102(Lflyme/support/v7/widget/RecyclerView$State;I)I
    .registers 2

    .line 11655
    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p1
.end method


# virtual methods
.method assertLayoutStep(I)V
    .registers 5

    .line 11661
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_6

    return-void

    .line 11662
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11663
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but it is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 11664
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public didStructureChange()Z
    .registers 1

    .line 11878
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    return p0
.end method

.method public getItemCount()I
    .registers 2

    .line 11906
    iget-boolean v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    sub-int/2addr v0, p0

    goto :goto_c

    :cond_a
    iget v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    :goto_c
    return v0
.end method

.method public getTargetScrollPosition()I
    .registers 1

    .line 11861
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    return p0
.end method

.method public hasTargetScrollPosition()Z
    .registers 2

    .line 11870
    iget p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public isPreLayout()Z
    .registers 1

    .line 11786
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    return p0
.end method

.method prepareForNestedPrefetch(Lflyme/support/v7/widget/RecyclerView$Adapter;)V
    .registers 3

    const/4 v0, 0x1

    .line 11755
    iput v0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mLayoutStep:I

    .line 11756
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    const/4 p1, 0x0

    .line 11757
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    .line 11758
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    .line 11759
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 11760
    iput-boolean p1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mIsMeasuring:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 11913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mTargetPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mStructureChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mInPreLayout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public willRunPredictiveAnimations()Z
    .registers 1

    .line 11797
    iget-boolean p0, p0, Lflyme/support/v7/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    return p0
.end method
