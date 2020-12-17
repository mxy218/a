.class final Landroidx/fragment/app/BackStackRecord;
.super Landroidx/fragment/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$BackStackEntry;
.implements Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;


# instance fields
.field mCommitted:Z

.field mIndex:I

.field final mManager:Landroidx/fragment/app/FragmentManagerImpl;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManagerImpl;)V
    .registers 3

    .line 140
    invoke-direct {p0}, Landroidx/fragment/app/FragmentTransaction;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-void
.end method

.method private static isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z
    .registers 2

    .line 652
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1c

    .line 653
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1c

    .line 654
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method


# virtual methods
.method bumpBackStackNesting(I)V
    .registers 8

    .line 255
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-nez v0, :cond_5

    return-void

    .line 258
    :cond_5
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_27
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v0, :cond_6a

    .line 262
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 263
    iget-object v4, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_67

    .line 264
    iget v5, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v5, p1

    iput v5, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 265
    sget-boolean v4, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_67

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    :cond_6a
    return-void
.end method

.method public commit()I
    .registers 2

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result p0

    return p0
.end method

.method public commitAllowingStateLoss()I
    .registers 2

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    move-result p0

    return p0
.end method

.method commitInternal(Z)I
    .registers 4

    .line 303
    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_4b

    .line 304
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_30

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Landroidx/core/util/LogWriter;

    invoke-direct {v0, v1}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 308
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_30
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    .line 312
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-eqz v0, :cond_40

    .line 313
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl;->allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    goto :goto_43

    :cond_40
    const/4 v0, -0x1

    .line 315
    iput v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 317
    :goto_43
    iget-object v0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    .line 318
    iget p0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    return p0

    .line 303
    :cond_4b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "commit already called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 219
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_29

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-ne v0, v1, :cond_9

    goto :goto_29

    .line 220
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->detach(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .registers 5
    .param p3  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentTransaction;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 180
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iput-object p0, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .registers 9

    if-eqz p3, :cond_da

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 65
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 67
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    if-eqz v0, :cond_46

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    .line 70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mTransitionStyle:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    :cond_46
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    if-nez v0, :cond_4e

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    if-eqz v0, :cond_6d

    .line 74
    :cond_4e
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 76
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :cond_6d
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    if-nez v0, :cond_75

    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    if-eqz v0, :cond_94

    .line 80
    :cond_75
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopEnterAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 82
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mPopExitAnim:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    :cond_94
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    if-nez v0, :cond_9c

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_b7

    .line 86
    :cond_9c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_b7
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    if-nez v0, :cond_bf

    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_da

    .line 92
    :cond_bf
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleRes:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 94
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    :cond_da
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1a5

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_f1
    if-ge v1, v0, :cond_1a5

    .line 103
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 105
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v3, :pswitch_data_1a6

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_134

    :pswitch_114  #0xa
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_134

    :pswitch_117  #0x9
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_134

    :pswitch_11a  #0x8
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_134

    :pswitch_11d  #0x7
    const-string v3, "ATTACH"

    goto :goto_134

    :pswitch_120  #0x6
    const-string v3, "DETACH"

    goto :goto_134

    :pswitch_123  #0x5
    const-string v3, "SHOW"

    goto :goto_134

    :pswitch_126  #0x4
    const-string v3, "HIDE"

    goto :goto_134

    :pswitch_129  #0x3
    const-string v3, "REMOVE"

    goto :goto_134

    :pswitch_12c  #0x2
    const-string v3, "REPLACE"

    goto :goto_134

    :pswitch_12f  #0x1
    const-string v3, "ADD"

    goto :goto_134

    :pswitch_132  #0x0
    const-string v3, "NULL"

    .line 119
    :goto_134
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 120
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 121
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_1a1

    .line 123
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    if-nez v3, :cond_15b

    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    if-eqz v3, :cond_17a

    .line 124
    :cond_15b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 126
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    :cond_17a
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    if-nez v3, :cond_182

    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    if-eqz v3, :cond_1a1

    .line 130
    :cond_182
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 132
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1a1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f1

    :cond_1a5
    return-void

    :pswitch_data_1a6
    .packed-switch 0x0
        :pswitch_132  #00000000
        :pswitch_12f  #00000001
        :pswitch_12c  #00000002
        :pswitch_129  #00000003
        :pswitch_126  #00000004
        :pswitch_123  #00000005
        :pswitch_120  #00000006
        :pswitch_11d  #00000007
        :pswitch_11a  #00000008
        :pswitch_117  #00000009
        :pswitch_114  #0000000a
    .end packed-switch
.end method

.method executeOps()V
    .registers 9

    .line 389
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v2, v0, :cond_a5

    .line 391
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 392
    iget-object v5, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1e

    .line 394
    iget v6, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    iget v7, p0, Landroidx/fragment/app/FragmentTransaction;->mTransitionStyle:I

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/Fragment;->setNextTransition(II)V

    .line 396
    :cond_1e
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v6, :pswitch_data_b2

    .line 431
    :pswitch_23  #0x2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :pswitch_3c  #0xa
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v7, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/FragmentManagerImpl;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_92

    .line 425
    :pswitch_44  #0x9
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 422
    :pswitch_4b  #0x8
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 418
    :pswitch_51  #0x7
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 419
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 414
    :pswitch_5c  #0x6
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 415
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 410
    :pswitch_67  #0x5
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 411
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 406
    :pswitch_72  #0x4
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 407
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 402
    :pswitch_7d  #0x3
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 403
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/FragmentManagerImpl;->removeFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_92

    .line 398
    :pswitch_88  #0x1
    iget v6, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 399
    iget-object v6, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    .line 433
    :goto_92
    iget-boolean v6, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v6, :cond_a1

    iget v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v4, v3, :cond_a1

    if-eqz v5, :cond_a1

    .line 434
    iget-object v3, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    .line 437
    :cond_a5
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v0, :cond_b0

    .line 439
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_b0
    return-void

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_88  #00000001
        :pswitch_23  #00000002
        :pswitch_7d  #00000003
        :pswitch_72  #00000004
        :pswitch_67  #00000005
        :pswitch_5c  #00000006
        :pswitch_51  #00000007
        :pswitch_4b  #00000008
        :pswitch_44  #00000009
        :pswitch_3c  #0000000a
    .end packed-switch
.end method

.method executePopOps(Z)V
    .registers 8

    .line 451
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_aa

    .line 452
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 453
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_21

    .line 455
    iget v4, p0, Landroidx/fragment/app/FragmentTransaction;->mTransition:I

    invoke-static {v4}, Landroidx/fragment/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Landroidx/fragment/app/FragmentTransaction;->mTransitionStyle:I

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/Fragment;->setNextTransition(II)V

    .line 458
    :cond_21
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    packed-switch v4, :pswitch_data_b8

    .line 493
    :pswitch_26  #0x2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown cmd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :pswitch_3f  #0xa
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v5, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/FragmentManagerImpl;->setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V

    goto :goto_96

    .line 487
    :pswitch_47  #0x9
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_96

    .line 484
    :pswitch_4d  #0x8
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/FragmentManagerImpl;->setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_96

    .line 480
    :pswitch_54  #0x7
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 481
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerImpl;->detachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_96

    .line 476
    :pswitch_5f  #0x6
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 477
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerImpl;->attachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_96

    .line 472
    :pswitch_6a  #0x5
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 473
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerImpl;->hideFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_96

    .line 468
    :pswitch_75  #0x4
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 469
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerImpl;->showFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_96

    .line 464
    :pswitch_80  #0x3
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 465
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    goto :goto_96

    .line 460
    :pswitch_8c  #0x1
    iget v4, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 461
    iget-object v4, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/FragmentManagerImpl;->removeFragment(Landroidx/fragment/app/Fragment;)V

    .line 495
    :goto_96
    iget-boolean v4, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v4, :cond_a6

    iget v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_a6

    if-eqz v3, :cond_a6

    .line 496
    iget-object v2, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    :cond_a6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 499
    :cond_aa
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v0, :cond_b7

    if-eqz p1, :cond_b7

    .line 500
    iget-object p0, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_b7
    return-void

    :pswitch_data_b8
    .packed-switch 0x1
        :pswitch_8c  #00000001
        :pswitch_26  #00000002
        :pswitch_80  #00000003
        :pswitch_75  #00000004
        :pswitch_6a  #00000005
        :pswitch_5f  #00000006
        :pswitch_54  #00000007
        :pswitch_4d  #00000008
        :pswitch_47  #00000009
        :pswitch_3f  #0000000a
    .end packed-switch
.end method

.method expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    const/4 v3, 0x0

    .line 528
    :goto_7
    iget-object v5, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_be

    .line 529
    iget-object v5, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 530
    iget v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v6, v8, :cond_b6

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/16 v11, 0x9

    if-eq v6, v9, :cond_58

    if-eq v6, v10, :cond_41

    const/4 v9, 0x6

    if-eq v6, v9, :cond_41

    const/4 v7, 0x7

    if-eq v6, v7, :cond_b6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_31

    goto/16 :goto_bb

    .line 585
    :cond_31
    iget-object v6, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v7, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v7, v11, v4}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v3, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    .line 588
    iget-object v4, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto/16 :goto_bb

    .line 537
    :cond_41
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v5, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-ne v5, v4, :cond_bb

    .line 539
    iget-object v4, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v6, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v6, v11, v5}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v4, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    move-object v4, v7

    goto :goto_bb

    .line 546
    :cond_58
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    .line 547
    iget v9, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 549
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    sub-int/2addr v12, v8

    move-object v13, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_64
    if-ltz v12, :cond_a4

    .line 550
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    .line 551
    iget v15, v14, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v15, v9, :cond_a1

    if-ne v14, v6, :cond_74

    move v3, v8

    goto :goto_a1

    :cond_74
    if-ne v14, v13, :cond_83

    .line 558
    iget-object v13, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    new-instance v15, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v15, v11, v14}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v13, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v13, v7

    .line 562
    :cond_83
    new-instance v15, Landroidx/fragment/app/FragmentTransaction$Op;

    invoke-direct {v15, v10, v14}, Landroidx/fragment/app/FragmentTransaction$Op;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 563
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mEnterAnim:I

    .line 564
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mPopEnterAnim:I

    .line 565
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mExitAnim:I

    .line 566
    iget v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    iput v2, v15, Landroidx/fragment/app/FragmentTransaction$Op;->mPopExitAnim:I

    .line 567
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v15}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v4, v8

    :cond_a1
    :goto_a1
    add-int/lit8 v12, v12, -0x1

    goto :goto_64

    :cond_a4
    if-eqz v3, :cond_ae

    .line 574
    iget-object v2, v0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_b3

    .line 577
    :cond_ae
    iput v8, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    .line 578
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b3
    move v3, v4

    move-object v4, v13

    goto :goto_bb

    .line 533
    :cond_b6
    iget-object v2, v5, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_bb
    :goto_bb
    add-int/2addr v3, v8

    goto/16 :goto_7

    :cond_be
    return-object v4
