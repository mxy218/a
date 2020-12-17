.class public Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
.super Lflyme/support/v7/widget/RecyclerView$Adapter;
.source "FlymeDashboardSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;,
        Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;,
        Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;,
        Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;,
        Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderDivider;,
        Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lflyme/support/v7/widget/RecyclerView$Adapter<",
        "Lflyme/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final SUMMARY_ITEM_NAME_RES_ID:[I


# instance fields
.field private mBluetoothSummary:Ljava/lang/String;

.field private mBluetoothTile:Lcom/android/settingslib/drawer/Tile;

.field private mContext:Landroid/content/Context;

.field private mDefaultName:Ljava/lang/String;

.field private mDividerString:Ljava/lang/String;

.field private mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

.field private mFlymeAccountStateChange:Z

.field private mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

.field private mIsCloudServiceExisted:Z

.field private mIsFlymeAccountLogin:Z

.field private mIsTetheringRestricted:Z

.field private mNeedShowPermissionDlg:Z

.field private mNfcSummary:Ljava/lang/String;

.field private mNfcTile:Lcom/android/settingslib/drawer/Tile;

.field private mOnItemClickListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;

.field private mOnSystemUpgradeBindListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;

.field private mResources:Landroid/content/res/Resources;

.field private mSummaryItemNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemUpgradeName:Ljava/lang/String;

.field private mTileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiSummary:Ljava/lang/String;

.field private mWifiTile:Lcom/android/settingslib/drawer/Tile;

.field private mWlanTetherTile:Lcom/android/settingslib/drawer/Tile;

