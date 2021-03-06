.class final Landroidx/fragment/app/FragmentManagerImpl;
.super Landroidx/fragment/app/FragmentManager;
.source "FragmentManagerImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;,
        Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;,
        Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;,
        Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;,
        Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;,
        Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
    }
.end annotation


# static fields
.field static DEBUG:Z

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;


# instance fields
.field final mActive:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mContainer:Landroidx/fragment/app/FragmentContainer;

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mHost:Landroidx/fragment/app/FragmentHostCallback;

.field private final mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field

.field mNeedMenuInvalidate:Z

.field mNextFragmentIndex:I

.field private mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

.field private final mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

.field mParent:Landroidx/fragment/app/Fragment;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;",
            ">;"
        }
    .end annotation
.end field

.field mPostponedTransactions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field mPrimaryNav:Landroidx/fragment/app/Fragment;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mStopped:Z

.field mTmpAddedFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mTmpIsPop:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mTmpRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 573
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000  # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 574
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000  # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManager;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    .line 99
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    .line 104
    new-instance v1, Landroidx/fragment/app/FragmentManagerImpl$1;

    invoke-direct {v1, p0, v0}, Landroidx/fragment/app/FragmentManagerImpl$1;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Z)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 117
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 120
    iput v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v0, 0x0

    .line 139
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 140
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 147
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl$2;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private addAddedFragments(Landroidx/collection/ArraySet;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2078
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v1, 0x3

    .line 2082
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2083
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v8, v2

    :goto_13
    if-ge v8, v1, :cond_43

    .line 2085
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/fragment/app/Fragment;

    .line 2086
    iget v2, v9, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, v0, :cond_40

    .line 2087
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v5

    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2089
    iget-object v2, v9, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_40

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v2, :cond_40

    iget-boolean v2, v9, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v2, :cond_40

    .line 2090
    invoke-virtual {p1, v9}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_40
    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_43
    return-void
.end method

.method private animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1066
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1067
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1068
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1069
    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1070
    iget-object p3, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz p3, :cond_26

    .line 1071
    new-instance p2, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;

    invoke-direct {p2, p3, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 1073
    iget-object p3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 1074
    new-instance p3, Landroidx/fragment/app/FragmentManagerImpl$3;

    invoke-direct {p3, p0, v1, p1}, Landroidx/fragment/app/FragmentManagerImpl$3;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1100
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3b

    .line 1102
    :cond_26
    iget-object p2, p2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    .line 1103
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 1104
    new-instance p3, Landroidx/fragment/app/FragmentManagerImpl$4;

    invoke-direct {p3, p0, v1, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl$4;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {p2, p3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1117
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1118
    invoke-virtual {p2}, Landroid/animation/Animator;->start()V

    :goto_3b
    return-void
.end method

.method private burpActive()V
    .registers 2

    .line 2542
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const/4 v0, 0x0

    .line 2545
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private checkStateLoss()V
    .registers 2

    .line 1525
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 1526
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can not perform this action after onSaveInstanceState"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private cleanupExec()V
    .registers 2

    const/4 v0, 0x0

    .line 1702
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1703
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1704
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private dispatchOnParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V
    .registers 2
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_9

    .line 2794
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz p0, :cond_9

    .line 2795
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->onParentPrimaryNavigationFragmentChanged()V

    :cond_9
    return-void
.end method

.method private dispatchStateChange(I)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2645
    :try_start_2
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2646
    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d

    .line 2648
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 2650
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    return-void

    :catchall_d
    move-exception p1

    .line 2648
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw p1
.end method

.method private endAnimatingAwayFragments()V
    .registers 9

    .line 2112
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_a

    .line 2114
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 2116
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v4

    .line 2117
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v1

    .line 2118
    invoke-virtual {v1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2120
    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    .line 2123
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    :cond_33
    const/4 v1, 0x0

    .line 2125
    invoke-virtual {v3, v1}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 2126
    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_a

    .line 2127
    :cond_3f
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 2128
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->end()V

    goto :goto_a

    :cond_4d
    return-void
.end method

.method private ensureExecReady(Z)V
    .registers 4

    .line 1649
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_4e

    .line 1653
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_46

    .line 1657
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3e

    if-nez p1, :cond_1d

    .line 1662
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1665
    :cond_1d
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    if-nez p1, :cond_2f

    .line 1666
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    .line 1667
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    :cond_2f
    const/4 p1, 0x1

    .line 1669
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1671
    :try_start_34
    invoke-direct {p0, v0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3a

    .line 1673
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    return-void

    :catchall_3a
    move-exception v0

    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    throw v0

    .line 1658
    :cond_3e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called from main thread of fragment host"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1654
    :cond_46
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment host has been destroyed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1650
    :cond_4e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "FragmentManager is already executing transactions"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2c

    .line 2056
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 2057
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_23

    const/4 v1, -0x1

    .line 2059
    invoke-virtual {v0, v1}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 v2, 0x0

    .line 2063
    :goto_1f
    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_29

    .line 2065
    :cond_23
    invoke-virtual {v0, v2}, Landroidx/fragment/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 2066
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    :goto_29
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2c
    return-void
.end method

.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 1831
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v11, v0, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    .line 1833
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    if-nez v0, :cond_1d

    .line 1834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    goto :goto_20

    .line 1836
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1838
    :goto_20
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1839
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v12, v1

    move v0, v9

    :goto_2f
    const/4 v13, 0x1

    if-ge v0, v10, :cond_5e

    .line 1841
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    .line 1842
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1844
    iget-object v4, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/BackStackRecord;->expandOps(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    goto :goto_51

    .line 1846
    :cond_4b
    iget-object v4, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v2}, Landroidx/fragment/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :goto_51
    if-nez v12, :cond_5a

    .line 1848
    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->mAddToBackStack:Z

    if-eqz v3, :cond_58

    goto :goto_5a

    :cond_58
    move v12, v1

    goto :goto_5b

    :cond_5a
    :goto_5a
    move v12, v13

    :goto_5b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 1850
    :cond_5e
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-nez v11, :cond_72

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 1853
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1856
    :cond_72
    invoke-static/range {p1 .. p4}, Landroidx/fragment/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v11, :cond_92

    .line 1860
    new-instance v14, Landroidx/collection/ArraySet;

    invoke-direct {v14}, Landroidx/collection/ArraySet;-><init>()V

    .line 1861
    invoke-direct {p0, v14}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    .line 1862
    invoke-direct/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I

    move-result v0

    .line 1864
    invoke-direct {p0, v14}, Landroidx/fragment/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V

    move v4, v0

    goto :goto_93

    :cond_92
    move v4, v10

    :goto_93
    if-eq v4, v9, :cond_a7

    if-eqz v11, :cond_a7

    const/4 v5, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 1869
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 1871
    iget v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    :cond_a7
    :goto_a7
    if-ge v9, v10, :cond_cb

    .line 1875
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/BackStackRecord;

    .line 1876
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 1877
    iget v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v1, :cond_c5

    .line 1878
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    const/4 v1, -0x1

    .line 1879
    iput v1, v0, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    .line 1881
    :cond_c5
    invoke-virtual {v0}, Landroidx/fragment/app/BackStackRecord;->runOnCommitRunnables()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_a7

    :cond_cb
    if-eqz v12, :cond_d0

    .line 1884
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->reportBackStackChanged()V

    :cond_d0
    return-void
.end method

.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1737
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_b
    move v2, v0

    move v0, v1

    :goto_d
    if-ge v0, v2, :cond_77

    .line 1739
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    const/4 v4, -0x1

    if-eqz p1, :cond_36

    .line 1740
    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_36

    .line 1741
    iget-object v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_36

    .line 1742
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1743
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_74

    .line 1747
    :cond_36
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z

    move-result v5

    if-nez v5, :cond_4a

    if-eqz p1, :cond_74

    iget-object v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1748
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, p1, v1, v6}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 1749
    :cond_4a
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    if-eqz p1, :cond_71

    .line 1753
    iget-boolean v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z

    if-nez v5, :cond_71

    iget-object v5, v3, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroidx/fragment/app/BackStackRecord;

    .line 1754
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-eq v5, v4, :cond_71

    .line 1755
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_71

    .line 1757
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V

    goto :goto_74

    .line 1759
    :cond_71
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    :cond_74
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_77
    return-void
.end method

.method private findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .registers 6

    .line 2027
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 2028
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_28

    if-nez v1, :cond_a

    goto :goto_28

    .line 2034
    :cond_a
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_12
    if-ltz p1, :cond_28

    .line 2036
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2037
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-ne v3, v0, :cond_25

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_25

    return-object v1

    :cond_25
    add-int/lit8 p1, p1, -0x1

    goto :goto_12

    :cond_28
    :goto_28
    return-object v2
.end method

.method private forcePostponedTransactions()V
    .registers 3

    .line 2100
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 2101
    :goto_4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2102
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V

    goto :goto_4

    :cond_19
    return-void
.end method

.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 7
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

    .line 2147
    monitor-enter p0

    .line 2148
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    goto :goto_3a

    .line 2152
    :cond_f
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_16
    if-ge v1, v0, :cond_28

    .line 2154
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    invoke-interface {v3, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2156
    :cond_28
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2157
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2158
    monitor-exit p0

    return v2

    .line 2149
    :cond_3a
    :goto_3a
    monitor-exit p0

    return v1

    :catchall_3c
    move-exception p1

    .line 2158
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method private isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z
    .registers 5
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 214
    :cond_4
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 216
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerImpl;->getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-ne p1, v2, :cond_15

    .line 220
    iget-object p1, v1, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 221
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method static makeFadeAnimation(FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .registers 3

    .line 594
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 595
    sget-object p0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    .line 596
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 597
    new-instance p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method static makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .registers 15

    .line 580
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 581
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000  # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000  # 0.5f

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 583
    sget-object p0, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p0, 0xdc

    .line 584
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 585
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 586
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 587
    sget-object p2, Landroidx/fragment/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 588
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 589
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 590
    new-instance p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private makeRemovedFragmentsInvisible(Landroidx/collection/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 1896
    invoke-virtual {p1}, Landroidx/collection/ArraySet;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_22

    .line 1898
    invoke-virtual {p1, v0}, Landroidx/collection/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1899
    iget-boolean v2, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v2, :cond_1f

    .line 1900
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    .line 1901
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    .line 1902
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    return-void
.end method

.method private onParentPrimaryNavigationFragmentChanged()V
    .registers 3

    .line 2800
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 2802
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2803
    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    goto :goto_d

    :cond_1d
    return-void
.end method

.method private popBackStackImmediate(Ljava/lang/String;II)Z
    .registers 12

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x1

    .line 294
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    .line 296
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1c

    if-gez p2, :cond_1c

    if-nez p1, :cond_1c

    .line 299
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->peekChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 300
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_1c

    return v0

    .line 306
    :cond_1c
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 308
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 310
    :try_start_2c
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_37

    .line 312
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    goto :goto_3c

    :catchall_37
    move-exception p1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw p1

    .line 316
    :cond_3c
    :goto_3c
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 317
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 318
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    return p1
.end method

.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroidx/collection/ArraySet;)I
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Landroidx/collection/ArraySet<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_3
    if-lt v0, p3, :cond_5a

    .line 1924
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 1925
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1926
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->isPostponed()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_26

    add-int/lit8 v4, v0, 0x1

    .line 1927
    invoke-virtual {v2, p1, v4, p4}, Landroidx/fragment/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z

    move-result v4

    if-nez v4, :cond_26

    const/4 v4, 0x1

    goto :goto_27

    :cond_26
    move v4, v5

    :goto_27
    if-eqz v4, :cond_57

    .line 1929
    iget-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    if-nez v4, :cond_34

    .line 1930
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1932
    :cond_34
    new-instance v4, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;

    invoke-direct {v4, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroidx/fragment/app/BackStackRecord;Z)V

    .line 1934
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1935
    invoke-virtual {v2, v4}, Landroidx/fragment/app/BackStackRecord;->setOnStartPostponedListener(Landroidx/fragment/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v3, :cond_47

    .line 1939
    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    goto :goto_4a

    .line 1941
    :cond_47
    invoke-virtual {v2, v5}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    :goto_4a
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_54

    .line 1947
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1948
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1952
    :cond_54
    invoke-direct {p0, p5}, Landroidx/fragment/app/FragmentManagerImpl;->addAddedFragments(Landroidx/collection/ArraySet;)V

    :cond_57
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5a
    return v1
.end method

.method private removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6e

    .line 1781
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_6e

    :cond_9
    if-eqz p2, :cond_66

    .line 1785
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_66

    .line 1790
    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1792
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1e
    if-ge v1, v0, :cond_60

    .line 1795
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v3, :cond_5d

    if-eq v2, v1, :cond_2f

    .line 1799
    invoke-direct {p0, p1, p2, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_2f
    add-int/lit8 v2, v1, 0x1

    .line 1804
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    :goto_3d
    if-ge v2, v0, :cond_58

    .line 1806
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_58

    .line 1807
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    iget-boolean v3, v3, Landroidx/fragment/app/FragmentTransaction;->mReorderingAllowed:Z

    if-nez v3, :cond_58

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 1811
    :cond_58
    invoke-direct {p0, p1, p2, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    :cond_60
    if-eq v2, v0, :cond_65

    .line 1817
    invoke-direct {p0, p1, p2, v2, v0}, Landroidx/fragment/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_65
    return-void

    .line 1786
    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error with the back stack records"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6e
    :goto_6e
    return-void
.end method

.method public static reverseTransit(I)I
    .registers 4

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_11

    if-eq p0, v1, :cond_10

    if-eq p0, v0, :cond_e

    const/4 v0, 0x0

    goto :goto_11

    :cond_e
    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :cond_11
    :goto_11
    return v0
.end method

.method private throwException(Ljava/lang/RuntimeException;)V
    .registers 9

    .line 155
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 156
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Landroidx/core/util/LogWriter;

    invoke-direct {v0, v1}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 159
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "  "

    if-eqz v0, :cond_2d

    :try_start_22
    new-array p0, v4, [Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v6, v5, v2, p0}, Landroidx/fragment/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_27} :catch_28

    goto :goto_37

    :catch_28
    move-exception p0

    .line 163
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_37

    :cond_2d
    :try_start_2d
    new-array v0, v4, [Ljava/lang/String;

    .line 167
    invoke-virtual {p0, v6, v5, v2, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_32} :catch_33

    goto :goto_37

    :catch_33
    move-exception p0

    .line 169
    invoke-static {v1, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    :goto_37
    throw p1
.end method

.method public static transitToStyleIndex(IZ)I
    .registers 3

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_14

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_e

    const/4 p0, -0x1

    goto :goto_1f

    :cond_e
    if-eqz p1, :cond_12

    const/4 p0, 0x3

    goto :goto_1f

    :cond_12
    const/4 p0, 0x4

    goto :goto_1f

    :cond_14
    if-eqz p1, :cond_18

    const/4 p0, 0x5

    goto :goto_1f

    :cond_18
    const/4 p0, 0x6

    goto :goto_1f

    :cond_1a
    if-eqz p1, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x2

    :goto_1f
    return p0
.end method

.method private updateOnBackPressedCallbackEnabled()V
    .registers 4

    .line 192
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 193
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void

    .line 199
    :cond_11
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->getBackStackEntryCount()I

    move-result v2

    if-lez v2, :cond_22

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 200
    invoke-direct {p0, v2}, Landroidx/fragment/app/FragmentManagerImpl;->isPrimaryNavigation(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_22

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    .line 199
    :goto_23
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method addBackStackState(Landroidx/fragment/app/BackStackRecord;)V
    .registers 3

    .line 2178
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2179
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2181
    :cond_b
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addFragment(Landroidx/fragment/app/Fragment;Z)V
    .registers 6

    .line 1365
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1366
    :cond_1a
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->makeActive(Landroidx/fragment/app/Fragment;)V

    .line 1367
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_68

    .line 1368
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 1371
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1372
    :try_start_2c
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_4e

    const/4 v0, 0x1

    .line 1374
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    const/4 v1, 0x0

    .line 1375
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1376
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_3e

    .line 1377
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1379
    :cond_3e
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_48

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_48

    .line 1380
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_48
    if-eqz p2, :cond_68

    .line 1383
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    goto :goto_68

    :catchall_4e
    move-exception p0

    .line 1373
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0

    .line 1369
    :cond_51
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment already added: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_68
    :goto_68
    return-void
.end method

.method addRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 392
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_12

    .line 393
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_11

    const-string p0, "Ignoring addRetainedFragment as the state is already saved"

    .line 394
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    .line 398
    :cond_12
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->addRetainedFragment(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 399
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_32

    .line 400
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating retained Fragments: Added "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method public allocBackStackIndex(Landroidx/fragment/app/BackStackRecord;)I
    .registers 6

    .line 1587
    monitor-enter p0

    .line 1588
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_4b

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_e

    goto :goto_4b

    .line 1598
    :cond_e
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1599
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_44

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_44
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1601
    monitor-exit p0

    return v0

    .line 1589
    :cond_4b
    :goto_4b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_56

    .line 1590
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1592
    :cond_56
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1593
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_7e

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_7e
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    monitor-exit p0

    return v0

    :catchall_85
    move-exception p1

    .line 1603
    monitor-exit p0
    :try_end_87
    .catchall {:try_start_1 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V
    .registers 6
    .param p1  # Landroidx/fragment/app/FragmentHostCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroidx/fragment/app/FragmentContainer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2550
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_4d

    .line 2551
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2552
    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2553
    iput-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 2554
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_11

    .line 2558
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 2561
    :cond_11
    instance-of p2, p1, Landroidx/activity/OnBackPressedDispatcherOwner;

    if-eqz p2, :cond_28

    .line 2562
    move-object p2, p1

    check-cast p2, Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 2563
    invoke-interface {p2}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_21

    move-object p2, p3

    .line 2565
    :cond_21
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/OnBackPressedCallback;)V

    :cond_28
    if-eqz p3, :cond_33

    .line 2570
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentManagerImpl;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto :goto_4c

    .line 2571
    :cond_33
    instance-of p2, p1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz p2, :cond_44

    .line 2572
    check-cast p1, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-interface {p1}, Landroidx/lifecycle/ViewModelStoreOwner;->getViewModelStore()Landroidx/lifecycle/ViewModelStore;

    move-result-object p1

    .line 2573
    invoke-static {p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getInstance(Landroidx/lifecycle/ViewModelStore;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    goto :goto_4c

    .line 2575
    :cond_44
    new-instance p1, Landroidx/fragment/app/FragmentManagerViewModel;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/fragment/app/FragmentManagerViewModel;-><init>(Z)V

    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    :goto_4c
    return-void

    .line 2550
    :cond_4d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public attachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1454
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_1a
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_78

    const/4 v0, 0x0

    .line 1456
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1457
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v0, :cond_78

    .line 1458
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1461
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_47

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add from attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    :cond_47
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1463
    :try_start_4a
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_5e

    const/4 v0, 0x1

    .line 1465
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1466
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_78

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz p1, :cond_78

    .line 1467
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    goto :goto_78

    :catchall_5e
    move-exception p0

    .line 1464
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0

    .line 1459
    :cond_61
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment already added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_78
    :goto_78
    return-void
.end method

.method public beginTransaction()Landroidx/fragment/app/FragmentTransaction;
    .registers 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 178
    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method completeExecute(Landroidx/fragment/app/BackStackRecord;ZZZ)V
    .registers 12

    if-eqz p2, :cond_6

    .line 1977
    invoke-virtual {p1, p4}, Landroidx/fragment/app/BackStackRecord;->executePopOps(Z)V

    goto :goto_9

    .line 1979
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/BackStackRecord;->executeOps()V

    .line 1981
    :goto_9
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1982
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1983
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_27

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    .line 1986
    invoke-static/range {v0 .. v5}, Landroidx/fragment/app/FragmentTransition;->startTransitions(Landroidx/fragment/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_27
    if-eqz p4, :cond_2e

    .line 1989
    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p2, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(IZ)V

    .line 1992
    :cond_2e
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_38
    :goto_38
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_38

    .line 1995
    iget-object p3, p2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p3, :cond_38

    iget-boolean p3, p2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz p3, :cond_38

    iget p3, p2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 1996
    invoke-virtual {p1, p3}, Landroidx/fragment/app/BackStackRecord;->interactsWith(I)Z

    move-result p3

    if-eqz p3, :cond_38

    .line 1997
    iget p3, p2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_62

    .line 1998
    iget-object v1, p2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, p3}, Landroid/view/View;->setAlpha(F)V

    :cond_62
    if-eqz p4, :cond_67

    .line 2001
    iput v0, p2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_38

    :cond_67
    const/high16 p3, -0x40800000  # -1.0f

    .line 2003
    iput p3, p2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 p3, 0x0

    .line 2004
    iput-boolean p3, p2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_38

    :cond_6f
    return-void
.end method

.method completeShowHideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 9

    .line 1153
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_75

    .line 1154
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    xor-int/2addr v3, v1

    .line 1155
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v4

    .line 1154
    invoke-virtual {p0, p1, v0, v3, v4}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 1156
    iget-object v3, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    if-eqz v3, :cond_4b

    .line 1157
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1158
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_40

    .line 1159
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1160
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_45

    .line 1162
    :cond_2e
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1163
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1164
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1167
    iget-object v5, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    new-instance v6, Landroidx/fragment/app/FragmentManagerImpl$5;

    invoke-direct {v6, p0, v3, v4, p1}, Landroidx/fragment/app/FragmentManagerImpl$5;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_45

    .line 1179
    :cond_40
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    :goto_45
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_75

    :cond_4b
    if-eqz v0, :cond_59

    .line 1184
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1185
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1187
    :cond_59
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_66

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_66

    const/16 v0, 0x8

    goto :goto_67

    :cond_66
    move v0, v2

    .line 1190
    :goto_67
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1191
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 1192
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1196
    :cond_75
    :goto_75
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_83

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_83

    .line 1197
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1199
    :cond_83
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1200
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, p0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method public detachFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1436
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_1a
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_59

    const/4 v0, 0x1

    .line 1438
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1439
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_59

    .line 1441
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove from detach: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    :cond_3f
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1443
    :try_start_42
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1444
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_56

    .line 1445
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_52

    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_52

    .line 1446
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_52
    const/4 p0, 0x0

    .line 1448
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    goto :goto_59

    :catchall_56
    move-exception p0

    .line 1444
    :try_start_57
    monitor-exit v1
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p0

    :cond_59
    :goto_59
    return-void
.end method

.method public dispatchActivityCreated()V
    .registers 2

    const/4 v0, 0x0

    .line 2598
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2599
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x2

    .line 2600
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1  # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2672
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2673
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_16

    .line 2675
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1  # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2754
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    move v0, v1

    .line 2757
    :goto_8
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 2758
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_21

    .line 2760
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method public dispatchCreate()V
    .registers 2

    const/4 v0, 0x0

    .line 2592
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2593
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x1

    .line 2594
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 10
    .param p1  # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2690
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    move-object v3, v0

    move v0, v1

    move v4, v0

    .line 2695
    :goto_b
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_31

    .line 2696
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2e

    .line 2698
    invoke-virtual {v5, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_2e

    if-nez v3, :cond_2a

    .line 2701
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2703
    :cond_2a
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v2

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2708
    :cond_31
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz p1, :cond_53

    .line 2709
    :goto_35
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_53

    .line 2710
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_4d

    .line 2711
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_50

    .line 2712
    :cond_4d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_50
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 2717
    :cond_53
    iput-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v4
.end method

.method public dispatchDestroy()V
    .registers 3

    const/4 v0, 0x1

    .line 2629
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    .line 2630
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x0

    .line 2631
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    const/4 v0, 0x0

    .line 2632
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 2633
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    .line 2634
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    .line 2635
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_1c

    .line 2638
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v1}, Landroidx/activity/OnBackPressedCallback;->remove()V

    .line 2639
    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    :cond_1c
    return-void
.end method

.method public dispatchDestroyView()V
    .registers 2

    const/4 v0, 0x1

    .line 2625
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchLowMemory()V
    .registers 3

    const/4 v0, 0x0

    .line 2681
    :goto_1
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 2682
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_16

    .line 2684
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_19
    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .registers 4

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 2655
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_17

    .line 2657
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2931
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2932
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2933
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2934
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2935
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2938
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2a

    .line 2939
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2940
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .registers 7
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2883
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2884
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2885
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2886
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2887
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 2890
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2a

    .line 2891
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2892
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2915
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2916
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2917
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2918
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2919
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2922
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2a

    .line 2923
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2924
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3053
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 3054
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3055
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 3056
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3057
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3060
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 3061
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 3062
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3068
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 3069
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3070
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 3071
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3072
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    .line 3075
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 3076
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 3077
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2992
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2993
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2994
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2995
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2996
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    .line 2999
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 3000
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 3001
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V
    .registers 7
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2867
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2868
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2869
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2870
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2871
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 2874
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2a

    .line 2875
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2876
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2899
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2900
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2901
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2902
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2903
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2906
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2a

    .line 2907
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2908
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2977
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2978
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2979
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2980
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2981
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 2984
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 2985
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2986
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .registers 7
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3023
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 3024
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3025
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 3026
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3027
    invoke-virtual {v0, p1, p2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 3030
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p3, :cond_2a

    .line 3031
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 3032
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2962
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2963
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2964
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2965
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2966
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    .line 2969
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 2970
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2971
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3007
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 3008
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3009
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 3010
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3011
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    .line 3014
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 3015
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 3016
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .registers 8
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2947
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 2948
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 2949
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 2950
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 2951
    invoke-virtual {v0, p1, p2, p3, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 2954
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p4, :cond_2a

    .line 2955
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 2956
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1, p2, p3}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V
    .registers 6
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3038
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_12

    .line 3039
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 3040
    instance-of v1, v0, Landroidx/fragment/app/FragmentManagerImpl;

    if-eqz v1, :cond_12

    .line 3041
    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl;

    const/4 v1, 0x1

    .line 3042
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 3045
    :cond_12
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;

    if-eqz p2, :cond_2a

    .line 3046
    iget-boolean v2, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mRecursive:Z

    if-eqz v2, :cond_18

    .line 3047
    :cond_2a
    iget-object v1, v1, Landroidx/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;->mCallback:Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;)V

    goto :goto_18

    :cond_30
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6
    .param p1  # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2739
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    move v0, v1

    .line 2742
    :goto_8
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_24

    .line 2743
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_21

    .line 2745
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_21

    return v2

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_24
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 4
    .param p1  # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2769
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v0, 0x0

    .line 2772
    :goto_7
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 2773
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1c

    .line 2775
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_1f
    return-void
.end method

.method public dispatchPause()V
    .registers 2

    const/4 v0, 0x3

    .line 2616
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .registers 4

    .line 2663
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1a

    .line 2664
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_17

    .line 2666
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .param p1  # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2723
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_7

    return v1

    :cond_7
    move v0, v1

    .line 2727
    :goto_8
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_24

    .line 2728
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_21

    .line 2730
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_21

    move v0, v2

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_24
    return v0
.end method

.method public dispatchResume()V
    .registers 2

    const/4 v0, 0x0

    .line 2610
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2611
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x4

    .line 2612
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchStart()V
    .registers 2

    const/4 v0, 0x0

    .line 2604
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2605
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x3

    .line 2606
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method public dispatchStop()V
    .registers 2

    const/4 v0, 0x1

    .line 2620
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    const/4 v0, 0x2

    .line 2621
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStateChange(I)V

    return-void
.end method

.method doPendingDeferredStart()V
    .registers 2

    .line 2163
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 2164
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 2165
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_a
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_53

    .line 477
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Active Fragments in "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 478
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, ":"

    .line 479
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3b
    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 481
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v2, :cond_3b

    .line 483
    invoke-virtual {v2, v0, p2, p3, p4}, Landroidx/fragment/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_3b

    .line 488
    :cond_53
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p4, 0x0

    if-lez p2, :cond_89

    .line 490
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Added Fragments:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_65
    if-ge v1, p2, :cond_89

    .line 492
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 494
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 496
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_65

    .line 501
    :cond_89
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz p2, :cond_c0

    .line 502
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_c0

    .line 504
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_9c
    if-ge v1, p2, :cond_c0

    .line 506
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 507
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 508
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 513
    :cond_c0
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz p2, :cond_fa

    .line 514
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_fa

    .line 516
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, p4

    :goto_d3
    if-ge v1, p2, :cond_fa

    .line 518
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/BackStackRecord;

    .line 519
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 520
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/fragment/app/BackStackRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v2, v0, p3}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 526
    :cond_fa
    monitor-enter p0

    .line 527
    :try_start_fb
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_130

    .line 528
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_130

    .line 530
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Back Stack Indices:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, p4

    :goto_110
    if-ge v0, p2, :cond_130

    .line 532
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/BackStackRecord;

    .line 533
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 534
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_110

    .line 539
    :cond_130
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_151

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_151

    .line 540
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 541
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    :cond_151
    monitor-exit p0
    :try_end_152
    .catchall {:try_start_fb .. :try_end_152} :catchall_1f4

    .line 545
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_184

    .line 546
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_184

    .line 548
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending Actions:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_164
    if-ge p4, p2, :cond_184

    .line 550
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;

    .line 551
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 552
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_164

    .line 557
    :cond_184
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 560
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_1b7

    .line 561
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    :cond_1b7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 564
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 565
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 566
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 567
    iget-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p2, :cond_1f3

    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 569
    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1f3
    return-void

    :catchall_1f4
    move-exception p1

    .line 543
    :try_start_1f5
    monitor-exit p0
    :try_end_1f6
    .catchall {:try_start_1f5 .. :try_end_1f6} :catchall_1f4

    throw p1
.end method

.method public enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V
    .registers 4

    if-nez p2, :cond_5

    .line 1548
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1550
    :cond_5
    monitor-enter p0

    .line 1551
    :try_start_6
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_24

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_f

    goto :goto_24

    .line 1558
    :cond_f
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez p2, :cond_1a

    .line 1559
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1561
    :cond_1a
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1562
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->scheduleCommit()V

    .line 1563
    monitor-exit p0

    return-void

    :cond_24
    :goto_24
    if-eqz p2, :cond_28

    .line 1554
    monitor-exit p0

    return-void

    .line 1556
    :cond_28
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_30
    move-exception p1

    .line 1563
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p1
.end method

.method ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1127
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_3a

    .line 1128
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 1130
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 1131
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    const/4 v1, 0x0

    .line 1132
    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1133
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_29

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    :cond_29
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1135
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    goto :goto_3a

    .line 1137
    :cond_38
    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    :cond_3a
    :goto_3a
    return-void
.end method

.method public execPendingActions()Z
    .registers 5

    const/4 v0, 0x1

    .line 1711
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->ensureExecReady(Z)V

    const/4 v1, 0x0

    .line 1714
    :goto_5
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroidx/fragment/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1715
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    .line 1717
    :try_start_11
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->removeRedundantOperationsAndExecute(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1d

    .line 1719
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    move v1, v0

    goto :goto_5

    :catchall_1d
    move-exception v0

    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->cleanupExec()V

    throw v0

    .line 1724
    :cond_22
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 1725
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->doPendingDeferredStart()V

    .line 1726
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->burpActive()V

    return v1
.end method

.method public executePendingTransactions()Z
    .registers 2

    .line 183
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    .line 184
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    return v0
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1477
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1478
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_19

    .line 1479
    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1484
    :cond_1c
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_26

    .line 1485
    iget v1, v0, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v1, p1, :cond_26

    return-object v0

    :cond_39
    const/4 p0, 0x0

    return-object p0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_22

    .line 1497
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_22

    .line 1498
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1f

    .line 1499
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_22
    if-eqz p1, :cond_45

    .line 1506
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_2e

    .line 1507
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    return-object v0

    :cond_45
    const/4 p0, 0x0

    return-object p0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 3
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1516
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_a

    .line 1517
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_a

    return-object v0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public freeBackStackIndex(I)V
    .registers 5

    .line 1632
    monitor-enter p0

    .line 1633
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1634
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_12

    .line 1635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1637
    :cond_12
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2c

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Freeing back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_2c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1639
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public getBackStackEntryCount()I
    .registers 1

    .line 324
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;
    .registers 2
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 388
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getChildNonConfig(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentManagerViewModel;

    move-result-object p0

    return-object p0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .registers 7
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 359
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 363
    :cond_8
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_13

    return-object v1

    .line 365
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment no longer exists for key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v0
.end method

.method public getFragmentFactory()Landroidx/fragment/app/FragmentFactory;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2825
    invoke-super {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v0

    .line 2826
    sget-object v1, Landroidx/fragment/app/FragmentManager;->DEFAULT_FACTORY:Landroidx/fragment/app/FragmentFactory;

    if-ne v0, v1, :cond_1b

    .line 2827
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_13

    .line 2832
    iget-object p0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p0

    return-object p0

    .line 2834
    :cond_13
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$6;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentManagerImpl$6;-><init>(Landroidx/fragment/app/FragmentManagerImpl;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentFactory(Landroidx/fragment/app/FragmentFactory;)V

    .line 2844
    :cond_1b
    invoke-super {p0}, Landroidx/fragment/app/FragmentManager;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object p0

    return-object p0
.end method

.method public getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 376
    :cond_d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 377
    :try_start_10
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_1a
    move-exception p0

    .line 378
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_1a

    throw p0
.end method

.method getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;
    .registers 1

    return-object p0
.end method

.method public getPrimaryNavigationFragment()Landroidx/fragment/app/Fragment;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2810
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .registers 2
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 383
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->getViewModelStore(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelStore;

    move-result-object p0

    return-object p0
.end method

.method handleOnBackPressed()V
    .registers 2

    .line 230
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    .line 231
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {v0}, Landroidx/activity/OnBackPressedCallback;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate()Z

    goto :goto_14

    .line 241
    :cond_f
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mOnBackPressedDispatcher:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->onBackPressed()V

    :goto_14
    return-void
.end method

.method public hideFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1410
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_1a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hide: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_1a
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p0, :cond_26

    const/4 p0, 0x1

    .line 1412
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1415
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr p0, v0

    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_26
    return-void
.end method

.method isStateAtLeast(I)Z
    .registers 2

    .line 711
    iget p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-lt p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isStateSaved()Z
    .registers 2

    .line 1536
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;
    .registers 9

    .line 602
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result v0

    .line 603
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 605
    new-instance p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 608
    :cond_10
    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 610
    new-instance p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V

    return-object p0

    :cond_1c
    if-eqz v0, :cond_75

    .line 614
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "anim"

    .line 615
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_4b

    .line 620
    :try_start_35
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 622
    new-instance v3, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v3, v2}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V
    :try_end_46
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_35 .. :try_end_46} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_46} :catch_4b

    return-object v3

    :cond_47
    const/4 v1, 0x1

    goto :goto_4b

    :catch_49
    move-exception p0

    .line 627
    throw p0

    :catch_4b
    :cond_4b
    :goto_4b
    if-nez v1, :cond_75

    .line 635
    :try_start_4d
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_75

    .line 637
    new-instance v2, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {v2, v1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/animation/Animator;)V
    :try_end_5e
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_5e} :catch_5f

    return-object v2

    :catch_5f
    move-exception v1

    if-nez p1, :cond_74

    .line 645
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_75

    .line 647
    new-instance p0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;-><init>(Landroid/view/animation/Animation;)V

    return-object p0

    .line 642
    :cond_74
    throw v1

    :cond_75
    const/4 p1, 0x0

    if-nez p2, :cond_79

    return-object p1

    .line 657
    :cond_79
    invoke-static {p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result p2

    if-gez p2, :cond_80

    return-object p1

    :cond_80
    const p3, 0x3f79999a  # 0.975f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000  # 1.0f

    packed-switch p2, :pswitch_data_c0

    if-nez p4, :cond_bd

    .line 678
    iget-object p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentHostCallback;->onHasWindowAnimations()Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 679
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentHostCallback;->onGetWindowAnimations()I

    move-result p4

    goto :goto_bd

    .line 674
    :pswitch_9a  #0x6
    invoke-static {v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 672
    :pswitch_9f  #0x5
    invoke-static {v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->makeFadeAnimation(FF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    :pswitch_a4  #0x4
    const p0, 0x3f89999a  # 1.075f

    .line 670
    invoke-static {v1, p0, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 668
    :pswitch_ac  #0x3
    invoke-static {p3, v1, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    .line 666
    :pswitch_b1  #0x2
    invoke-static {v1, p3, v1, v0}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    :pswitch_b6  #0x1
    const/high16 p0, 0x3f900000  # 1.125f

    .line 664
    invoke-static {p0, v1, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->makeOpenCloseAnimation(FFFF)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object p0

    return-object p0

    :cond_bd
    :goto_bd
    if-nez p4, :cond_bf

    :cond_bf
    return-object p1

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_b6  #00000001
        :pswitch_b1  #00000002
        :pswitch_ac  #00000003
        :pswitch_a4  #00000004
        :pswitch_9f  #00000005
        :pswitch_9a  #00000006
    .end packed-switch
.end method

.method makeActive(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 1321
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    return-void

    .line 1325
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v0, :cond_24

    .line 1327
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v0, :cond_1e

    .line 1328
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->addRetainedFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_21

    .line 1330
    :cond_1e
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    :goto_21
    const/4 p0, 0x0

    .line 1332
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 1334
    :cond_24
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_3e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Added fragment to active set "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    return-void
.end method

.method makeInactive(Landroidx/fragment/app/Fragment;)V
    .registers 7

    .line 1338
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    .line 1342
    :cond_b
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removed fragment from active set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_25
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_2f

    .line 1346
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iget-object v4, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 1347
    iput-object p1, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1348
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    goto :goto_2f

    .line 1353
    :cond_4d
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1354
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)V

    .line 1356
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_65

    .line 1359
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    iput-object p0, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 1361
    :cond_65
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->initState()V

    return-void
.end method

.method moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 1213
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1214
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_3a

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FragmentManager"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    return-void

    .line 1220
    :cond_3b
    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1221
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_52

    .line 1222
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1223
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_52

    .line 1225
    :cond_4e
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_52
    :goto_52
    move v6, v0

    .line 1228
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v7

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 1230
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_bf

    .line 1232
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentUnder(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 1234
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1236
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1237
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1238
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-ge v4, v0, :cond_83

    .line 1240
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1241
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1244
    :cond_83
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_bf

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_bf

    .line 1246
    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v4, v0, v1

    if-lez v4, :cond_97

    .line 1247
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 1249
    :cond_97
    iput v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1250
    iput-boolean v3, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1252
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v0

    .line 1253
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextTransitionStyle()I

    move-result v1

    .line 1252
    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    if-eqz v0, :cond_bf

    .line 1255
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_b3

    .line 1256
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_bf

    .line 1258
    :cond_b3
    iget-object v1, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1259
    iget-object v0, v0, Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;->animator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1264
    :cond_bf
    :goto_bf
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_c6

    .line 1265
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->completeShowHideFragment(Landroidx/fragment/app/Fragment;)V

    :cond_c6
    return-void
.end method

.method moveToState(IZ)V
    .registers 5

    .line 1279
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-nez v0, :cond_f

    if-nez p1, :cond_7

    goto :goto_f

    .line 1280
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No activity"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    if-nez p2, :cond_16

    .line 1283
    iget p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ne p1, p2, :cond_16

    return-void

    .line 1287
    :cond_16
    iput p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    .line 1290
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    move v0, p2

    :goto_20
    if-ge v0, p1, :cond_30

    .line 1292
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1293
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1298
    :cond_30
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3a
    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_3a

    .line 1299
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-nez v1, :cond_50

    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v1, :cond_3a

    :cond_50
    iget-boolean v1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v1, :cond_3a

    .line 1300
    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroidx/fragment/app/Fragment;)V

    goto :goto_3a

    .line 1304
    :cond_58
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1306
    iget-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p1, :cond_6d

    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz p1, :cond_6d

    iget v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6d

    .line 1307
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 1308
    iput-boolean p2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_6d
    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;)V
    .registers 8

    .line 1123
    iget v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    return-void
.end method

.method moveToState(Landroidx/fragment/app/Fragment;IIIZ)V
    .registers 24

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 718
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mAdded:Z

    const/4 v8, 0x1

    if-eqz v0, :cond_11

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_e

    goto :goto_11

    :cond_e
    move/from16 v0, p2

    goto :goto_16

    :cond_11
    :goto_11
    move/from16 v0, p2

    if-le v0, v8, :cond_16

    move v0, v8

    .line 721
    :cond_16
    :goto_16
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v1, :cond_2a

    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-le v0, v1, :cond_2a

    if-nez v1, :cond_28

    .line 722
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-eqz v0, :cond_28

    move v0, v8

    goto :goto_2a

    .line 727
    :cond_28
    iget v0, v7, Landroidx/fragment/app/Fragment;->mState:I

    .line 732
    :cond_2a
    :goto_2a
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v1, :cond_37

    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v9, :cond_37

    if-le v0, v10, :cond_37

    move v0, v10

    .line 737
    :cond_37
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    if-ne v1, v2, :cond_42

    .line 738
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4a

    .line 740
    :cond_42
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_4a
    move v11, v0

    .line 742
    iget v0, v7, Landroidx/fragment/app/Fragment;->mState:I

    const-string v12, "FragmentManager"

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-gt v0, v11, :cond_324

    .line 746
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_5c

    return-void

    .line 749
    :cond_5c
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_68

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_7c

    .line 754
    :cond_68
    invoke-virtual {v7, v14}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 755
    invoke-virtual {v7, v14}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 756
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 758
    :cond_7c
    iget v0, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eqz v0, :cond_8e

    if-eq v0, v8, :cond_1e7

    if-eq v0, v10, :cond_8b

    if-eq v0, v9, :cond_88

    goto/16 :goto_4cb

    :cond_88
    move v0, v9

    goto/16 :goto_2fe

    :cond_8b
    move v0, v10

    goto/16 :goto_2dd

    :cond_8e
    if-lez v11, :cond_1e7

    .line 761
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_a8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_a8
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_101

    .line 763
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 764
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 763
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 765
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 767
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v6, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_d0

    .line 769
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_d1

    :cond_d0
    move-object v0, v14

    :goto_d1
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 770
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_e1

    .line 771
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_req_state"

    invoke-virtual {v0, v1, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v7, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 774
    :cond_e1
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    if-eqz v0, :cond_ee

    .line 775
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 776
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_f8

    .line 778
    :cond_ee
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:user_visible_hint"

    invoke-virtual {v0, v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v7, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 781
    :goto_f8
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_101

    .line 782
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-le v11, v10, :cond_101

    move v11, v10

    .line 789
    :cond_101
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 790
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    iput-object v1, v7, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_10e

    .line 791
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    goto :goto_110

    :cond_10e
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    :goto_110
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 796
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v15, " that does not belong to this FragmentManager!"

    const-string v5, " declared target fragment "

    const-string v4, "Fragment "

    if-eqz v0, :cond_16b

    .line 797
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-ne v0, v1, :cond_149

    .line 802
    iget v0, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v8, :cond_13e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object v9, v4

    move/from16 v4, v16

    move-object v10, v5

    move/from16 v5, v17

    .line 803
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_140

    :cond_13e
    move-object v9, v4

    move-object v10, v5

    .line 805
    :goto_140
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 806
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_16d

    :cond_149
    move-object v9, v4

    move-object v10, v5

    .line 798
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16b
    move-object v9, v4

    move-object v10, v5

    .line 808
    :goto_16d
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_1aa

    .line 809
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_18a

    .line 815
    iget v0, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v0, v8, :cond_1aa

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, p0

    .line 816
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_1aa

    .line 811
    :cond_18a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_1aa
    :goto_1aa
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 821
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 822
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_1c0

    .line 823
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentHostCallback;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_1c3

    .line 825
    :cond_1c0
    invoke-virtual {v0, v7}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 827
    :goto_1c3
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6, v7, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroidx/fragment/app/Fragment;Landroid/content/Context;Z)V

    .line 829
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_1e0

    .line 830
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPreCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 831
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 832
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    goto :goto_1e7

    .line 834
    :cond_1e0
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 835
    iput v8, v7, Landroidx/fragment/app/Fragment;->mState:I

    :cond_1e7
    :goto_1e7
    if-lez v11, :cond_1ec

    .line 844
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->ensureInflatedFragmentView(Landroidx/fragment/app/Fragment;)V

    :cond_1ec
    if-le v11, v8, :cond_2dc

    .line 848
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_206

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_206
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_2c7

    .line 851
    iget v0, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_27d

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25e

    .line 858
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mContainer:Landroidx/fragment/app/FragmentContainer;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_27e

    .line 859
    iget-boolean v1, v7, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-eqz v1, :cond_220

    goto :goto_27e

    .line 862
    :cond_220
    :try_start_220
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_22a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_220 .. :try_end_22a} :catch_22b

    goto :goto_22e

    :catch_22b
    const-string/jumbo v0, "unknown"

    .line 866
    :goto_22e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No view found for id 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v7, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 868
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 866
    invoke-direct {v6, v1}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v14

    .line 853
    :cond_25e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for a container view with no id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v14

    :cond_27d
    move-object v0, v14

    .line 873
    :cond_27e
    :goto_27e
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 874
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v1, v0, v2}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 876
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2c5

    .line 877
    iput-object v1, v7, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 878
    invoke-virtual {v1, v13}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    if-eqz v0, :cond_29b

    .line 880
    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 882
    :cond_29b
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_2a6

    .line 883
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    :cond_2a6
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0, v1}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 886
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v1, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 890
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c1

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2c1

    goto :goto_2c2

    :cond_2c1
    move v8, v13

    :goto_2c2
    iput-boolean v8, v7, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_2c7

    .line 893
    :cond_2c5
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 897
    :cond_2c7
    :goto_2c7
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 898
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v6, v7, v0, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 899
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2da

    .line 900
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v7, v0}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 902
    :cond_2da
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :cond_2dc
    const/4 v0, 0x2

    :goto_2dd
    if-le v11, v0, :cond_2fd

    .line 907
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2f7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_2f7
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 909
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroidx/fragment/app/Fragment;Z)V

    :cond_2fd
    const/4 v0, 0x3

    :goto_2fe
    if-le v11, v0, :cond_4cb

    .line 914
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_318

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveto RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_318
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 916
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroidx/fragment/app/Fragment;Z)V

    .line 917
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 918
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_4cb

    :cond_324
    if-le v0, v11, :cond_4cb

    if-eq v0, v8, :cond_3fa

    const/4 v1, 0x2

    if-eq v0, v1, :cond_378

    const/4 v1, 0x3

    if-eq v0, v1, :cond_355

    const/4 v1, 0x4

    if-eq v0, v1, :cond_333

    goto/16 :goto_4cb

    :cond_333
    if-ge v11, v1, :cond_353

    .line 925
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_34d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom RESUMED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_34d
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 927
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroidx/fragment/app/Fragment;Z)V

    :cond_353
    const/4 v0, 0x3

    goto :goto_356

    :cond_355
    move v0, v1

    :goto_356
    if-ge v11, v0, :cond_376

    .line 932
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_370

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom STARTED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_370
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 934
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroidx/fragment/app/Fragment;Z)V

    :cond_376
    const/4 v0, 0x2

    goto :goto_379

    :cond_378
    move v0, v1

    :goto_379
    if-ge v11, v0, :cond_3fa

    .line 939
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_393

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_393
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3a6

    .line 943
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_3a6

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_3a6

    .line 944
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 947
    :cond_3a6
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 948
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 949
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3eb

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3eb

    .line 951
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 952
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 954
    iget v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    if-lez v0, :cond_3dc

    iget-boolean v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_3dc

    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 955
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3dc

    iget v0, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3dc

    move/from16 v0, p3

    move/from16 v2, p4

    .line 957
    invoke-virtual {v6, v7, v0, v13, v2}, Landroidx/fragment/app/FragmentManagerImpl;->loadAnimation(Landroidx/fragment/app/Fragment;IZI)Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;

    move-result-object v0

    goto :goto_3dd

    :cond_3dc
    move-object v0, v14

    .line 960
    :goto_3dd
    iput v1, v7, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    if-eqz v0, :cond_3e4

    .line 962
    invoke-direct {v6, v7, v0, v11}, Landroidx/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V

    .line 964
    :cond_3e4
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v1, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 966
    :cond_3eb
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 967
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 970
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Landroidx/fragment/app/FragmentViewLifecycleOwner;

    .line 971
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, v14}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 972
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    .line 973
    iput-boolean v13, v7, Landroidx/fragment/app/Fragment;->mInLayout:Z

    :cond_3fa
    if-ge v11, v8, :cond_4cb

    .line 978
    iget-boolean v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz v0, :cond_421

    .line 985
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_411

    .line 986
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    .line 987
    invoke-virtual {v7, v14}, Landroidx/fragment/app/Fragment;->setAnimatingAway(Landroid/view/View;)V

    .line 988
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_421

    .line 989
    :cond_411
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_421

    .line 990
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    .line 991
    invoke-virtual {v7, v14}, Landroidx/fragment/app/Fragment;->setAnimator(Landroid/animation/Animator;)V

    .line 992
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 995
    :cond_421
    :goto_421
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c7

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    if-eqz v0, :cond_42f

    goto/16 :goto_4c7

    .line 1003
    :cond_42f
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_447

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "movefrom CREATED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_447
    iget-boolean v0, v7, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_453

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_453

    move v0, v8

    goto :goto_454

    :cond_453
    move v0, v13

    :goto_454
    if-nez v0, :cond_462

    .line 1005
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_45f

    goto :goto_462

    .line 1021
    :cond_45f
    iput v13, v7, Landroidx/fragment/app/Fragment;->mState:I

    goto :goto_493

    .line 1007
    :cond_462
    :goto_462
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v2, v1, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v2, :cond_46f

    .line 1008
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManagerViewModel;->isCleared()Z

    move-result v8

    goto :goto_484

    .line 1009
    :cond_46f
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_484

    .line 1010
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 1011
    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    xor-int/2addr v8, v1

    :cond_484
    :goto_484
    if-nez v0, :cond_488

    if-eqz v8, :cond_48d

    .line 1016
    :cond_488
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v1, v7}, Landroidx/fragment/app/FragmentManagerViewModel;->clearNonConfigState(Landroidx/fragment/app/Fragment;)V

    .line 1018
    :cond_48d
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 1019
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroidx/fragment/app/Fragment;Z)V

    .line 1024
    :goto_493
    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 1025
    invoke-virtual {v6, v7, v13}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroidx/fragment/app/Fragment;Z)V

    if-nez p5, :cond_4cb

    if-nez v0, :cond_4c3

    .line 1027
    iget-object v0, v6, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0, v7}, Landroidx/fragment/app/FragmentManagerViewModel;->shouldDestroy(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_4a6

    goto :goto_4c3

    .line 1030
    :cond_4a6
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 1031
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 1032
    iput-object v14, v7, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 1033
    iget-object v0, v7, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v0, :cond_4cb

    .line 1034
    iget-object v1, v6, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4cb

    .line 1035
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v1

    if-eqz v1, :cond_4cb

    .line 1039
    iput-object v0, v7, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_4cb

    .line 1028
    :cond_4c3
    :goto_4c3
    invoke-virtual/range {p0 .. p1}, Landroidx/fragment/app/FragmentManagerImpl;->makeInactive(Landroidx/fragment/app/Fragment;)V

    goto :goto_4cb

    .line 1000
    :cond_4c7
    :goto_4c7
    invoke-virtual {v7, v11}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    goto :goto_4cc

    :cond_4cb
    :goto_4cb
    move v8, v11

    .line 1049
    :goto_4cc
    iget v0, v7, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v0, v8, :cond_4f8

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveToState: Fragment state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iput v8, v7, Landroidx/fragment/app/Fragment;->mState:I

    :cond_4f8
    return-void
.end method

.method public noteStateNotSaved()V
    .registers 4

    const/4 v0, 0x0

    .line 2580
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2581
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStopped:Z

    .line 2582
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_b
    if-ge v0, v1, :cond_1d

    .line 2584
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1a

    .line 2586
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1d
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 16
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v2, "fragment"

    .line 3126
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_a

    return-object v3

    :cond_a
    const-string v2, "class"

    .line 3130
    invoke-interface {p4, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3131
    sget-object v4, Landroidx/fragment/app/FragmentManagerImpl$FragmentTag;->Fragment:[I

    invoke-virtual {p3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    const/4 v6, 0x0

    if-nez v2, :cond_1d

    .line 3133
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1d
    move-object v7, v2

    const/4 v2, -0x1

    const/4 v8, 0x1

    .line 3135
    invoke-virtual {v4, v8, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    const/4 v10, 0x2

    .line 3136
    invoke-virtual {v4, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3137
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_176

    .line 3139
    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v4, v7}, Landroidx/fragment/app/FragmentFactory;->isFragmentClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto/16 :goto_176

    :cond_3a
    if-eqz p1, :cond_40

    .line 3145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    :cond_40
    if-ne v6, v2, :cond_65

    if-ne v9, v2, :cond_65

    if-eqz v10, :cond_47

    goto :goto_65

    .line 3147
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    :goto_65
    if-eq v9, v2, :cond_6b

    .line 3154
    invoke-virtual {p0, v9}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_6b
    if-nez v3, :cond_73

    if-eqz v10, :cond_73

    .line 3156
    invoke-virtual {p0, v10}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    :cond_73
    if-nez v3, :cond_7b

    if-eq v6, v2, :cond_7b

    .line 3159
    invoke-virtual {p0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 3162
    :cond_7b
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_a9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreateView: id=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3163
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fname="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " existing="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FragmentManager"

    .line 3162
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a9
    if-nez v3, :cond_da

    .line 3166
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroidx/fragment/app/FragmentFactory;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 3167
    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v9, :cond_bd

    move v3, v9

    goto :goto_be

    :cond_bd
    move v3, v6

    .line 3168
    :goto_be
    iput v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 3169
    iput v6, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 3170
    iput-object v10, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 3171
    iput-boolean v8, v2, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3172
    iput-object p0, v2, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 3173
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v3, v2, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3174
    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v2, v3, p4, v4}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 3175
    invoke-virtual {p0, v2, v8}, Landroidx/fragment/app/FragmentManagerImpl;->addFragment(Landroidx/fragment/app/Fragment;Z)V

    move-object v6, v2

    goto :goto_ee

    .line 3177
    :cond_da
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-nez v2, :cond_138

    .line 3187
    iput-boolean v8, v3, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 3188
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iput-object v2, v3, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    .line 3190
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v2, p4, v4}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    move-object v6, v3

    .line 3197
    :goto_ee
    iget v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    if-ge v1, v8, :cond_100

    iget-boolean v1, v6, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v1, :cond_100

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    .line 3198
    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_103

    .line 3200
    :cond_100
    invoke-virtual {p0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;)V

    .line 3203
    :goto_103
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_11c

    if-eqz v9, :cond_10c

    .line 3208
    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3210
    :cond_10c
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_119

    .line 3211
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3213
    :cond_119
    iget-object v0, v6, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3204
    :cond_11c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3180
    :cond_138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Duplicate id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3181
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tag "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", or parent id 0x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3182
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with another fragment for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_176
    :goto_176
    return-object v3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 5

    const/4 v0, 0x0

    .line 3218
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V
    .registers 9

    .line 699
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_19

    .line 700
    iget-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_c

    const/4 p1, 0x1

    .line 702
    iput-boolean p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 706
    iget v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mCurState:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    :cond_19
    return-void
.end method

.method public popBackStack(II)V
    .registers 5

    if-ltz p1, :cond_d

    .line 272
    new-instance v0, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroidx/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->enqueueAction(Landroidx/fragment/app/FragmentManagerImpl$OpGenerator;Z)V

    return-void

    .line 270
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public popBackStackImmediate()Z
    .registers 4

    .line 252
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->checkStateLoss()V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 253
    invoke-direct {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2187
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    if-nez p3, :cond_29

    if-gez p4, :cond_29

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_29

    .line 2191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_17

    return v1

    .line 2195
    :cond_17
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2196
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a4

    :cond_29
    if-nez p3, :cond_31

    if-ltz p4, :cond_2e

    goto :goto_31

    :cond_2e
    const/4 p3, -0x1

    move v0, p3

    goto :goto_7e

    .line 2202
    :cond_31
    :goto_31
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_38
    if-ltz v0, :cond_59

    .line 2204
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/BackStackRecord;

    if-eqz p3, :cond_4f

    .line 2205
    invoke-virtual {v3}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    goto :goto_59

    :cond_4f
    if-ltz p4, :cond_56

    .line 2208
    iget v3, v3, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, v3, :cond_56

    goto :goto_59

    :cond_56
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    :cond_59
    :goto_59
    if-gez v0, :cond_5c

    return v1

    :cond_5c
    and-int/2addr p5, v2

    if-eqz p5, :cond_7e

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_7e

    .line 2220
    iget-object p5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroidx/fragment/app/BackStackRecord;

    if-eqz p3, :cond_77

    .line 2221
    invoke-virtual {p5}, Landroidx/fragment/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5f

    :cond_77
    if-ltz p4, :cond_7e

    iget p5, p5, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ne p4, p5, :cond_7e

    goto :goto_5f

    .line 2230
    :cond_7e
    :goto_7e
    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-ne v0, p3, :cond_88

    return v1

    .line 2233
    :cond_88
    iget-object p3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v2

    :goto_8f
    if-le p3, v0, :cond_a4

    .line 2234
    iget-object p4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2235
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_8f

    :cond_a4
    :goto_a4
    return v2
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 349
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-ne v0, p0, :cond_a

    .line 353
    iget-object p0, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 350
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not currently in the FragmentManager"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public removeFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    .line 1389
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    :cond_24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1391
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_30

    if-eqz v0, :cond_48

    .line 1392
    :cond_30
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1393
    :try_start_33
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1394
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_49

    .line 1395
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_43

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_43

    .line 1396
    iput-boolean v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_43
    const/4 p0, 0x0

    .line 1398
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1399
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    :cond_48
    return-void

    :catchall_49
    move-exception p0

    .line 1394
    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p0
.end method

.method removeRetainedFragment(Landroidx/fragment/app/Fragment;)V
    .registers 4
    .param p1  # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 405
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->isStateSaved()Z

    move-result v0

    const-string v1, "FragmentManager"

    if-eqz v0, :cond_12

    .line 406
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_11

    const-string p0, "Ignoring removeRetainedFragment as the state is already saved"

    .line 407
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    .line 411
    :cond_12
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerViewModel;->removeRetainedFragment(Landroidx/fragment/app/Fragment;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 412
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_32

    .line 413
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updating retained Fragments: Removed "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    return-void
.end method

.method reportBackStackChanged()V
    .registers 3

    .line 2170
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b

    const/4 v0, 0x0

    .line 2171
    :goto_5
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2172
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_1b
    return-void
.end method

.method restoreSaveState(Landroid/os/Parcelable;)V
    .registers 13

    if-nez p1, :cond_3

    return-void

    .line 2428
    :cond_3
    check-cast p1, Landroidx/fragment/app/FragmentManagerState;

    .line 2429
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_a

    return-void

    .line 2433
    :cond_a
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNonConfig:Landroidx/fragment/app/FragmentManagerViewModel;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerViewModel;->getRetainedFragments()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_c8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2434
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_3d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "restoreSaveState: re-attaching retained "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FragmentManager"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_3d
    iget-object v5, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_43
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/FragmentState;

    .line 2437
    iget-object v7, v6, Landroidx/fragment/app/FragmentState;->mWho:Ljava/lang/String;

    iget-object v8, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    goto :goto_5b

    :cond_5a
    move-object v6, v4

    :goto_5b
    if-nez v6, :cond_91

    .line 2443
    sget-boolean v3, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_81

    .line 2444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discarding retained Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " that was not found in the set of active Fragments "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v1

    .line 2450
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    .line 2451
    iput-boolean v2, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v7, 0x0

    .line 2452
    invoke-virtual/range {v5 .. v10}, Landroidx/fragment/app/FragmentManagerImpl;->moveToState(Landroidx/fragment/app/Fragment;IIIZ)V

    goto :goto_14

    .line 2455
    :cond_91
    iput-object v1, v6, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    .line 2456
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2457
    iput v3, v1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 2458
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 2459
    iput-boolean v3, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2460
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_a2

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_a3

    :cond_a2
    move-object v2, v4

    :goto_a3
    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 2461
    iput-object v4, v1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 2462
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v2, :cond_14

    .line 2463
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2464
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v3, "android:view_state"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 2466
    iget-object v2, v6, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto/16 :goto_14

    .line 2472
    :cond_c8
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2473
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d3
    :goto_d3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_123

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentState;

    if-eqz v1, :cond_d3

    .line 2475
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 2476
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->getFragmentFactory()Landroidx/fragment/app/FragmentFactory;

    move-result-object v6

    .line 2475
    invoke-virtual {v1, v5, v6}, Landroidx/fragment/app/FragmentState;->instantiate(Ljava/lang/ClassLoader;Landroidx/fragment/app/FragmentFactory;)Landroidx/fragment/app/Fragment;

    move-result-object v5

    .line 2477
    iput-object p0, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    .line 2478
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_119

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreSaveState: active ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FragmentManager"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    :cond_119
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v7, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2483
    iput-object v4, v1, Landroidx/fragment/app/FragmentState;->mInstance:Landroidx/fragment/app/Fragment;

    goto :goto_d3

    .line 2488
    :cond_123
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2489
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_1b5

    .line 2490
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_130
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2491
    iget-object v5, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_196

    .line 2496
    iput-boolean v2, v5, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 2497
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_16a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "restoreSaveState: added ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "FragmentManager"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    :cond_16a
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17f

    .line 2501
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2502
    :try_start_175
    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2503
    monitor-exit v1

    goto :goto_130

    :catchall_17c
    move-exception p0

    monitor-exit v1
    :try_end_17e
    .catchall {:try_start_175 .. :try_end_17e} :catchall_17c

    throw p0

    .line 2499
    :cond_17f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Already added "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2493
    :cond_196
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No instantiated fragment for ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v4

    .line 2508
    :cond_1b5
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    if-eqz v0, :cond_21c

    .line 2509
    new-instance v1, Ljava/util/ArrayList;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    move v0, v3

    .line 2510
    :goto_1c2
    iget-object v1, p1, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    array-length v2, v1

    if-ge v0, v2, :cond_21e

    .line 2511
    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Landroidx/fragment/app/BackStackState;->instantiate(Landroidx/fragment/app/FragmentManagerImpl;)Landroidx/fragment/app/BackStackRecord;

    move-result-object v1

    .line 2512
    sget-boolean v2, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_20d

    .line 2513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restoreAllState: back stack #"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " (index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "FragmentManager"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    new-instance v2, Landroidx/core/util/LogWriter;

    const-string v4, "FragmentManager"

    invoke-direct {v2, v4}, Landroidx/core/util/LogWriter;-><init>(Ljava/lang/String;)V

    .line 2516
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "  "

    .line 2517
    invoke-virtual {v1, v2, v4, v3}, Landroidx/fragment/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2518
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 2520
    :cond_20d
    iget-object v2, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2521
    iget v2, v1, Landroidx/fragment/app/BackStackRecord;->mIndex:I

    if-ltz v2, :cond_219

    .line 2522
    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/FragmentManagerImpl;->setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V

    :cond_219
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c2

    .line 2526
    :cond_21c
    iput-object v4, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2529
    :cond_21e
    iget-object v0, p1, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    if-eqz v0, :cond_231

    .line 2530
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2531
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2533
    :cond_231
    iget p1, p1, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    iput p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    return-void
.end method

.method saveAllState()Landroid/os/Parcelable;
    .registers 13

    .line 2307
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->forcePostponedTransactions()V

    .line 2308
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->endAnimatingAwayFragments()V

    .line 2309
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x1

    .line 2311
    iput-boolean v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateSaved:Z

    .line 2313
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_16

    return-object v2

    .line 2318
    :cond_16
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 2319
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2321
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    move v5, v4

    :cond_2d
    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ": "

    const-string v8, " was removed from the FragmentManager"

    const-string v9, "Failure saving state: active "

    const-string v10, "FragmentManager"

    if-eqz v6, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/Fragment;

    if-eqz v6, :cond_2d

    .line 2323
    iget-object v5, v6, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-ne v5, p0, :cond_d4

    .line 2331
    new-instance v5, Landroidx/fragment/app/FragmentState;

    invoke-direct {v5, v6}, Landroidx/fragment/app/FragmentState;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 2332
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2334
    iget v8, v6, Landroidx/fragment/app/Fragment;->mState:I

    if-lez v8, :cond_ad

    iget-object v8, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v8, :cond_ad

    .line 2335
    invoke-virtual {p0, v6}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;

    move-result-object v8

    iput-object v8, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2337
    iget-object v8, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v8, :cond_b1

    .line 2338
    iget-object v9, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_89

    .line 2345
    iget-object v9, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_76

    .line 2346
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2348
    :cond_76
    iget-object v9, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_state"

    invoke-virtual {p0, v9, v11, v8}, Landroidx/fragment/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 2350
    iget v8, v6, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    if-eqz v8, :cond_b1

    .line 2351
    iget-object v9, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_req_state"

    invoke-virtual {v9, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_b1

    .line 2340
    :cond_89
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure saving state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has target not in fragment manager: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v2

    .line 2358
    :cond_ad
    iget-object v8, v6, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v8, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 2361
    :cond_b1
    :goto_b1
    sget-boolean v8, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v8, :cond_d1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Saved state of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroidx/fragment/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d1
    move v5, v0

    goto/16 :goto_2d

    .line 2324
    :cond_d4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_ef
    if-nez v5, :cond_fb

    .line 2367
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_fa

    const-string p0, "saveAllState: no fragments!"

    invoke-static {v10, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_fa
    return-object v2

    .line 2375
    :cond_fb
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_161

    .line 2377
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2378
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10e
    :goto_10e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_162

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 2379
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2380
    iget-object v6, v5, Landroidx/fragment/app/Fragment;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    if-ne v6, p0, :cond_146

    .line 2385
    sget-boolean v6, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_10e

    .line 2386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveAllState: adding fragment ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v5, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "): "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 2381
    :cond_146
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V

    throw v2

    :cond_161
    move-object v1, v2

    .line 2393
    :cond_162
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_1a6

    .line 2394
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1a6

    .line 2396
    new-array v2, v0, [Landroidx/fragment/app/BackStackState;

    :goto_16e
    if-ge v4, v0, :cond_1a6

    .line 2398
    new-instance v5, Landroidx/fragment/app/BackStackState;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v5, v6}, Landroidx/fragment/app/BackStackState;-><init>(Landroidx/fragment/app/BackStackRecord;)V

    aput-object v5, v2, v4

    .line 2399
    sget-boolean v5, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_1a3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 2400
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2399
    invoke-static {v10, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_16e

    .line 2405
    :cond_1a6
    new-instance v0, Landroidx/fragment/app/FragmentManagerState;

    invoke-direct {v0}, Landroidx/fragment/app/FragmentManagerState;-><init>()V

    .line 2406
    iput-object v3, v0, Landroidx/fragment/app/FragmentManagerState;->mActive:Ljava/util/ArrayList;

    .line 2407
    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mAdded:Ljava/util/ArrayList;

    .line 2408
    iput-object v2, v0, Landroidx/fragment/app/FragmentManagerState;->mBackStack:[Landroidx/fragment/app/BackStackState;

    .line 2409
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1b9

    .line 2410
    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v1, v0, Landroidx/fragment/app/FragmentManagerState;->mPrimaryNavActiveWho:Ljava/lang/String;

    .line 2412
    :cond_1b9
    iget p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mNextFragmentIndex:I

    iput p0, v0, Landroidx/fragment/app/FragmentManagerState;->mNextFragmentIndex:I

    return-object v0
.end method

.method saveFragmentBasicState(Landroidx/fragment/app/Fragment;)Landroid/os/Bundle;
    .registers 4

    .line 2273
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 2274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2276
    :cond_b
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 2277
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 2278
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 2279
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 2280
    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    goto :goto_25

    :cond_24
    move-object v0, v1

    .line 2283
    :goto_25
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2c

    .line 2284
    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->saveFragmentViewState(Landroidx/fragment/app/Fragment;)V

    .line 2286
    :cond_2c
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz p0, :cond_3f

    if-nez v0, :cond_38

    .line 2288
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    .line 2290
    :cond_38
    iget-object p0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 2293
    :cond_3f
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p0, :cond_52

    if-nez v0, :cond_4b

    .line 2295
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    move-object v0, p0

    .line 2298
    :cond_4b
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string p1, "android:user_visible_hint"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_52
    return-object v0
.end method

.method saveFragmentViewState(Landroidx/fragment/app/Fragment;)V
    .registers 4

    .line 2255
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_5

    return-void

    .line 2258
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_11

    .line 2259
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_14

    .line 2261
    :cond_11
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2263
    :goto_14
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2264
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 2265
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 2266
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :cond_2a
    return-void
.end method

.method scheduleCommit()V
    .registers 5

    .line 1574
    monitor-enter p0

    .line 1575
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;

    .line 1576
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    .line 1577
    :goto_12
    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_1f

    iget-object v3, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1f

    move v1, v2

    :cond_1f
    if-nez v0, :cond_23

    if-eqz v1, :cond_3c

    .line 1579
    :cond_23
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1580
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1581
    invoke-direct {p0}, Landroidx/fragment/app/FragmentManagerImpl;->updateOnBackPressedCallbackEnabled()V

    .line 1583
    :cond_3c
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public setBackStackIndex(ILandroidx/fragment/app/BackStackRecord;)V
    .registers 7

    .line 1607
    monitor-enter p0

    .line 1608
    :try_start_1
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1611
    :cond_c
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3c

    .line 1613
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :cond_36
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_3c
    :goto_3c
    if-ge v0, p1, :cond_75

    .line 1617
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1618
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_4f

    .line 1619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1621
    :cond_4f
    sget-boolean v1, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_69

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding available back stack index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    :cond_69
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 1625
    :cond_75
    sget-boolean v0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_97

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    :cond_97
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1628
    :goto_9c
    monitor-exit p0

    return-void

    :catchall_9e
    move-exception p1

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_1 .. :try_end_a0} :catchall_9e

    throw p1
.end method

.method public setMaxLifecycle(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/Lifecycle$State;)V
    .registers 5

    .line 2814
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_14

    .line 2815
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_17

    .line 2819
    :cond_14
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Landroidx/lifecycle/Lifecycle$State;

    return-void

    .line 2816
    :cond_17
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setPrimaryNavigationFragment(Landroidx/fragment/app/Fragment;)V
    .registers 5

    if-eqz p1, :cond_36

    .line 2782
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_17

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    if-eqz v0, :cond_36

    .line 2783
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-ne v0, p0, :cond_17

    goto :goto_36

    .line 2784
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2787
    :cond_36
    :goto_36
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2788
    iput-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    .line 2789
    invoke-direct {p0, v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    .line 2790
    iget-object p1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mPrimaryNav:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOnParentPrimaryNavigationFragmentChanged(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public showFragment(Landroidx/fragment/app/Fragment;)V
    .registers 3

    .line 1426
    sget-boolean p0, Landroidx/fragment/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p0, :cond_1b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "show: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    :cond_1b
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p0, :cond_28

    const/4 p0, 0x0

    .line 1428
    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1431
    iget-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_28
    return-void
.end method

.method startPendingDeferredFragments()V
    .registers 3

    .line 1313
    iget-object v0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mActive:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_a

    .line 1315
    invoke-virtual {p0, v1}, Landroidx/fragment/app/FragmentManagerImpl;->performPendingDeferredStart(Landroidx/fragment/app/Fragment;)V

    goto :goto_a

    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    iget-object v1, p0, Landroidx/fragment/app/FragmentManagerImpl;->mParent:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_24

    .line 463
    invoke-static {v1, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_29

    .line 465
    :cond_24
    iget-object p0, p0, Landroidx/fragment/app/FragmentManagerImpl;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-static {p0, v0}, Landroidx/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    :goto_29
    const-string/jumbo p0, "}}"

    .line 467
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