.end method

.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 332
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1a
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 337
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-eqz p1, :cond_2e

    .line 339
    iget-object p1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/FragmentManagerImpl;->addBackStackState(Landroidx/fragment/app/BackStackRecord;)V

    :cond_2e
    const/4 p0, 0x1

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 660
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    return-object p0
.end method

.method interactsWith(I)Z
    .registers 6

    .line 345
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_23

    .line 347
    iget-object v3, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 348
    iget-object v3, v3, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_19

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1a

    :cond_19
    move v3, v1

    :goto_1a
    if-eqz v3, :cond_20

    if-ne v3, p1, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method interactsWith(Ljava/util/ArrayList;II)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_4

    return v0

    .line 360
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    move v2, v0

    :goto_d
    if-ge v2, v1, :cond_53

    .line 363
    iget-object v4, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 364
    iget-object v4, v4, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_1e

    iget v4, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1f

    :cond_1e
    move v4, v0

    :goto_1f
    if-eqz v4, :cond_50

    if-eq v4, v3, :cond_50

    move v3, p2

    :goto_24
    if-ge v3, p3, :cond_4f

    .line 368
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/BackStackRecord;

    .line 369
    iget-object v6, v5, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_33
    if-ge v7, v6, :cond_4c

    .line 371
    iget-object v8, v5, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 372
    iget-object v8, v8, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_44

    iget v8, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_45

    :cond_44
    move v8, v0

    :goto_45
    if-ne v8, v4, :cond_49

    const/4 p0, 0x1

    return p0

    :cond_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_33

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_4f
    move v3, v4

    :cond_50
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_53
    return v0
