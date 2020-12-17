.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/arch/lifecycle/LifecycleOwner;
.implements Landroid/arch/lifecycle/ViewModelStoreOwner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$AnimationInfo;,
        Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;,
        Landroid/support/v4/app/Fragment$InstantiationException;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsCreated:Z

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field mMenuVisible:Z

.field mParentFragment:Landroid/support/v4/app/Fragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedUserVisibleHint:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

.field mViewLifecycleOwnerLiveData:Landroid/arch/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/MutableLiveData<",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, -0x1

    .line 109
    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 121
    iput v0, p0, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 219
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 248
    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 254
    new-instance v0, Landroid/arch/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroid/arch/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwnerLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$800(Landroid/support/v4/app/Fragment;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->callStartTransitionListener()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v4/app/Fragment;)Landroid/arch/lifecycle/LifecycleRegistry;
    .registers 1

    .line 85
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method static synthetic access$902(Landroid/support/v4/app/Fragment;Landroid/arch/lifecycle/LifecycleRegistry;)Landroid/arch/lifecycle/LifecycleRegistry;
    .registers 2

    .line 85
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object p1
.end method

.method private callStartTransitionListener()V
    .registers 3

    .line 2261
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_e

    :cond_6
    const/4 v1, 0x0

    .line 2264
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    .line 2265
    iget-object v1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    .line 2266
    iput-object v0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    move-object v0, v1

    :goto_e
    if-eqz v0, :cond_13

    .line 2269
    invoke-interface {v0}, Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    :cond_13
    return-void
.end method

