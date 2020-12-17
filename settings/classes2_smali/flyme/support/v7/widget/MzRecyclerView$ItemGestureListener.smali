.class Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/RecyclerViewGestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemGestureListener"
.end annotation


# instance fields
.field private clickView:Landroid/view/View;

.field private isTapDown:Z

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method private constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .registers 2

    .line 619
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 621
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    return-void
.end method

.method synthetic constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$1;)V
    .registers 3

    .line 619
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    return-void
.end method

.method static synthetic access$1300(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)Landroid/view/View;
    .registers 1

    .line 619
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1302(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 619
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1400(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .registers 6

    .line 619
    invoke-direct/range {p0 .. p5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1502(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;Z)Z
    .registers 2

    .line 619
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    return p1
.end method

.method private hasFlymeFeature()Z
    .registers 2

    .line 987
    :try_start_0
    invoke-static {}, Lflyme/support/v7/widget/MzRecyclerView;->access$2400()Ljava/lang/reflect/Field;

    move-result-object p0

    if-nez p0, :cond_15

    const-string p0, "flyme.config.FlymeFeature"

    .line 988
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "SHELL_HAPTICFEEDBACK_MOTOR"

    .line 989
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-static {p0}, Lflyme/support/v7/widget/MzRecyclerView;->access$2402(Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    .line 991
    :cond_15
    invoke-static {}, Lflyme/support/v7/widget/MzRecyclerView;->access$2400()Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1e} :catch_29
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_1e} :catch_24
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_2e

    :catch_1f
    move-exception p0

    .line 997
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2d

    :catch_24
    move-exception p0

    .line 995
    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2d

    :catch_29
    move-exception p0

    .line 993
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_2d
    const/4 p0, 0x0

    :goto_2e
    return p0
.end method

.method private performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z
    .registers 16

    .line 844
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p3}, Lflyme/support/v7/widget/MzRecyclerView;->mzIsHeaderOrFooter(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 848
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v2, 0x0

    if-eqz v0, :cond_aa

    .line 858
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 859
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1f

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9f

    :cond_1f
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, v3, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v4, :cond_2b

    .line 860
    invoke-static {v3}, Lflyme/support/v7/widget/MzRecyclerView;->access$200(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_9f

    :cond_2b
    invoke-virtual {v0, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isSelectable(I)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 861
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p3, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    xor-int/lit8 v9, v3, 0x1

    .line 862
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p3, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 864
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    if-eqz v3, :cond_6b

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6b

    if-eqz v9, :cond_60

    .line 866
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6b

    .line 868
    :cond_60
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedIdStates:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p3}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroidx/collection/LongSparseArray;->delete(J)V

    :cond_6b
    :goto_6b
    if-eqz v9, :cond_75

    .line 872
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    add-int/2addr v3, v1

    iput v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    goto :goto_7c

    .line 874
    :cond_75
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    sub-int/2addr v3, v1

    iput v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mCheckedItemCount:I

    .line 876
    :goto_7c
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v5, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_8b

    .line 877
    iget-object v4, v0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v4 .. v9}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :goto_89
    move v0, v2

    goto :goto_9c

    .line 880
    :cond_8b
    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$200(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceListener:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceListener;

    if-eqz v0, :cond_9b

    .line 881
    invoke-interface {v0, p3, p4, p5, v9}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceListener;->onItemCheckedStateChanged(IJZ)V

    goto :goto_89

    :cond_9b
    move v0, v1

    :goto_9c
    move v3, v0

    move v0, v1

    goto :goto_a1

    :cond_9f
    move v3, v1

    move v0, v2

    :goto_a1
    if-eqz v0, :cond_a8

    .line 888
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1900(Lflyme/support/v7/widget/MzRecyclerView;)V

    :cond_a8
    move v0, v1

    goto :goto_ac

    :cond_aa
    move v3, v1

    move v0, v2

    :goto_ac
    if-eqz v3, :cond_ca

    .line 893
    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$1200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    move-result-object v4

    if-eqz v4, :cond_ca

    .line 894
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    .line 895
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-interface/range {v4 .. v9}, Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;->onItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)V

    .line 896
    invoke-virtual {p2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    move v0, v1

    :cond_ca
    if-eqz v3, :cond_10f

    .line 901
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$2000(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 902
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$700(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_df

    .line 903
    invoke-virtual {p2, v1}, Landroid/view/View;->setHovered(Z)V

    .line 906
    :cond_df
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$2100(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$HoldView;

    move-result-object p1

    if-nez p1, :cond_f7

    .line 907
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance p1, Lflyme/support/v7/widget/MzRecyclerView$HoldView;

    move-object v1, p1

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lflyme/support/v7/widget/MzRecyclerView$HoldView;-><init>(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;IJ)V

    invoke-static {p0, p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$2102(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$HoldView;)Lflyme/support/v7/widget/MzRecyclerView$HoldView;

    goto :goto_10f

    .line 909
    :cond_f7
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$2100(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$HoldView;

    move-result-object p1

    iput-object p2, p1, Lflyme/support/v7/widget/MzRecyclerView$HoldView;->view:Landroid/view/View;

    .line 910
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$2100(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$HoldView;

    move-result-object p1

    iput p3, p1, Lflyme/support/v7/widget/MzRecyclerView$HoldView;->position:I

    .line 911
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p0}, Lflyme/support/v7/widget/MzRecyclerView;->access$2100(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$HoldView;

    move-result-object p0

    iput-wide p4, p0, Lflyme/support/v7/widget/MzRecyclerView$HoldView;->id:J

    :cond_10f
    :goto_10f
    return v0
.end method

.method private performLongPress(Lflyme/support/v7/widget/RecyclerView;IJ)Z
    .registers 16

    .line 919
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p2}, Lflyme/support/v7/widget/MzRecyclerView;->mzIsHeaderOrFooter(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 923
    :cond_a
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v2, 0x4

    const/16 v3, 0x78b4

    const/4 v4, 0x0

    if-eq v0, v2, :cond_17

    const/4 v2, 0x5

    if-ne v0, v2, :cond_6f

    .line 924
    :cond_17
    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isSelectable(I)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 926
    iget-object p3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object p4, p3, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceModeCallback:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;

    if-eqz p4, :cond_4b

    .line 927
    iget-object v0, p3, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_6e

    .line 928
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p4

    iput-object p4, p3, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-eqz p4, :cond_6e

    .line 929
    iget-object p3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p3, p2, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setItemChecked(IZ)V

    .line 931
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->hasFlymeFeature()Z

    move-result p2

    if-eqz p2, :cond_42

    .line 932
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_45

    .line 934
    :cond_42
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 936
    :goto_45
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1900(Lflyme/support/v7/widget/MzRecyclerView;)V

    goto :goto_6e

    .line 938
    :cond_4b
    iget-object p3, p3, Lflyme/support/v7/widget/MzRecyclerView;->mMultiChoiceListener:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceListener;

    if-eqz p3, :cond_6e

    .line 939
    invoke-interface {p3}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceListener;->onEnterMultiChoice()V

    .line 940
    iget-object p3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p3, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$202(Lflyme/support/v7/widget/MzRecyclerView;Z)Z

    .line 941
    iget-object p3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p3, p2, v1}, Lflyme/support/v7/widget/MzRecyclerView;->setItemChecked(IZ)V

    .line 943
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->hasFlymeFeature()Z

    move-result p2

    if-eqz p2, :cond_66

    .line 944
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_69

    .line 946
    :cond_66
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 948
    :goto_69
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1900(Lflyme/support/v7/widget/MzRecyclerView;)V

    :cond_6e
    :goto_6e
    return v1

    .line 956
    :cond_6f
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$2200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 957
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$2200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;

    move-result-object v5

    iget-object v7, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    move-object v6, p1

    move v8, p2

    move-wide v9, p3

    invoke-interface/range {v5 .. v10}, Lflyme/support/v7/widget/MzRecyclerView$OnItemLongClickListener;->onItemLongClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    move-result p3

    goto :goto_88

    :cond_87
    move p3, v4

    :goto_88
    if-eqz p3, :cond_97

    .line 961
    invoke-direct {p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->hasFlymeFeature()Z

    move-result p4

    if-eqz p4, :cond_94

    .line 962
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    goto :goto_97

    .line 964
    :cond_94
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    .line 968
    :cond_97
    :goto_97
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 969
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p0, p2}, Lflyme/support/v7/widget/MzRecyclerView;->access$2302(Lflyme/support/v7/widget/MzRecyclerView;I)I

    :cond_a4
    return p3
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .line 830
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1700(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 832
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, -0x1

    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v1, 0x0

    .line 833
    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->setScrollState(I)V

    .line 834
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v0, :cond_15

    .line 835
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 837
    :cond_15
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 638
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v1, v4, :cond_15

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v0

    if-ne v0, v2, :cond_15

    .line 640
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x3

    iput v0, p1, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    goto :goto_6a

    .line 642
    :cond_15
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v3, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 644
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 645
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, v1, Lflyme/support/v7/widget/MzRecyclerView;->mCheckRegionRect:Landroid/graphics/Rect;

    .line 646
    iget-object v5, v1, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    if-nez v5, :cond_31

    invoke-static {v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$200(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_5e

    :cond_31
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$300(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$400(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v1

    if-nez v1, :cond_5e

    iget v1, v4, Landroid/graphics/Rect;->left:I

    if-lt p1, v1, :cond_5e

    iget v1, v4, Landroid/graphics/Rect;->right:I

    if-gt p1, v1, :cond_5e

    .line 648
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$500(Lflyme/support/v7/widget/MzRecyclerView;I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 649
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v1, v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$602(Lflyme/support/v7/widget/MzRecyclerView;I)I

    .line 653
    :cond_5e
    iput-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 654
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-virtual {v1, p1, v0}, Lflyme/support/v7/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    .line 657
    :goto_6a
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1, v3}, Lflyme/support/v7/widget/MzRecyclerView;->access$702(Lflyme/support/v7/widget/MzRecyclerView;Z)Z

    .line 658
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz p0, :cond_74

    goto :goto_75

    :cond_74
    move v2, v3

    :goto_75
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    .line 686
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 687
    iget-object p2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget p3, p2, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_d

    const/4 p3, 0x4

    .line 688
    iput p3, p2, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 690
    :cond_d
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 p1, 0x0

    .line 696
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 698
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    return-void

    .line 699
    :cond_b
    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLongClickable()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-eqz v2, :cond_1a

    goto/16 :goto_8b

    .line 705
    :cond_1a
    iput v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 710
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v2, :cond_69

    .line 711
    invoke-static {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$900(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_69

    .line 712
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$1000(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

    move-result-object v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$1000(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;

    move-result-object v2

    invoke-interface {v2, v0}, Lflyme/support/v7/widget/MzRecyclerView$ItemFilter;->isLongPressForItem(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 713
    :cond_3a
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 714
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_69

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, v3, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v3

    if-nez v3, :cond_69

    .line 715
    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v3, v0, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performLongPress(Lflyme/support/v7/widget/RecyclerView;IJ)Z

    move-result v0

    goto :goto_6a

    :cond_69
    move v0, p1

    :goto_6a
    if-eqz v0, :cond_86

    .line 721
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 722
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    const/4 p1, 0x0

    .line 723
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    .line 724
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object p1, p1, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 725
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 p1, -0x1

    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    goto :goto_8a

    .line 727
    :cond_86
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    :goto_8a
    return-void

    .line 700
    :cond_8b
    :goto_8b
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 5

    const/4 p1, 0x0

    .line 734
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 736
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->startScrolled()V

    .line 738
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p0, p2}, Lflyme/support/v7/widget/MzRecyclerView;->access$1100(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 6

    .line 664
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_8

    return-void

    .line 665
    :cond_8
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v1, :cond_55

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$800(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v0

    if-nez v0, :cond_55

    .line 666
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-static {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView;->access$900(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_55

    .line 667
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v1}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 668
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 669
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 670
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v1

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v1, v3}, Lflyme/support/v7/widget/MzRecyclerView;->positionSelector(ILandroid/view/View;)V

    .line 671
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v1, v0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_55

    .line 672
    iget-boolean v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mIsSdkVersion21:Z

    if-eqz v0, :cond_55

    .line 673
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_55
    const/4 p1, 0x0

    .line 678
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    .line 679
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    .line 680
    invoke-static {p0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$702(Lflyme/support/v7/widget/MzRecyclerView;Z)Z

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 759
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_7b

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    if-nez v2, :cond_7b

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v3, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {v0, v2}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 760
    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    if-eqz v0, :cond_30

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    goto :goto_31

    :cond_30
    move v0, v1

    .line 762
    :goto_31
    iget-boolean v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_62

    .line 763
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 764
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 765
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v4}, Lflyme/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v2, v4, v5}, Lflyme/support/v7/widget/MzRecyclerView;->positionSelector(ILandroid/view/View;)V

    .line 767
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v4, v2, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_62

    .line 768
    iget-boolean v2, v2, Lflyme/support/v7/widget/MzRecyclerView;->mIsSdkVersion21:Z

    if-eqz v2, :cond_62

    .line 769
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v4, v2, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 774
    :cond_62
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$1200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_6b

    move v1, v3

    .line 778
    :cond_6b
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v2, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;

    invoke-direct {v2, p0}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener$1;-><init>(Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;)V

    int-to-long v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 794
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 p1, -0x1

    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    :cond_7b
    return v1
.end method

.method public onUp()Z
    .registers 11

    .line 801
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->isTapDown:Z

    if-nez v0, :cond_13

    .line 802
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 803
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 806
    :cond_13
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v2, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5a

    .line 807
    iget-object v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-static {v0, v2}, Lflyme/support/v7/widget/MzRecyclerView;->access$900(Lflyme/support/v7/widget/MzRecyclerView;Landroid/view/View;)I

    move-result v7

    if-ltz v7, :cond_5a

    .line 808
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/RecyclerView;->mState:Lflyme/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$State;->didStructureChange()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_5a

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 809
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->getAdapter()Lflyme/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v7}, Lflyme/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 810
    iget-object v5, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v6, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->performItemClick(Lflyme/support/v7/widget/RecyclerView;Landroid/view/View;IJ)Z

    .line 814
    :cond_5a
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$400(Lflyme/support/v7/widget/MzRecyclerView;)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_74

    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1600(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v0

    if-eq v0, v2, :cond_74

    .line 815
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1600(Lflyme/support/v7/widget/MzRecyclerView;)I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lflyme/support/v7/widget/MzRecyclerView;->downSelect(II)V

    .line 818
    :cond_74
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1700(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 820
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$1800(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    move-result-object v0

    if-nez v0, :cond_8b

    .line 821
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    new-instance v4, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    invoke-direct {v4, v0}, Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;-><init>(Lflyme/support/v7/widget/MzRecyclerView;)V

    invoke-static {v0, v4}, Lflyme/support/v7/widget/MzRecyclerView;->access$1802(Lflyme/support/v7/widget/MzRecyclerView;Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;)Lflyme/support/v7/widget/MzRecyclerView$FlingRunnable;

    .line 823
    :cond_8b
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_96

    if-eqz v0, :cond_96

    if-ne v0, v3, :cond_9a

    .line 824
    :cond_96
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iput v2, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    :cond_9a
    return v1
.end method

.method public startScrolled()V
    .registers 3

    .line 743
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 744
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->clickView:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 745
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 747
    :cond_d
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    .line 748
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 750
    :cond_16
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object v0, v0, Lflyme/support/v7/widget/MzRecyclerView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 752
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ItemGestureListener;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x3

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mTouchMode:I

    return-void
.end method