.end method

.method isPostponed()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    .line 633
    :goto_2
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 634
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 635
    invoke-static {v2}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;
    .registers 4
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 186
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v0, :cond_29

    iget-object v1, p0, Landroidx/fragment/app/BackStackRecord;->mManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-ne v0, v1, :cond_9

    goto :goto_29

    .line 187
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    return-object p0
.end method

.method public runOnCommitRunnables()V
    .registers 3

    .line 272
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    .line 273
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 274
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mCommitRunnables:Ljava/util/ArrayList;

    :cond_1e
    return-void
.end method

.method setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 5

    const/4 v0, 0x0

    .line 643
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 644
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 645
    invoke-static {v1}, Landroidx/fragment/app/BackStackRecord;->isFragmentPostponed(Landroidx/fragment/app/FragmentTransaction$Op;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 646
    iget-object v1, v1, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_25

    const-string v1, " #"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_25
    iget-object v1, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    if-eqz v1, :cond_33

    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p0, p0, Landroidx/fragment/app/FragmentTransaction;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_33
    const-string/jumbo p0, "}"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_35

    .line 608
    iget-object v2, p0, Landroidx/fragment/app/FragmentTransaction;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/FragmentTransaction$Op;

    .line 609
    iget v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCmd:I

    if-eq v3, v1, :cond_2d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_27

    packed-switch v3, :pswitch_data_36

    goto :goto_32

    .line 625
    :pswitch_1d  #0xa
    iget-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mOldMaxState:Landroidx/lifecycle/Lifecycle$State;

    iput-object v3, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mCurrentMaxState:Landroidx/lifecycle/Lifecycle$State;

    goto :goto_32

    .line 619
    :pswitch_22  #0x9
    iget-object p2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    goto :goto_32

    :pswitch_25  #0x8
    const/4 p2, 0x0

    goto :goto_32

    .line 616
    :cond_27
    :pswitch_27  #0x6
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_32

    .line 612
    :cond_2d
    :pswitch_2d  #0x7
    iget-object v2, v2, Landroidx/fragment/app/FragmentTransaction$Op;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_35
    return-object p2

    :pswitch_data_36
    .packed-switch 0x6
        :pswitch_27  #00000006
        :pswitch_2d  #00000007
        :pswitch_25  #00000008
        :pswitch_22  #00000009
        :pswitch_1d  #0000000a
    .end packed-switch
.end method
