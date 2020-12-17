.class public Lflyme/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroidx/core/internal/view/SupportMenu;
.implements Lflyme/support/v7/view/menu/FMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/view/menu/MenuBuilder$ItemInvoker;,
        Lflyme/support/v7/view/menu/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mOverrideVisibleItems:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lflyme/support/v7/view/menu/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 65
    fill-array-data v0, :array_a

    sput-object v0, Lflyme/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    .line 163
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 165
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 167
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    .line 169
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 173
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 234
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 239
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 240
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 244
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 246
    invoke-direct {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V

    return-void
.end method

.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 16

    .line 471
    new-instance v8, Lflyme/support/v7/view/menu/MenuItemImpl;

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lflyme/support/v7/view/menu/MenuItemImpl;-><init>(Lflyme/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    return-object v8
.end method

.method private dispatchPresenterUpdate(Z)V
    .registers 5

    .line 295
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 297
    :cond_9
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 298
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 299
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuPresenter;

    if-nez v2, :cond_2c

    .line 301
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_12

    .line 303
    :cond_2c
    invoke-interface {v2, p1}, Lflyme/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V

    goto :goto_12

    .line 306
    :cond_30
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    return-void
.end method

.method private dispatchSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;Lflyme/support/v7/view/menu/MenuPresenter;)Z
    .registers 6

    .line 311
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    if-eqz p2, :cond_10

    .line 317
    invoke-interface {p2, p1}, Lflyme/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v1

    .line 320
    :cond_10
    iget-object p2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_16
    :goto_16
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 321
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuPresenter;

    if-nez v2, :cond_30

    .line 323
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_30
    if-nez v1, :cond_16

    .line 325
    invoke-interface {v2, p1}, Lflyme/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;)Z

    move-result v0

    move v1, v0

    goto :goto_16

    :cond_38
    return v1
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .line 855
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 856
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 857
    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getOrdering()I

    move-result v1

    if-gt v1, p1, :cond_17

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method private static getOrdering(I)I
    .registers 4

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    if-ltz v0, :cond_16

    .line 778
    sget-object v1, Lflyme/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 782
    aget v0, v1, v0

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 779
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "order does not contain a valid category."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private removeItemAtInt(IZ)V
    .registers 4

    if-ltz p1, :cond_16

    .line 581
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_16

    .line 583
    :cond_b
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_16

    const/4 p1, 0x1

    .line 585
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_16
    :goto_16
    return-void
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .registers 8

    .line 1215
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p5, :cond_e

    .line 1218
    iput-object p5, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1221
    iput-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1222
    iput-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2e

    :cond_e
    if-lez p1, :cond_17

    .line 1225
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1b

    :cond_17
    if-eqz p2, :cond_1b

    .line 1227
    iput-object p2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    :cond_1b
    :goto_1b
    if-lez p3, :cond_28

    .line 1231
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2c

    :cond_28
    if-eqz p4, :cond_2c

    .line 1233
    iput-object p4, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1237
    :cond_2c
    :goto_2c
    iput-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    :goto_2e
    const/4 p1, 0x0

    .line 1241
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method private setShortcutsVisibleInner(Z)V
    .registers 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    .line 809
    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 810
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p1, v0, :cond_1c

    iget-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    .line 811
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lflyme/support/v7/view/menu/MenuBuilder;->shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return-void
.end method