.method private ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;
    .registers 2

    .line 2735
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_b

    .line 2736
    new-instance v0, Landroid/support/v4/app/Fragment$AnimationInfo;

    invoke-direct {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2738
    :cond_b
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    const/4 v0, 0x0

    .line 406
    invoke-static {p0, p1, v0}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 8
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, " empty constructor that is public"

    const-string v1, ": make sure class name exists, is public, and has an"

    const-string v2, "Unable to instantiate fragment "

    .line 425
    :try_start_6
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    if-nez v3, :cond_1d

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 429
    sget-object p0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p0, p1, v3}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    const/4 p0, 0x0

    new-array v4, p0, [Ljava/lang/Class;

    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array p0, p0, [Ljava/lang/Object;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_3c

    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 434
    invoke-virtual {p0, p2}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_3c} :catch_ab
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_3c} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_3c} :catch_73
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_3c} :catch_58
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_3c} :catch_3d

    :cond_3c
    return-object p0

    :catch_3d
    move-exception p0

    .line 453
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_58
    move-exception p0

    .line 450
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_73
    move-exception p0

    .line 446
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_8f
    move-exception p0

    .line 442
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_ab
    move-exception p0

    .line 438
    new-instance p2, Landroid/support/v4/app/Fragment$InstantiationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3

    .line 468
    :try_start_0
    sget-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_17

    .line 471
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 472
    sget-object p0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_17
    const-class p0, Landroid/support/v4/app/Fragment;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 2283
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2284
    iget v0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2285
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2286
    iget v0, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2287
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mIndex="

    .line 2289
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2290
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2291
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2292
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2293
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2294
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2295
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2296
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2297
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2298
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2299
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2300
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRetaining="

    .line 2301
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2302
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2303
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_dc

    .line 2304
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2305
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2307
    :cond_dc
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_ed

    .line 2308
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2309
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2311
    :cond_ed
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_fe

    .line 2312
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2313
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2315
    :cond_fe
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v0, :cond_10f

    .line 2316
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2318
    :cond_10f
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_120

    .line 2319
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2322
    :cond_120
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_131

    .line 2323
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2324
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2326
    :cond_131
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_14c

    .line 2327
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2328
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2329
    iget v0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2331
    :cond_14c
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    if-eqz v0, :cond_161

    .line 2332
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2334
    :cond_161
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_172

    .line 2335
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2337
    :cond_172
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_183

    .line 2338
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2340
    :cond_183
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v0, :cond_194

    .line 2341
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2343
    :cond_194
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b8

    .line 2344
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2345
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2346
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2347
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2348
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2349
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2351
    :cond_1b8
    invoke-static {p0}, Landroid/support/v4/app/LoaderManager;->getInstance(Landroid/arch/lifecycle/LifecycleOwner;)Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/LoaderManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2352
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1f7

    .line 2353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_1f7
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    .line 510
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .registers 3

    .line 2359
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    .line 2362
    :cond_9
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_12

    .line 2363
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 695
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_c

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    :goto_c
    return-object p0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    .line 2168
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$600(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    :cond_b
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2169
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$600(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    .line 2193
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-eqz v0, :cond_16

    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$700(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_16

    :cond_b
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2194
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$700(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 p0, 0x1

    :goto_17
    return p0
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 1

    .line 2793
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2796
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object p0
.end method

.method getAnimator()Landroid/animation/Animator;
    .registers 1

    .line 2808
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2811
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object p0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 577
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-object p0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 829
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_2c

    .line 830
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 831
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_12

    .line 832
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    goto :goto_2c

    :cond_12
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1b

    .line 834
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_2c

    :cond_1b
    const/4 v1, 0x2

    if-lt v0, v1, :cond_24

    .line 836
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_2c

    :cond_24
    const/4 v1, 0x1

    if-lt v0, v1, :cond_2c

    .line 838
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 841
    :cond_2c
    :goto_2c
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 668
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1951
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1954
    :cond_6
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$000(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
    .registers 1

    .line 2779
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2782
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-object p0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2030
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2033
    :cond_6
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$200(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
    .registers 1

    .line 2786
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2789
    :cond_6
    iget-object p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-object p0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 797
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method public final getHost()Ljava/lang/Object;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 722
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public final getId()I
    .registers 1

    .line 546
    iget p0, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    return p0
.end method

.method public final getLayoutInflater()Landroid/view/LayoutInflater;
    .registers 2

    .line 1277
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    .line 1278
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    :cond_a
    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1311
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz p1, :cond_14

    .line 1315
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1316
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    .line 1317
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    invoke-static {p1, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 1312
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .registers 1

    .line 258
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1050
    invoke-static {p0}, Landroid/support/v4/app/LoaderManager;->getInstance(Landroid/arch/lifecycle/LifecycleOwner;)Landroid/support/v4/app/LoaderManager;

    move-result-object p0

    return-object p0
.end method

.method getNextAnim()I
    .registers 1

    .line 2742
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2745
    :cond_6
    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    return p0
.end method

.method getNextTransition()I
    .registers 1

    .line 2756
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2759
    :cond_6
    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    return p0
.end method

.method getNextTransitionStyle()I
    .registers 1

    .line 2772
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2775
    :cond_6
    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return p0
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 859
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .registers 3

    .line 2068
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2071
    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$300(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_19

    :cond_13
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2072
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$300(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 745
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final getRetainInstance()Z
    .registers 1

    .line 967
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return p0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1990
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1993
    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$100(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_19

    :cond_13
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 1994
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$100(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2101
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2104
    :cond_6
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$400(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 2139
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 2142
    :cond_6
    invoke-static {v0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$500(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v0, v1, :cond_13

    .line 2143
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    goto :goto_19

    :cond_13
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2144
    invoke-static {p0}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$500(Landroid/support/v4/app/Fragment$AnimationInfo;)Ljava/lang/Object;

    move-result-object p0

    :goto_19
    return-object p0
.end method

.method getStateAfterAnimating()I
    .registers 1

    .line 2815
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2818
    :cond_6
    iget p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return p0
.end method

.method public final getString(I)Ljava/lang/String;
    .registers 2
    .param p1  # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 767
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1  # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 780
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 554
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 651
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method public final getTargetRequestCode()I
    .registers 1

    .line 658
    iget p0, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return p0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .registers 2
    .param p1  # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 756
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getUserVisibleHint()Z
    .registers 1

    .line 1039
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    return p0
.end method

.method public getView()Landroid/view/View;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1562
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method public getViewLifecycleOwner()Landroid/arch/lifecycle/LifecycleOwner;
    .registers 2
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 296
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    if-eqz p0, :cond_5

    return-object p0

    .line 297
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getViewLifecycleOwnerLiveData()Landroid/arch/lifecycle/LiveData;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/lifecycle/LiveData<",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .line 314
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwnerLiveData:Landroid/arch/lifecycle/MutableLiveData;

    return-object p0
.end method

.method public getViewModelStore()Landroid/arch/lifecycle/ViewModelStore;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 320
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 323
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    if-nez v0, :cond_11

    .line 324
    new-instance v0, Landroid/arch/lifecycle/ViewModelStore;

    invoke-direct {v0}, Landroid/arch/lifecycle/ViewModelStore;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    .line 326
    :cond_11
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    return-object p0

    .line 321
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasOptionsMenu()Z
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 930
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    return p0
.end method

.method public final hashCode()I
    .registers 1

    .line 517
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method initState()V
    .registers 3

    const/4 v0, -0x1

    .line 1733
    iput v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v0, 0x0

    .line 1734
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    const/4 v1, 0x0

    .line 1735
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1736
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1737
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 1738
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1739
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 1740
    iput v1, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1741
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1742
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1743
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1744
    iput v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 1745
    iput v1, p0, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1746
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 1747
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1748
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1749
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    .line 2369
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_18

    .line 2372
    new-instance v0, Landroid/support/v4/app/FragmentManagerImpl;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 2373
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    new-instance v2, Landroid/support/v4/app/Fragment$2;

    invoke-direct {v2, p0}, Landroid/support/v4/app/Fragment$2;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    return-void

    .line 2370
    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment has not been attached yet."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isAdded()Z
    .registers 2

    .line 866
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isDetached()Z
    .registers 1

    .line 875
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mDetached:Z

    return p0
.end method

.method public final isHidden()Z
    .registers 1

    .line 924
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    return p0
.end method

.method isHideReplaced()Z
    .registers 1

    .line 2833
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2836
    :cond_6
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return p0
.end method

.method final isInBackStack()Z
    .registers 1

    .line 503
    iget p0, p0, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isInLayout()Z
    .registers 1

    .line 895
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mInLayout:Z

    return p0
.end method

.method public final isMenuVisible()Z
    .registers 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 936
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    return p0
.end method

.method isPostponed()Z
    .registers 1

    .line 2826
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 2829
    :cond_6
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return p0
.end method

.method public final isRemoving()Z
    .registers 1

    .line 884
    iget-boolean p0, p0, Landroid/support/v4/app/Fragment;->mRemoving:Z

    return p0
.end method

.method public final isResumed()Z
    .registers 2

    .line 903
    iget p0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x5

    if-lt p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public final isStateSaved()Z
    .registers 1

    .line 589
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 592
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->isStateSaved()Z

    move-result p0

    return p0
.end method

.method public final isVisible()Z
    .registers 2

    .line 912
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_20

    .line 913
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_20

    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method

.method noteStateNotSaved()V
    .registers 1

    .line 2501
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_7

    .line 2502
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_7
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1580
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1420
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1403
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1404
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 1406
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1407
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    :cond_15
    return-void
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1667
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1481
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1482
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 1483
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p1, :cond_15

    .line 1484
    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->isStateAtLeast(I)Z

    move-result p1

    if-nez p1, :cond_15

    .line 1485
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_15
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 4

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 4

    .line 1855
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4
    .param p1  # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1719
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1721
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mViewModelStore:Landroid/arch/lifecycle/ViewModelStore;

    if-eqz v0, :cond_12

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    iget-object p0, p0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-boolean p0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez p0, :cond_12

    .line 1722
    invoke-virtual {v0}, Landroid/arch/lifecycle/ViewModelStore;->clear()V

    :cond_12
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    return-void
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1707
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1708
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    .line 1709
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_e
    return-void
.end method

.method public onDetach()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1758
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1262
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1382
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1365
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1366
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object p1

    :goto_d
    if-eqz p1, :cond_15

    const/4 v0, 0x0

    .line 1368
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1369
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_15
    return-void
.end method

.method public onLowMemory()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1693
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1677
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2  # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1620
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onStart()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1609
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onStop()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    .line 1687
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 p1, 0x1

    .line 1596
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1597
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_e

    .line 1598
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object p1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_e
    return-void
.end method

.method peekChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 850
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-object p0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 2442
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_7

    .line 2443
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_7
    const/4 v0, 0x2

    .line 2445
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2446
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2447
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 2448
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_1c

    .line 2452
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_1b

    .line 2453
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    :cond_1b
    return-void

    .line 2449
    :cond_1c
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 2521
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2522
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_a

    .line 2523
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_a
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 2588
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_17

    .line 2589
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 2592
    :cond_c
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_17

    .line 2593
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_17

    return v1

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 2396
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_7

    .line 2397
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_7
    const/4 v0, 0x1

    .line 2399
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x0

    .line 2400
    iput-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2401
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2402
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    .line 2403
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_1e

    .line 2407
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object p1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void

    .line 2404
    :cond_1e
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onCreate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    .line 2545
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 2546
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 2548
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    move v1, v0

    .line 2550
    :cond_12
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_1b

    .line 2551
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1b
    return v1
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 5
    .param p1  # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2412
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_7

    .line 2413
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    :cond_7
    const/4 v0, 0x1

    .line 2415
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    .line 2416
    new-instance v0, Landroid/support/v4/app/Fragment$3;

    invoke-direct {v0, p0}, Landroid/support/v4/app/Fragment$3;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    const/4 v0, 0x0

    .line 2425
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 2426
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 2427
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_2b

    .line 2429
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    .line 2431
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwnerLiveData:Landroid/arch/lifecycle/MutableLiveData;

    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_31

    .line 2433
    :cond_2b
    iget-object p1, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    if-nez p1, :cond_32

    .line 2437
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleOwner:Landroid/arch/lifecycle/LifecycleOwner;

    :goto_31
    return-void

    .line 2434
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method performDestroy()V
    .registers 4

    .line 2680
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2681
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2682
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    :cond_e
    const/4 v0, 0x0

    .line 2684
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    .line 2685
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2686
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    .line 2687
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2688
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    .line 2692
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    return-void

    .line 2689
    :cond_20
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroy()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .registers 4

    .line 2661
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_7

    .line 2662
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    :cond_7
    const/4 v0, 0x1

    .line 2664
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2665
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2666
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2667
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_1e

    .line 2675
    invoke-static {p0}, Landroid/support/v4/app/LoaderManager;->getInstance(Landroid/arch/lifecycle/LifecycleOwner;)Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManager;->markForRedelivery()V

    .line 2676
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mPerformedCreateView:Z

    return-void

    .line 2668
    :cond_1e
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDetach()V
    .registers 4

    const/4 v0, 0x0

    .line 2696
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2697
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2698
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 2699
    iget-boolean v1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_3d

    .line 2707
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_3c

    .line 2708
    iget-boolean v2, p0, Landroid/support/v4/app/Fragment;->mRetaining:Z

    if-eqz v2, :cond_1b

    .line 2712
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2713
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    goto :goto_3c

    .line 2709
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Child FragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was not "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_3c
    return-void

    .line 2700
    :cond_3d
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDetach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 2
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 1293
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1294
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 1295
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method performLowMemory()V
    .registers 1

    .line 2528
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2529
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_a

    .line 2530
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    :cond_a
    return-void
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 2

    .line 2507
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onMultiWindowModeChanged(Z)V

    .line 2508
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_a

    .line 2509
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    :cond_a
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 2572
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1f

    .line 2573
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_14

    .line 2574
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 2578
    :cond_14
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_1f

    .line 2579
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return v1

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    .line 2602
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_16

    .line 2603
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_f

    .line 2604
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2606
    :cond_f
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_16

    .line 2607
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_16
    return-void
.end method

.method performPause()V
    .registers 4

    .line 2623
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 2624
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2626
    :cond_b
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2627
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_19

    .line 2628
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    :cond_19
    const/4 v0, 0x4

    .line 2630
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2631
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2632
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2633
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_27

    return-void

    .line 2634
    :cond_27
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onPause()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 2

    .line 2514
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPictureInPictureModeChanged(Z)V

    .line 2515
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_a

    .line 2516
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    :cond_a
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    .line 2559
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHidden:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 2560
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    .line 2562
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    move v1, v0

    .line 2564
    :cond_12
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_1b

    .line 2565
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1b
    return v1
.end method

.method performReallyStop()V
    .registers 2

    .line 2654
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_7

    .line 2655
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    :cond_7
    const/4 v0, 0x2

    .line 2657
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    return-void
.end method

.method performResume()V
    .registers 4

    .line 2479
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2480
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2481
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_c
    const/4 v0, 0x5

    .line 2483
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2484
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2485
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2486
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_38

    .line 2490
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_25

    .line 2491
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 2492
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 2494
    :cond_25
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2495
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_37

    .line 2496
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_RESUME:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_37
    return-void

    .line 2487
    :cond_38
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onResume()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 2613
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2614
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz p0, :cond_12

    .line 2615
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string v0, "android:support:fragments"

    .line 2617
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_12
    return-void
.end method

.method performStart()V
    .registers 4

    .line 2458
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_c

    .line 2459
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2460
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    :cond_c
    const/4 v0, 0x4

    .line 2462
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2463
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2464
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 2465
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_33

    .line 2469
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_20

    .line 2470
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 2472
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2473
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_32

    .line 2474
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mViewLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    :cond_32
    return-void

    .line 2466
    :cond_33
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStart()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performStop()V
    .registers 4

    .line 2640
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mLifecycleRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 2641
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_e

    .line 2642
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    :cond_e
    const/4 v0, 0x3

    .line 2644
    iput v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v0, 0x0

    .line 2645
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2646
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2647
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1c

    return-void

    .line 2648
    :cond_1c
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStop()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public postponeEnterTransition()V
    .registers 2

    .line 2228
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .registers 2

    .line 1869
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .registers 4
    .param p1  # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1196
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_8

    .line 1199
    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void

    .line 1197
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requireActivity()Landroid/support/v4/app/FragmentActivity;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 707
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 709
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireContext()Landroid/content/Context;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 679
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 681
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireFragmentManager()Landroid/support/v4/app/FragmentManager;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 815
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 817
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not associated with a fragment manager."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final requireHost()Ljava/lang/Object;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 733
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 735
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a host."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 4
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_20

    const-string v0, "android:support:fragments"

    .line 1503
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1506
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v0, :cond_11

    .line 1507
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 1509
    :cond_11
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V

    const/4 p1, 0x0

    .line 1510
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;

    .line 1511
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    :cond_20
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 4

    .line 481
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_c

    .line 482
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_c
    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 486
    invoke-virtual {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 487
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz p1, :cond_17

    return-void

    .line 488
    :cond_17
    new-instance p1, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .registers 2

    .line 2156
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$602(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .registers 2

    .line 2181
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$702(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    return-void
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .registers 2

    .line 2800
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .registers 2

    .line 2804
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 565
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_13

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 566
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already active and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 568
    :cond_13
    :goto_13
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .line 1912
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1937
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$002(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .registers 2

    .line 1923
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2013
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$202(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .registers 3

    .line 978
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eq v0, p1, :cond_17

    .line 979
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 980
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_17

    .line 981
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_17
    return-void
.end method

.method setHideReplaced(Z)V
    .registers 2

    .line 2840
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput-boolean p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
    .registers 3

    .line 494
    iput p1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-eqz p2, :cond_1f

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_34

    .line 498
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android:fragment:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    :goto_34
    return-void
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .registers 3
    .param p1  # Landroid/support/v4/app/Fragment$SavedState;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 604
    iget v0, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_f

    if-eqz p1, :cond_b

    .line 607
    iget-object p1, p1, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz p1, :cond_b

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    .line 605
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already active"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMenuVisibility(Z)V
    .registers 3

    .line 996
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_1b

    .line 997
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 998
    iget-boolean p1, p0, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 999
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    :cond_1b
    return-void
.end method

.method setNextAnim(I)V
    .registers 3

    .line 2749
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_7

    if-nez p1, :cond_7

    return-void

    .line 2752
    :cond_7
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextAnim:I

    return-void
.end method

.method setNextTransition(II)V
    .registers 4

    .line 2763
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    if-nez v0, :cond_9

    if-nez p1, :cond_9

    if-nez p2, :cond_9

    return-void

    .line 2766
    :cond_9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2767
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iput p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransition:I

    .line 2768
    iput p2, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mNextTransitionStyle:I

    return-void
.end method

.method setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
    .registers 4

    .line 2718
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    .line 2719
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-object v0, v0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    if-ne p1, v0, :cond_a

    return-void

    :cond_a
    if-eqz p1, :cond_26

    if-nez v0, :cond_f

    goto :goto_26

    .line 2723
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2726
    :cond_26
    :goto_26
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mAnimationInfo:Landroid/support/v4/app/Fragment$AnimationInfo;

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-eqz v0, :cond_2e

    .line 2727
    iput-object p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStartEnterTransitionListener:Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;

    :cond_2e
    if-eqz p1, :cond_33

    .line 2730
    invoke-interface {p1}, Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;->startListening()V

    :cond_33
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2052
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$302(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setRetainInstance(Z)V
    .registers 2

    .line 963
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1973
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$102(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2087
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$402(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2122
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/support/v4/app/Fragment$AnimationInfo;->access$502(Landroid/support/v4/app/Fragment$AnimationInfo;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setStateAfterAnimating(I)V
    .registers 2

    .line 2822
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    iput p1, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .registers 5
    .param p1  # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 628
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    if-eqz p1, :cond_b

    .line 629
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v0, :cond_2f

    if-eqz v1, :cond_2f

    if-ne v0, v1, :cond_13

    goto :goto_2f

    .line 631
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    :goto_2f
    move-object v0, p1

    :goto_30
    if-eqz v0, :cond_5d

    if-eq v0, p0, :cond_39

    .line 636
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    goto :goto_30

    .line 638
    :cond_39
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " would create a target cycle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 642
    :cond_5d
    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 643
    iput p2, p0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 4

    .line 1021
    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1e

    if-eqz p1, :cond_1e

    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_1e

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_1e

    .line 1022
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Landroid/support/v4/app/Fragment;->mIsCreated:Z

    if-eqz v0, :cond_1e

    .line 1023
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 1025
    :cond_1e
    iput-boolean p1, p0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 1026
    iget v0, p0, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v0, v1, :cond_28

    if-nez p1, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iput-boolean v0, p0, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 1027
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_35

    .line 1030
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    :cond_35
    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 1245
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz p0, :cond_9

    .line 1246
    invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    const/4 v0, 0x0

    .line 1058
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 5
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1066
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_9

    const/4 v1, -0x1

    .line 1069
    invoke-virtual {v0, p0, p1, v1, p2}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1067
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .registers 4

    const/4 v0, 0x0

    .line 1077
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .registers 5
    .param p3  # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 1085
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_8

    .line 1088
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1086
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .registers 17
    .param p3  # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v1, p0

    .line 1098
    iget-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v0, :cond_12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 1101
    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/app/FragmentHostCallback;->onStartIntentSenderFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 1099
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    .line 2242
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v0, :cond_30

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v0, :cond_9

    goto :goto_30

    .line 2244
    :cond_9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2c

    .line 2245
    iget-object v0, p0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/support/v4/app/Fragment$1;

    invoke-direct {v1, p0}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_37

    .line 2252
    :cond_2c
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->callStartTransitionListener()V

    goto :goto_37

    .line 2243
    :cond_30
    :goto_30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;->ensureAnimationInfo()Landroid/support/v4/app/Fragment$AnimationInfo;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/Fragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 523
    invoke-static {p0, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 524
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v1, :cond_18

    const-string v1, " #"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget v1, p0, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 528
    :cond_18
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v1, :cond_2a

    const-string v1, " id=0x"

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget v1, p0, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_2a
    iget-object v1, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_38

    const-string v1, " "

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object p0, p0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    const/16 p0, 0x7d

    .line 536
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .registers 2

    const/4 p0, 0x0

    .line 1880
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method
