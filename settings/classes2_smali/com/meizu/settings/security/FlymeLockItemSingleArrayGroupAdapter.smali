.class public Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;
.super Lcom/meizu/common/widget/SingleArrayPartitionAdapter;
.source "FlymeLockItemSingleArrayGroupAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;,
        Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/SingleArrayPartitionAdapter<",
        "Lcom/meizu/settings/widget/MzAppEntry;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field private isAppControlOn:Z

.field private isFlymeAccontAppExist:Z

.field private mAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mAppNames:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClonedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCounts:[I

.field private mFastscrollStartPosition:I

.field private mIndexer:Landroid/widget/AlphabetIndexer;

.field private mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

.field private mOnPartOneClickListener:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;[ILjava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;[I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/SingleArrayPartitionAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mCounts:[I

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mAppNames:Ljava/util/HashMap;

    const/4 v0, 0x3

    .line 65
    iput v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mFastscrollStartPosition:I

    .line 79
    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    .line 80
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    const-string v0, "access_control"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmeizu/security/AccessControlManager;

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    .line 83
    iput-object p4, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mAppNames:Ljava/util/HashMap;

    .line 84
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mCounts:[I

    const/4 p4, 0x0

    aget v0, p3, p4

    aput v0, p1, p4

    const/4 p4, 0x1

    .line 85
    aget p3, p3, p4

    aput p3, p1, p4

    .line 86
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    const-string p3, "com.meizu.account"

    invoke-static {p1, p3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isFlymeAccontAppExist:Z

    .line 88
    invoke-virtual {p0, p2}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->setList(Ljava/util/List;)V

    .line 89
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneState;->getAppCloneEnabledList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mClonedAppsList:Ljava/util/List;

    return-void

    nop

    :array_4c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mOnPartOneClickListener:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Lmeizu/security/AccessControlManager;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mAccessControlManager:Lmeizu/security/AccessControlManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)Ljava/util/List;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mClonedAppsList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Landroid/widget/CheckBox;Ljava/lang/String;)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->showClonedAppTipsDialog(Landroid/widget/CheckBox;Ljava/lang/String;)V

    return-void
.end method

.method private createAppLockSwitchListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 255
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$4;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$4;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)V

    return-object v0
.end method

.method private createApplockSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .registers 2

    .line 245
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$3;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)V

    return-object v0
.end method

.method private createAssociateAccountCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .registers 2

    .line 224
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$1;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)V

    return-object v0
.end method

.method private createAssociateAccountSwitchListener(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)Landroid/view/View$OnClickListener;
    .registers 3

    .line 234
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$2;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)V

    return-object v0
.end method

.method private createModifyPwdListener()Landroid/view/View$OnClickListener;
    .registers 2

    .line 266
    new-instance v0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$5;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;)V

    return-object v0
.end method