.field private mWlanTetheringSummary:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 38
    fill-array-data v0, :array_a

    sput-object v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->SUMMARY_ITEM_NAME_RES_ID:[I

    return-void

    nop

    :array_a
    .array-data 4
        0x7f121992  # 1.9420006E38f
        0x7f1215c9
        0x7f1203eb
        0x7f120ecd
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/settings/utils/FlymeAccountHelper;ZLjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/meizu/settings/utils/FlymeAccountHelper;",
            "Z",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountStateChange:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    .line 73
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mResources:Landroid/content/res/Resources;

    .line 75
    iput-object p4, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mTileList:Ljava/util/List;

    const p4, 0x7f1205e3

    .line 76
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mDividerString:Ljava/lang/String;

    const p4, 0x7f1205e1

    .line 77
    invoke-virtual {p1, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mDefaultName:Ljava/lang/String;

    .line 78
    iput-boolean p3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNeedShowPermissionDlg:Z

    .line 79
    iput-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    .line 80
    invoke-static {p1}, Lcom/meizu/settings/utils/FlymeAccountHelper;->isFlymeAccountLogined(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsFlymeAccountLogin:Z

    .line 81
    invoke-static {p1}, Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeSystemUpdateBadgeHelper:Lcom/meizu/settings/accessibility/FlymeSystemUpdateBadgeHelper;

    .line 82
    invoke-virtual {p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->isTetheringRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsTetheringRestricted:Z

    .line 83
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    const-string p2, "com.meizu.mzsyncservice"

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsCloudServiceExisted:Z

    .line 85
    sget-object p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->SUMMARY_ITEM_NAME_RES_ID:[I

    array-length p2, p1

    const/4 p3, 0x0

    :goto_4d
    if-ge p3, p2, :cond_5f

    aget p4, p1, p3

    .line 86
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_4d

    .line 88
    :cond_5f
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f1215b2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSystemUpgradeName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mOnItemClickListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Ljava/util/List;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mTileList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Ljava/lang/String;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mDefaultName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Landroid/content/res/Resources;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method private isSummaryItem(Lcom/android/settingslib/drawer/Tile;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 352
    :cond_4
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_12

    return v2

    .line 356
    :cond_12
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 357
    iget-object v4, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v4}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    return v2

    :cond_31
    return v0
.end method

.method private updateFlymeAccountDashboard(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;Lcom/android/settingslib/drawer/Tile;)V
    .registers 7

    .line 285
    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsFlymeAccountLogin:Z

    if-eqz v0, :cond_50

    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNeedShowPermissionDlg:Z

    if-nez v0, :cond_50

    .line 286
    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountStateChange:Z

    if-eqz v0, :cond_37

    .line 287
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getUserNickName()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 289
    iput-object v0, p2, Lcom/android/settingslib/drawer/Tile;->mTitle:Ljava/lang/String;

    .line 291
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-virtual {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->getUserIcon()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 292
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 293
    iput-object v0, p2, Lcom/android/settingslib/drawer/Tile;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    :cond_2a
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountHelper:Lcom/meizu/settings/utils/FlymeAccountHelper;

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mDefaultName:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;

    invoke-direct {v3, p0, p2, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$3;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Lcom/android/settingslib/drawer/Tile;Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/settings/utils/FlymeAccountHelper;->requestUserInfo(Ljava/lang/String;ZLcom/meizu/settings/utils/FlymeAccountHelper$UserInfoLister;)V

    .line 320
    :cond_37
    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsCloudServiceExisted:Z

    if-eqz v0, :cond_44

    .line 321
    iget-object v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->summary:Landroid/widget/TextView;

    const v1, 0x7f1205dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4c

    .line 323
    :cond_44
    iget-object v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->summary:Landroid/widget/TextView;

    const v1, 0x7f1205de

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_4c
    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountStateChange:Z

    goto :goto_74

    .line 328
    :cond_50
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0807b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/drawer/Tile;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mDefaultName:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/settingslib/drawer/Tile;->mTitle:Ljava/lang/String;

    .line 330
    iget-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsCloudServiceExisted:Z

    if-eqz v0, :cond_6c

    .line 331
    iget-object v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->summary:Landroid/widget/TextView;

    const v1, 0x7f1205df

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_74

    .line 333
    :cond_6c
    iget-object v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->summary:Landroid/widget/TextView;

    const v1, 0x7f1205e0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    :goto_74
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7e

    .line 339
    iget-object p0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->accountIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8f

    .line 341
    :cond_7e
    iget-object v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->accountIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/android/settingslib/drawer/Tile;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 344
    :goto_8f
    iget-object p0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->title:Landroid/widget/TextView;

    iget-object p1, p2, Lcom/android/settingslib/drawer/Tile;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 1

    .line 268
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mTileList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 244
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mTileList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/drawer/Tile;

    .line 245
    invoke-virtual {p1}, Lcom/android/settingslib/drawer/Tile;->getCategory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.settings.category.ia.flymeaccount"

    .line 246
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 p0, 0x1

    return p0

    .line 248
    :cond_16
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mDividerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 p0, 0x2

    return p0

    .line 250
    :cond_20
    invoke-direct {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->isSummaryItem(Lcom/android/settingslib/drawer/Tile;)Z

    move-result p0

    if-eqz p0, :cond_28

    const/4 p0, 0x4

    return p0

    :cond_28
    const/4 p0, 0x3

    return p0
.end method

.method public isEnabled(I)Z
    .registers 4

    .line 259
    invoke-virtual {p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 262
    :cond_9
    invoke-super {p0, p1}, Lflyme/support/v7/widget/RecyclerView$Adapter;->isEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isFlymeAccountStateChange()Z
    .registers 1

    .line 276
    iget-boolean p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountStateChange:Z

    return p0
.end method

.method public isTetheringRestricted()Z
    .registers 4

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    .line 235
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_config_tethering"

    .line 234
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    .line 236
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    .line 238
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 236
    invoke-static {p0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    or-int/2addr p0, v0

    return p0
.end method

.method public onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
    .registers 10

    .line 114
    instance-of v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;

    if-eqz v0, :cond_1e

    .line 115
    move-object v0, p1

    check-cast v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;

    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mTileList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, v0, v1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->updateFlymeAccountDashboard(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;Lcom/android/settingslib/drawer/Tile;)V

    .line 116
    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$1;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_109

    .line 124
    :cond_1e
    instance-of v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;

    if-eqz v0, :cond_109

    .line 125
    move-object v0, p1

    check-cast v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;

    .line 126
    iget-object v1, v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->badgeIcon:Lcom/meizu/settings/widget/BadgeView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mTileList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/Tile;

    .line 128
    iget-object v3, v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v3, v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->featureIcon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/android/settingslib/drawer/Tile;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSystemUpgradeName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_60

    .line 132
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mOnSystemUpgradeBindListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;

    if-eqz v3, :cond_e3

    .line 133
    iget-object v5, v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->badgeIcon:Lcom/meizu/settings/widget/BadgeView;

    invoke-interface {v3, v5}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;->OnSystemUpgradeBind(Landroid/view/View;)V

    goto/16 :goto_e3

    .line 135
    :cond_60
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 136
    iput-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWifiTile:Lcom/android/settingslib/drawer/Tile;

    .line 137
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWifiSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 138
    :cond_7c
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 139
    iput-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWlanTetherTile:Lcom/android/settingslib/drawer/Tile;

    .line 140
    iget-boolean v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsTetheringRestricted:Z

    if-eqz v3, :cond_a4

    .line 141
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f1206fe

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 143
    :cond_a4
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWlanTetheringSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 145
    :cond_aa
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 146
    iput-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mBluetoothTile:Lcom/android/settingslib/drawer/Tile;

    .line 147
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mBluetoothSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    goto :goto_e3

    .line 148
    :cond_c7
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v5, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mSummaryItemNames:Ljava/util/List;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e3

    .line 149
    iput-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNfcTile:Lcom/android/settingslib/drawer/Tile;

    .line 150
    iget-object v3, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNfcSummary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    .line 152
    :cond_e3
    :goto_e3
    iget-object v0, v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->badgeIcon:Lcom/meizu/settings/widget/BadgeView;

    iget-boolean v3, v1, Lcom/android/settingslib/drawer/Tile;->mHasNewTips:Z

    if-eqz v3, :cond_ea

    move v2, v4

    :cond_ea
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 153
    instance-of v0, p1, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;

    if-eqz v0, :cond_ff

    .line 154
    move-object v0, p1

    check-cast v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;

    iget-object v0, v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/drawer/Tile;->getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_ff
    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_109
    :goto_109
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lflyme/support/v7/widget/RecyclerView$ViewHolder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_17

    .line 94
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d00a5

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    new-instance p2, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V

    return-object p2

    :cond_17
    const/4 v1, 0x2

    if-ne p2, v1, :cond_2d

    .line 98
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d010d

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 99
    new-instance p2, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderDivider;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderDivider;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V

    return-object p2

    :cond_2d
    const/4 v1, 0x3

    if-ne p2, v1, :cond_43

    .line 102
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d00a6

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    new-instance p2, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V

    return-object p2

    :cond_43
    const/4 v1, 0x4

    if-ne p2, v1, :cond_59

    .line 106
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v1, 0x7f0d00a7

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 107
    new-instance p2, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;

    invoke-direct {p2, p0, p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V

    return-object p2

    :cond_59
    const/4 p0, 0x0

    return-object p0
.end method

.method public setBluetoothSummary(Ljava/lang/String;)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mBluetoothSummary:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 203
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mBluetoothSummary:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 207
    :goto_d
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mBluetoothTile:Lcom/android/settingslib/drawer/Tile;

    if-nez v1, :cond_12

    return-void

    .line 211
    :cond_12
    invoke-virtual {v1, p1}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1a

    .line 213
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    return-void
.end method

.method public setNeedShowPermission(Z)V
    .registers 2

    .line 272
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNeedShowPermissionDlg:Z

    return-void
.end method

.method public setNfcSummary(Ljava/lang/String;)V
    .registers 4

    .line 219
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNfcSummary:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 220
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNfcSummary:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 224
    :goto_d
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mNfcTile:Lcom/android/settingslib/drawer/Tile;

    if-nez v1, :cond_12

    return-void

    .line 227
    :cond_12
    invoke-virtual {v1, p1}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1a

    .line 229
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    return-void
.end method

.method public setOnItemClickListener(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;)V
    .registers 2

    .line 413
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mOnItemClickListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;

    return-void
.end method

.method public setOnSystemUpgradeBindListener(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mOnSystemUpgradeBindListener:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnSystemUpgradeBindListener;

    return-void
.end method

.method public setWifiSummary(Ljava/lang/String;)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWifiSummary:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 172
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWifiSummary:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 175
    :goto_d
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWifiTile:Lcom/android/settingslib/drawer/Tile;

    if-nez v1, :cond_12

    return-void

    .line 178
    :cond_12
    invoke-virtual {v1, p1}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1a

    .line 180
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    return-void
.end method

.method public setWlanTetheringSummary(Ljava/lang/String;)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWlanTetheringSummary:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 187
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWlanTetheringSummary:Ljava/lang/String;

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 191
    :goto_d
    iget-object v1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mWlanTetherTile:Lcom/android/settingslib/drawer/Tile;

    if-nez v1, :cond_12

    return-void

    .line 194
    :cond_12
    invoke-virtual {v1, p1}, Lcom/android/settingslib/drawer/Tile;->overrideSummary(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1a

    .line 196
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1a
    return-void
.end method

.method public updateFlymeAccountState(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mFlymeAccountStateChange:Z

    .line 281
    iput-boolean p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->mIsFlymeAccountLogin:Z

    return-void
.end method
