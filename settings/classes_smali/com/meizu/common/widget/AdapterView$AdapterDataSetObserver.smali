.class Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/AdapterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterDataSetObserver"
.end annotation


# instance fields
.field private mInstanceState:Landroid/os/Parcelable;

.field final synthetic this$0:Lcom/meizu/common/widget/AdapterView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/AdapterView;)V
    .registers 2

    .line 797
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    const/4 p1, 0x0

    .line 799
    iput-object p1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 4

    .line 803
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    .line 804
    iget v1, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mOldItemCount:I

    .line 805
    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 809
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget v2, v1, Lcom/meizu/common/widget/AdapterView;->mOldItemCount:I

    if-nez v2, :cond_34

    iget v2, v1, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-lez v2, :cond_34

    .line 811
    invoke-static {v1, v0}, Lcom/meizu/common/widget/AdapterView;->access$000(Lcom/meizu/common/widget/AdapterView;Landroid/os/Parcelable;)V

    const/4 v0, 0x0

    .line 812
    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    goto :goto_39

    .line 814
    :cond_34
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->rememberSyncState()V

    .line 816
    :goto_39
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->checkFocus()V

    .line 817
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public onInvalidated()V
    .registers 6

    .line 822
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mDataChanged:Z

    .line 824
    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 827
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-static {v0}, Lcom/meizu/common/widget/AdapterView;->access$100(Lcom/meizu/common/widget/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->mInstanceState:Landroid/os/Parcelable;

    .line 831
    :cond_17
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    iget v1, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mOldItemCount:I

    const/4 v1, 0x0

    .line 832
    iput v1, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    const/4 v2, -0x1

    .line 833
    iput v2, v0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    const-wide/high16 v3, -0x8000000000000000L

    .line 834
    iput-wide v3, v0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 835
    iput v2, v0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 836
    iput-wide v3, v0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 837
    iput-boolean v1, v0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 839
    invoke-virtual {v0}, Lcom/meizu/common/widget/AdapterView;->checkFocus()V

    .line 840
    iget-object p0, p0, Lcom/meizu/common/widget/AdapterView$AdapterDataSetObserver;->this$0:Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method