.method private initPartOneView(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)V
    .registers 7

    .line 189
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->transparentView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->switchLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mMZLockUtils:Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAppLockEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    .line 194
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->allItemsSwitch:Lcom/meizu/common/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 195
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->allItemsSwitch:Lcom/meizu/common/widget/Switch;

    iget-boolean v4, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    invoke-virtual {v0, v4}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 196
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->allItemsSwitch:Lcom/meizu/common/widget/Switch;

    .line 197
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createApplockSwitchCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 198
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->switchLayout:Landroid/view/View;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createAppLockSwitchListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    if-eqz v0, :cond_7c

    .line 201
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->modifyPassoword:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 202
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->modifyPassoword:Landroid/view/View;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createModifyPwdListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isFlymeAccontAppExist:Z

    if-eqz v0, :cond_86

    .line 205
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountSwitch:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 207
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountSwitch:Lcom/meizu/common/widget/Switch;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isAssociateFlymeAccountOpened(I)Z

    move-result v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 210
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountSwitch:Lcom/meizu/common/widget/Switch;

    .line 211
    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createAssociateAccountCheckedChangeListener()Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountLayout:Landroid/view/View;

    .line 213
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->createAssociateAccountSwitchListener(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_86

    .line 217
    :cond_7c
    iget-object p0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->modifyPassoword:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object p0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_86
    :goto_86
    return-void
.end method

.method private initPartTwoView(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;Lcom/meizu/settings/widget/MzAppEntry;)V
    .registers 9

    .line 276
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->switchLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->transparentView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    :goto_15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 279
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    .line 280
    iget-object v1, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->appIconImage:Landroid/widget/ImageView;

    .line 282
    invoke-virtual {p2}, Lcom/meizu/settings/widget/MzAppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v1, p2, Lcom/meizu/settings/widget/MzAppEntry;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 286
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mAppNames:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 288
    iget-object v4, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->appNameText:Landroid/widget/TextView;

    if-eqz v3, :cond_3f

    const-string v5, "|"

    .line 289
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 290
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_46

    .line 292
    :cond_3f
    invoke-virtual {p2}, Lcom/meizu/settings/widget/MzAppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    :goto_46
    iget-object v3, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->itemView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    if-eqz v4, :cond_4f

    const/high16 v4, 0x3f800000  # 1.0f

    goto :goto_52

    :cond_4f
    const v4, 0x3e99999a  # 0.3f

    :goto_52
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    .line 295
    iget-object v3, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->itemView:Landroid/view/View;

    iget-boolean v4, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    invoke-virtual {v3, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    iget-object v3, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 298
    iget-object v3, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    iget-boolean v3, p2, Lcom/meizu/settings/widget/MzAppEntry;->mIsLock:Z

    if-eqz v3, :cond_72

    const/4 v2, 0x1

    .line 300
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_75

    .line 302
    :cond_72
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 304
    :goto_75
    iget-boolean v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    if-eqz v0, :cond_84

    .line 305
    iget-object v0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    new-instance v2, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;

    invoke-direct {v2, p0, p2, v1, p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$6;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Lcom/meizu/settings/widget/MzAppEntry;Ljava/lang/String;Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_89

    .line 335
    :cond_84
    iget-object p0, p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    invoke-virtual {p0, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_89
    return-void
.end method

.method private showClonedAppTipsDialog(Landroid/widget/CheckBox;Ljava/lang/String;)V
    .registers 13

    .line 341
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f1207db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 342
    new-instance v7, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;

    invoke-direct {v7, p0, p2}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$7;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Ljava/lang/String;)V

    .line 348
    new-instance v8, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$8;

    invoke-direct {v8, p0, p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$8;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Landroid/widget/CheckBox;)V

    .line 353
    new-instance v9, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$9;

    invoke-direct {v9, p0, p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$9;-><init>(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;Landroid/widget/CheckBox;)V

    .line 360
    invoke-static {}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->getInstance()Lcom/meizu/settings/appclone/AppCloneAlertHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    const-class p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;

    .line 361
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    .line 360
    invoke-virtual/range {v2 .. v9}, Lcom/meizu/settings/appclone/AppCloneAlertHelper;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;Landroid/content/Context;II)V
    .registers 5

    if-nez p4, :cond_10

    .line 136
    new-instance p0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 137
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3b

    :cond_10
    const p3, 0x7f0a015c

    .line 139
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    const/4 p4, 0x0

    .line 140
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0xa0701e7

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 143
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1201ba

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3b
    return-void
.end method

.method protected bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;II)V
    .registers 8

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    if-nez p4, :cond_c

    .line 181
    invoke-direct {p0, p1}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->initPartOneView(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;)V

    goto :goto_f

    .line 183
    :cond_c
    invoke-direct {p0, p1, p5}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->initPartTwoView(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;Lcom/meizu/settings/widget/MzAppEntry;)V

    .line 185
    :goto_f
    invoke-virtual {p0}, Lcom/meizu/common/widget/BasePartitionAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected bridge synthetic bindView(Landroid/view/View;Landroid/content/Context;IILjava/lang/Object;II)V
    .registers 8

    .line 49
    check-cast p5, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->bindView(Landroid/view/View;Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;II)V

    return-void
.end method

.method public getPositionForSection(I)I
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    if-nez p1, :cond_b

    .line 370
    iget p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mFastscrollStartPosition:I

    return p0

    .line 373
    :cond_b
    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    return p0
.end method

.method public getSectionForPosition(I)I
    .registers 2

    .line 377
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 1

    .line 381
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public isAppLockOn()Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->isAppControlOn:Z

    return p0
.end method

.method protected newHeaderView(Landroid/content/Context;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 129
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d00a2

    const/4 p2, 0x0

    .line 130
    invoke-virtual {p0, p1, p4, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected newView(Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d0153

    const/4 p2, 0x0

    .line 152
    invoke-virtual {p0, p1, p7, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/widget/PartitionItemLayout;

    const p2, 0x7f0d0040

    const/4 p3, 0x1

    .line 154
    invoke-virtual {p0, p2, p1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 156
    new-instance p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;

    invoke-direct {p0}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;-><init>()V

    const p2, 0x7f0a00c3

    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->switchLayout:Landroid/view/View;

    const p2, 0x7f0a00c2

    .line 158
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/Switch;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->allItemsSwitch:Lcom/meizu/common/widget/Switch;

    const p2, 0x7f0a044a

    .line 159
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->modifyPassoword:Landroid/view/View;

    const p2, 0x7f0a00d2

    .line 160
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountLayout:Landroid/view/View;

    const p2, 0x7f0a00d1

    .line 161
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/common/widget/Switch;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->associateAccountSwitch:Lcom/meizu/common/widget/Switch;

    const p2, 0x7f0a00c1

    .line 163
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->itemView:Landroid/view/View;

    const p2, 0x7f0a0773

    .line 164
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->transparentView:Landroid/view/View;

    const p2, 0x7f0a00ad

    .line 165
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->appNameText:Landroid/widget/TextView;

    const p2, 0x7f0a03d2

    .line 166
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->notificationSwitch:Landroid/widget/CheckBox;

    const p2, 0x7f0a00a8

    .line 167
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$AppViewHolder;->appIconImage:Landroid/widget/ImageView;

    .line 168
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-object p1
.end method

.method protected bridge synthetic newView(Landroid/content/Context;IILjava/lang/Object;IILandroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .line 49
    check-cast p4, Lcom/meizu/settings/widget/MzAppEntry;

    invoke-virtual/range {p0 .. p7}, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->newView(Landroid/content/Context;IILcom/meizu/settings/widget/MzAppEntry;IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public setList(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/widget/MzAppEntry;",
            ">;)V"
        }
    .end annotation

    .line 93
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mCounts:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const-string v4, "#"

    const/4 v5, 0x1

    if-eqz v3, :cond_2e

    aget v1, v1, v5

    if-nez v1, :cond_1f

    goto :goto_2e

    .line 102
    :cond_1f
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 105
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_35

    .line 98
    :cond_2e
    :goto_2e
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 109
    :goto_35
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mCounts:[I

    aget v3, v1, v2

    if-eqz v3, :cond_42

    aget v1, v1, v5

    if-nez v1, :cond_40

    goto :goto_42

    :cond_40
    move v1, v2

    goto :goto_43

    :cond_42
    :goto_42
    move v1, v5

    .line 110
    :goto_43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/widget/MzAppEntry;

    .line 111
    invoke-virtual {v3}, Lcom/meizu/settings/widget/MzAppEntry;->getLabelToPinyin()Ljava/lang/String;

    move-result-object v4

    .line 112
    iget-boolean v6, v3, Lcom/meizu/settings/widget/MzAppEntry;->mIsLock:Z

    if-eqz v6, :cond_77

    if-nez v1, :cond_77

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "###"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/meizu/settings/widget/MzAppEntry;->getLabelToPinyin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 114
    iget v3, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mFastscrollStartPosition:I

    add-int/2addr v3, v5

    iput v3, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mFastscrollStartPosition:I

    .line 116
    :cond_77
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_80

    const-string v3, ""

    goto :goto_84

    :cond_80
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :goto_84
    new-array v4, v5, [Ljava/lang/String;

    aput-object v3, v4, v2

    .line 117
    invoke-virtual {v0, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_47

    .line 121
    :cond_8c
    new-instance p1, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f120860

    .line 122
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mIndexer:Landroid/widget/AlphabetIndexer;

    return-void
.end method

.method public setOnPartOneClickListener(Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;)V
    .registers 2

    .line 398
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter;->mOnPartOneClickListener:Lcom/meizu/settings/security/FlymeLockItemSingleArrayGroupAdapter$OnPartOneClickListener;

    return-void
.end method