.method public static shouldShowMenuShortcutsWhenKeyboardPresent(Landroid/view/ViewConfiguration;Landroid/content/Context;)Z
    .registers 2
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .registers 3

    .line 481
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .registers 6

    .line 491
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lflyme/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 5

    .line 486
    invoke-virtual {p0, p1, p2, p3, p4}, Lflyme/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3

    const/4 v0, 0x0

    .line 476
    invoke-virtual {p0, v0, v0, v0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 16

    .line 521
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 523
    invoke-virtual {v0, p4, p5, p6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_12

    .line 524
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_13

    :cond_12
    move v2, v1

    :goto_13
    and-int/lit8 p7, p7, 0x1

    if-nez p7, :cond_1a

    .line 527
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->removeGroup(I)V

    :cond_1a
    :goto_1a
    if-ge v1, v2, :cond_60

    .line 531
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Landroid/content/pm/ResolveInfo;

    .line 532
    new-instance v3, Landroid/content/Intent;

    iget v4, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v4, :cond_2a

    move-object v4, p6

    goto :goto_2c

    :cond_2a
    aget-object v4, p5, v4

    :goto_2c
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 534
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 537
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, p1, p2, p3, v4}, Lflyme/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    .line 538
    invoke-virtual {p7, v0}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v4

    .line 539
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz p8, :cond_5d

    .line 540
    iget p7, p7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz p7, :cond_5d

    .line 541
    aput-object v3, p8, p7

    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_60
    return v2
.end method

.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 13

    .line 452
    invoke-static {p3}, Lflyme/support/v7/view/menu/MenuBuilder;->getOrdering(I)I

    move-result v7

    .line 454
    iget v6, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p1

    .line 457
    iget-object p2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz p2, :cond_17

    .line 459
    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 462
    :cond_17
    iget-object p2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {p2, v7}, Lflyme/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p2, 0x1

    .line 463
    invoke-virtual {p0, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-object p1
.end method

.method public addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V
    .registers 3

    .line 261
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V

    return-void
.end method

.method public addMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
    .registers 5

    .line 274
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {p1, p2, p0}, Lflyme/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;)V

    const/4 p1, 0x1

    .line 276
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .registers 3

    .line 501
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6

    .line 515
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lflyme/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 5

    .line 506
    invoke-virtual {p0, p1, p2, p3, p4}, Lflyme/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 507
    new-instance p2, Lflyme/support/v7/view/menu/SubMenuBuilder;

    iget-object p3, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3, p0, p1}, Lflyme/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)V

    .line 508
    invoke-virtual {p1, p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->setSubMenu(Lflyme/support/v7/view/menu/SubMenuBuilder;)V

    return-object p2
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3

    const/4 v0, 0x0

    .line 496
    invoke-virtual {p0, v0, v0, v0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object p0

    return-object p0
.end method

.method public changeMenuMode()V
    .registers 2

    .line 849
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz v0, :cond_7

    .line 850
    invoke-interface {v0, p0}, Lflyme/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Lflyme/support/v7/view/menu/MenuBuilder;)V

    :cond_7
    return-void
.end method

.method public clear()V
    .registers 2

    .line 603
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_7

    .line 604
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    .line 606
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x1

    .line 608
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public clearHeader()V
    .registers 2

    const/4 v0, 0x0

    .line 1206
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1207
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1208
    iput-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    const/4 v0, 0x0

    .line 1210
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 1044
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    return-void
.end method

.method public final close(Z)V
    .registers 5

    .line 1028
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 1030
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    .line 1031
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1032
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuPresenter;

    if-nez v2, :cond_28

    .line 1034
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_e

    .line 1036
    :cond_28
    invoke-interface {v2, p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter;->onCloseMenu(Lflyme/support/v7/view/menu/MenuBuilder;Z)V

    goto :goto_e

    :cond_2c
    const/4 p1, 0x0

    .line 1039
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsClosing:Z

    return-void
.end method

.method public collapseItemActionView(Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1368
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eq v0, p1, :cond_e

    goto :goto_3f

    .line 1372
    :cond_e
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1373
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1374
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/MenuPresenter;

    if-nez v3, :cond_31

    .line 1376
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_17

    .line 1377
    :cond_31
    invoke-interface {v3, p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 1381
    :cond_37
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_3f

    const/4 p1, 0x0

    .line 1384
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    :cond_3f
    :goto_3f
    return v1
.end method

.method dispatchMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 3

    .line 842
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Lflyme/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public expandItemActionView(Lflyme/support/v7/view/menu/MenuItemImpl;)Z
    .registers 6

    .line 1346
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 1350
    :cond_a
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1351
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 1352
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/MenuPresenter;

    if-nez v3, :cond_2d

    .line 1354
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1355
    :cond_2d
    invoke-interface {v3, p0, p1}, Lflyme/support/v7/view/menu/MenuPresenter;->expandItemActionView(Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1359
    :cond_33
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V

    if-eqz v1, :cond_3a

    .line 1362
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    :cond_3a
    return v1
.end method

.method public findGroupIndex(I)I
    .registers 3

    const/4 v0, 0x0

    .line 721
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I

    move-result p0

    return p0
.end method

.method public findGroupIndex(II)I
    .registers 5

    .line 725
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    if-gez p2, :cond_7

    const/4 p2, 0x0

    :cond_7
    :goto_7
    if-ge p2, v0, :cond_1b

    .line 732
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 734
    invoke-virtual {v1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, p1, :cond_18

    return p2

    :cond_18
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_1b
    const/4 p0, -0x1

    return p0
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .registers 6

    .line 690
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2a

    .line 692
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 693
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    return-object v2

    .line 695
    :cond_16
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 696
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-eqz v2, :cond_27

    return-object v2

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2a
    const/4 p0, 0x0

    return-object p0
.end method

.method public findItemIndex(I)I
    .registers 5

    .line 708
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_19

    .line 711
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 712
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    if-ne v2, p1, :cond_16

    return v1

    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_19
    const/4 p0, -0x1

    return p0
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 13

    .line 934
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 936
    invoke-virtual {p0, v0, p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 938
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    return-object v2

    .line 942
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 943
    new-instance v3, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v3}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 945
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 948
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_2b

    .line 950
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lflyme/support/v7/view/menu/MenuItemImpl;

    return-object p0

    .line 953
    :cond_2b
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result p0

    move v4, v5

    :goto_30
    if-ge v4, p2, :cond_66

    .line 957
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lflyme/support/v7/view/menu/MenuItemImpl;

    if-eqz p0, :cond_3f

    .line 958
    invoke-virtual {v6}, Lflyme/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    goto :goto_43

    .line 959
    :cond_3f
    invoke-virtual {v6}, Lflyme/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    .line 960
    :goto_43
    iget-object v8, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v8, v8, v5

    if-ne v7, v8, :cond_4d

    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_62

    :cond_4d
    iget-object v8, v3, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-ne v7, v8, :cond_58

    and-int/lit8 v8, v1, 0x2

    if-nez v8, :cond_62

    :cond_58
    if-eqz p0, :cond_63

    const/16 v8, 0x8

    if-ne v7, v8, :cond_63

    const/16 v7, 0x43

    if-ne p1, v7, :cond_63

    :cond_62
    return-object v6

    :cond_63
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    :cond_66
    return-object v2
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .line 890
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    .line 891
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    .line 892
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 894
    invoke-virtual {p3, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v3

    const/16 v4, 0x43

    if-nez v3, :cond_18

    if-eq p2, v4, :cond_18

    return-void

    .line 901
    :cond_18
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v6, v5

    :goto_20
    if-ge v6, v3, :cond_69

    .line 903
    iget-object v7, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 904
    invoke-virtual {v7}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_39

    .line 905
    invoke-virtual {v7}, Lflyme/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lflyme/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lflyme/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    :cond_39
    if-eqz v0, :cond_40

    .line 907
    invoke-virtual {v7}, Lflyme/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v8

    goto :goto_44

    :cond_40
    invoke-virtual {v7}, Lflyme/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C

    move-result v8

    :goto_44
    and-int/lit8 v9, v1, 0x5

    if-nez v9, :cond_66

    if-eqz v8, :cond_66

    .line 908
    iget-object v9, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v10, v9, v5

    if-eq v8, v10, :cond_5d

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_5d

    if-eqz v0, :cond_66

    const/16 v9, 0x8

    if-ne v8, v9, :cond_66

    if-ne p2, v4, :cond_66

    .line 914
    :cond_5d
    invoke-virtual {v7}, Lflyme/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_66

    .line 915
    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_66
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_69
    return-void
.end method

.method public flagActionItems()V
    .registers 7

    .line 1156
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 1158
    iget-boolean v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v1, :cond_9

    return-void

    .line 1164
    :cond_9
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 1165
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lflyme/support/v7/view/menu/MenuPresenter;

    if-nez v5, :cond_2b

    .line 1167
    iget-object v5, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_11

    .line 1169
    :cond_2b
    invoke-interface {v5}, Lflyme/support/v7/view/menu/MenuPresenter;->flagActionItems()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_11

    :cond_31
    if-eqz v3, :cond_5e

    .line 1174
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1175
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1176
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_42
    if-ge v3, v1, :cond_71

    .line 1178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 1179
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v5

    if-eqz v5, :cond_56

    .line 1180
    iget-object v5, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 1182
    :cond_56
    iget-object v5, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5b
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 1188
    :cond_5e
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1189
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1190
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1192
    :cond_71
    iput-boolean v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    return-void
.end method

.method public getActionItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1196
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1197
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .registers 1

    const-string p0, "android:menu:actionviewstates"

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 838
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getExpandedItem()Lflyme/support/v7/view/menu/MenuItemImpl;
    .registers 1

    .line 1390
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mExpandedItem:Lflyme/support/v7/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 1309
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 1305
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getHeaderView()Landroid/view/View;
    .registers 1

    .line 1313
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .registers 2

    .line 749
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/MenuItem;

    return-object p0
.end method

.method public getNonActionItems()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1201
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->flagActionItems()V

    .line 1202
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method getOptionalIconsVisible()Z
    .registers 1

    .line 1342
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z

    return p0
.end method

.method getResources()Landroid/content/res/Resources;
    .registers 1

    .line 834
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public getRootMenu()Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 1

    return-object p0
.end method

.method public getVisibleItems()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/view/menu/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .line 1111
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v0, :cond_7

    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object p0

    .line 1114
    :cond_7
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1116
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_14
    if-ge v2, v0, :cond_2c

    .line 1119
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 1120
    invoke-virtual {v3}, Lflyme/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1123
    :cond_2c
    iput-boolean v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    const/4 v0, 0x1

    .line 1124
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1126
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasVisibleItems()Z
    .registers 6

    .line 672
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 676
    :cond_6
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v0, :cond_20

    .line 679
    iget-object v4, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 680
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_20
    return v2
.end method

.method isQwertyMode()Z
    .registers 1

    .line 789
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    return p0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 3

    .line 754
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isShortcutsVisible()Z
    .registers 1

    .line 830
    iget-boolean p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z

    return p0
.end method

.method onItemActionRequestChanged(Lflyme/support/v7/view/menu/MenuItemImpl;)V
    .registers 2

    const/4 p1, 0x1

    .line 1106
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1107
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method onItemVisibleChanged(Lflyme/support/v7/view/menu/MenuItemImpl;)V
    .registers 2

    const/4 p1, 0x1

    .line 1095
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1096
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public onItemsChanged(Z)V
    .registers 4

    .line 1055
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    if-eqz p1, :cond_b

    .line 1057
    iput-boolean v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 1058
    iput-boolean v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z

    .line 1061
    :cond_b
    invoke-direct {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V

    goto :goto_11

    .line 1063
    :cond_f
    iput-boolean v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :goto_11
    return-void
.end method

.method public performIdentifierAction(II)Z
    .registers 3

    .line 975
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p0

    return p0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .registers 4

    const/4 v0, 0x0

    .line 979
    invoke-virtual {p0, p1, v0, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lflyme/support/v7/view/menu/MenuPresenter;I)Z

    move-result p0

    return p0
.end method

.method public performItemAction(Landroid/view/MenuItem;Lflyme/support/v7/view/menu/MenuPresenter;I)Z
    .registers 10

    .line 983
    check-cast p1, Lflyme/support/v7/view/menu/MenuItemImpl;

    const/4 v0, 0x0

    if-eqz p1, :cond_6d

    .line 985
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_6d

    .line 989
    :cond_c
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->invoke()Z

    move-result v1

    .line 991
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroidx/core/view/ActionProvider;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1f

    .line 992
    invoke-virtual {v2}, Landroidx/core/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1f

    move v4, v3

    goto :goto_20

    :cond_1f
    move v4, v0

    .line 993
    :goto_20
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 994
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->expandActionView()Z

    move-result p1

    or-int/2addr v1, p1

    if-eqz v1, :cond_6c

    .line 995
    invoke-virtual {p0, v3}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_6c

    .line 996
    :cond_31
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v5

    if-nez v5, :cond_42

    if-eqz v4, :cond_3a

    goto :goto_42

    :cond_3a
    and-int/lit8 p1, p3, 0x1

    if-nez p1, :cond_6c

    .line 1011
    invoke-virtual {p0, v3}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    goto :goto_6c

    .line 997
    :cond_42
    :goto_42
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    .line 999
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p3

    if-nez p3, :cond_57

    .line 1000
    new-instance p3, Lflyme/support/v7/view/menu/SubMenuBuilder;

    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p0, p1}, Lflyme/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Lflyme/support/v7/view/menu/MenuBuilder;Lflyme/support/v7/view/menu/MenuItemImpl;)V

    invoke-virtual {p1, p3}, Lflyme/support/v7/view/menu/MenuItemImpl;->setSubMenu(Lflyme/support/v7/view/menu/SubMenuBuilder;)V

    .line 1003
    :cond_57
    invoke-virtual {p1}, Lflyme/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/view/menu/SubMenuBuilder;

    if-eqz v4, :cond_62

    .line 1005
    invoke-virtual {v2, p1}, Landroidx/core/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 1007
    :cond_62
    invoke-direct {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Lflyme/support/v7/view/menu/SubMenuBuilder;Lflyme/support/v7/view/menu/MenuPresenter;)Z

    move-result p1

    or-int/2addr v1, p1

    if-nez v1, :cond_6c

    .line 1008
    invoke-virtual {p0, v3}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    :cond_6c
    :goto_6c
    return v1

    :cond_6d
    :goto_6d
    return v0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 4

    .line 867
    invoke-virtual {p0, p1, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lflyme/support/v7/view/menu/MenuItemImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 872
    invoke-virtual {p0, p1, p3}, Lflyme/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_14

    const/4 p2, 0x1

    .line 876
    invoke-virtual {p0, p2}, Lflyme/support/v7/view/menu/MenuBuilder;->close(Z)V

    :cond_14
    return p1
.end method

.method public removeGroup(I)V
    .registers 7

    .line 555
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    if-ltz v0, :cond_2a

    .line 558
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    add-int/lit8 v4, v3, 0x1

    if-ge v3, v1, :cond_26

    .line 560
    iget-object v3, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_26

    .line 562
    invoke-direct {p0, v0, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v4

    goto :goto_f

    :cond_26
    const/4 p1, 0x1

    .line 566
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2a
    return-void
.end method

.method public removeItem(I)V
    .registers 3

    .line 550
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V

    return-void
.end method

.method public removeMenuPresenter(Lflyme/support/v7/view/menu/MenuPresenter;)V
    .registers 5

    .line 286
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 287
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuPresenter;

    if-eqz v2, :cond_1c

    if-ne v2, p1, :cond_6

    .line 289
    :cond_1c
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_22
    return-void
.end method

.method public restoreActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    .line 416
    :cond_3
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v0

    .line 415
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 418
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_10
    if-ge v2, v1, :cond_38

    .line 420
    invoke-virtual {p0, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 421
    invoke-static {v3}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 422
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_26

    .line 423
    invoke-virtual {v4, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 425
    :cond_26
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 426
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/SubMenuBuilder;

    .line 427
    invoke-virtual {v3, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_38
    const-string v0, "android:menu:expandedactionview"

    .line 431
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_49

    .line 433
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_49

    .line 435
    invoke-static {p0}, Landroidx/core/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z

    :cond_49
    return-void
.end method

.method public saveActionViewStates(Landroid/os/Bundle;)V
    .registers 9

    .line 386
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_44

    .line 388
    invoke-virtual {p0, v2}, Lflyme/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 389
    invoke-static {v3}, Landroidx/core/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 390
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_32

    if-nez v1, :cond_20

    .line 392
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 394
    :cond_20
    invoke-virtual {v4, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 395
    invoke-static {v3}, Landroidx/core/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 396
    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    const-string v5, "android:menu:expandedactionview"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 399
    :cond_32
    invoke-interface {v3}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_41

    .line 400
    invoke-interface {v3}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lflyme/support/v7/view/menu/SubMenuBuilder;

    .line 401
    invoke-virtual {v3, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V

    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_44
    if-eqz v1, :cond_4d

    .line 406
    invoke-virtual {p0}, Lflyme/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_4d
    return-void
.end method

.method public setCallback(Lflyme/support/v7/view/menu/MenuBuilder$Callback;)V
    .registers 2

    .line 445
    iput-object p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mCallback:Lflyme/support/v7/view/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setDefaultShowAsAction(I)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 2

    .line 250
    iput p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I

    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .registers 8

    .line 612
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v0

    .line 614
    iget-object v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_35

    .line 616
    iget-object v4, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 617
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, v0, :cond_32

    .line 618
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v5

    if-nez v5, :cond_23

    goto :goto_32

    .line 619
    :cond_23
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->isCheckable()Z

    move-result v5

    if-nez v5, :cond_2a

    goto :goto_32

    :cond_2a
    if-ne v4, p1, :cond_2e

    const/4 v5, 0x1

    goto :goto_2f

    :cond_2e
    move v5, v2

    .line 622
    :goto_2f
    invoke-virtual {v4, v5}, Lflyme/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V

    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_35
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .registers 8

    .line 629
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_20

    .line 632
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 633
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1d

    .line 634
    invoke-virtual {v2, p3}, Lflyme/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 635
    invoke-virtual {v2, p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_20
    return-void
.end method

.method public setGroupDividerEnabled(Z)V
    .registers 2

    return-void
.end method

.method public setGroupEnabled(IZ)V
    .registers 7

    .line 660
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1d

    .line 663
    iget-object v2, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 664
    invoke-virtual {v2}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 665
    invoke-virtual {v2, p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_1d
    return-void
.end method

.method public setGroupVisible(IZ)V
    .registers 9

    .line 642
    iget-object v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    const/4 v3, 0x1

    if-ge v1, v0, :cond_23

    .line 649
    iget-object v4, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lflyme/support/v7/view/menu/MenuItemImpl;

    .line 650
    invoke-virtual {v4}, Lflyme/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v5

    if-ne v5, p1, :cond_20

    .line 651
    invoke-virtual {v4, p2}, Lflyme/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_20

    move v2, v3

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_23
    if-eqz v2, :cond_28

    .line 655
    invoke-virtual {p0, v3}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_28
    return-void
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    .line 1276
    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1252
    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lflyme/support/v7/view/menu/MenuBuilder;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p1

    .line 1300
    invoke-direct/range {v0 .. v5}, Lflyme/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    return-object p0
.end method

.method public setOverrideVisibleItems(Z)V
    .registers 2

    .line 1399
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z

    return-void
.end method

.method public setQwertyMode(Z)V
    .registers 2

    .line 759
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z

    const/4 p1, 0x0

    .line 761
    invoke-virtual {p0, p1}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    return-void
.end method

.method public size()I
    .registers 1

    .line 744
    iget-object p0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public startDispatchingItemsChanged()V
    .registers 3

    const/4 v0, 0x0

    .line 1080
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 1082
    iget-boolean v1, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v1, :cond_d

    .line 1083
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    const/4 v0, 0x1

    .line 1084
    invoke-virtual {p0, v0}, Lflyme/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_d
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .registers 2

    .line 1073
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    .line 1074
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    const/4 v0, 0x0

    .line 1075
    iput-boolean v0, p0, Lflyme/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    :cond_a
    return-void
.end method
