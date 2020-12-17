.class public Lflyme/support/v7/app/PermissionDialogBuilder;
.super Ljava/lang/Object;
.source "PermissionDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;,
        Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;
    }
.end annotation


# static fields
.field private static sTabletPermissionFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdditionalGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppName:Ljava/lang/String;

.field private mCallBack:Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

.field private mContext:Landroid/content/Context;

.field private mIsDark:Z

.field private mIsTablet:Z

.field private mMessage:Ljava/lang/String;

.field private mPermissionResIds:[I

.field private mPermissionSummary:[Ljava/lang/String;

.field private mPermissions:[Ljava/lang/String;

.field private mShowAlmostDenyBtn:Z

.field private mTerms:Ljava/lang/CharSequence;

.field private mTheme:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    .line 45
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Lflyme/support/v7/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/PermissionDialogBuilder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    .line 61
    iput p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mTheme:I

    .line 62
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/PermissionDialogBuilder;->isTablet(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mIsTablet:Z

    return-void
.end method

.method static synthetic access$000(Lflyme/support/v7/app/PermissionDialogBuilder;)Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;
    .registers 1

    .line 25
    iget-object p0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mCallBack:Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    return-object p0
.end method

.method private filterPermission()V
    .registers 8

    .line 125
    iget-boolean v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mIsTablet:Z

    if-eqz v0, :cond_7b

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 129
    :goto_15
    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    array-length v6, v5

    if-ge v4, v6, :cond_40

    .line 130
    aget-object v5, v5, v4

    .line 131
    sget-object v6, Lflyme/support/v7/app/PermissionDialogBuilder;->sTabletPermissionFilterList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3d

    .line 132
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionSummary:[Ljava/lang/String;

    if-eqz v5, :cond_30

    .line 134
    aget-object v5, v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_30
    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    if-eqz v5, :cond_3d

    .line 137
    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_40
    new-array v4, v3, [Ljava/lang/String;

    .line 141
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionSummary:[Ljava/lang/String;

    if-eqz v0, :cond_58

    new-array v0, v3, [Ljava/lang/String;

    .line 143
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionSummary:[Ljava/lang/String;

    .line 145
    :cond_58
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    if-eqz v0, :cond_7b

    .line 146
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    .line 147
    :goto_64
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7b

    .line 148
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    :cond_7b
    return-void
.end method

.method private showTermsCheckBox()Z
    .registers 3

    .line 222
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    :cond_20
    iget-object p0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mTerms:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    return p0
.end method


# virtual methods
.method public create()Lflyme/support/v7/app/AlertDialog;
    .registers 9

    .line 230
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mAppName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_106

    .line 233
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_f

    array-length v0, v0

    if-gtz v0, :cond_19

    :cond_f
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mAdditionalGroups:Ljava/util/List;

    if-eqz v0, :cond_fe

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_fe

    .line 236
    :cond_19
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 237
    iget-object v1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionSummary:[Ljava/lang/String;

    if-eqz v1, :cond_2e

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_26

    goto :goto_2e

    .line 238
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "permissionSummary.length must equal permissions.length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    if-eqz v0, :cond_41

    array-length v0, v0

    iget-object v1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_39

    goto :goto_41

    .line 241
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "permissionResIds.length must equal permissions.length"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 243
    :cond_41
    :goto_41
    invoke-direct {p0}, Lflyme/support/v7/app/PermissionDialogBuilder;->filterPermission()V

    .line 246
    :cond_44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v3

    .line 248
    :goto_4f
    new-instance v1, Lflyme/support/v7/view/PermissionDialogView;

    iget-object v4, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lflyme/support/v7/view/PermissionDialogView;-><init>(Landroid/content/Context;)V

    .line 249
    new-instance v4, Lflyme/support/v7/view/PermissionDialogView$Builder;

    invoke-direct {v4}, Lflyme/support/v7/view/PermissionDialogView$Builder;-><init>()V

    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setAppName(Ljava/lang/String;)Lflyme/support/v7/view/PermissionDialogView$Builder;

    iget-boolean v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mShowAlmostDenyBtn:Z

    .line 250
    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setShowAlmostDenyBtn(Z)Lflyme/support/v7/view/PermissionDialogView$Builder;

    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    iget-object v6, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionSummary:[Ljava/lang/String;

    iget-object v7, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    .line 251
    invoke-virtual {v4, v5, v6, v7}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setPermission([Ljava/lang/String;[Ljava/lang/String;[I)Lflyme/support/v7/view/PermissionDialogView$Builder;

    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mAdditionalGroups:Ljava/util/List;

    .line 252
    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setAdditionalGroups(Ljava/util/List;)Lflyme/support/v7/view/PermissionDialogView$Builder;

    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mMessage:Ljava/lang/String;

    .line 253
    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setMessage(Ljava/lang/String;)Lflyme/support/v7/view/PermissionDialogView$Builder;

    iget-boolean v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mIsDark:Z

    .line 254
    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setDark(Z)Lflyme/support/v7/view/PermissionDialogView$Builder;

    xor-int/lit8 v5, v0, 0x1

    .line 255
    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setShowTitle(Z)Lflyme/support/v7/view/PermissionDialogView$Builder;

    .line 256
    invoke-direct {p0}, Lflyme/support/v7/app/PermissionDialogBuilder;->showTermsCheckBox()Z

    move-result v5

    invoke-virtual {v4, v5}, Lflyme/support/v7/view/PermissionDialogView$Builder;->setShowTermsCheckBox(Z)Lflyme/support/v7/view/PermissionDialogView$Builder;

    .line 257
    invoke-virtual {v4, v1}, Lflyme/support/v7/view/PermissionDialogView$Builder;->build(Lflyme/support/v7/view/PermissionDialogView;)V

    .line 259
    new-instance v4, Lflyme/support/v7/app/AlertDialog$Builder;

    iget-object v5, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mContext:Landroid/content/Context;

    iget v6, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mTheme:I

    invoke-direct {v4, v5, v6}, Lflyme/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v1}, Lflyme/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 260
    invoke-virtual {v4, v3}, Lflyme/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lflyme/support/v7/app/AlertDialog$Builder;

    new-instance v5, Lflyme/support/v7/app/PermissionDialogBuilder$3;

    invoke-direct {v5, p0, v1}, Lflyme/support/v7/app/PermissionDialogBuilder$3;-><init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/view/PermissionDialogView;)V

    .line 261
    invoke-virtual {v4, v5}, Lflyme/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    sget v5, Lflyme/support/v7/appcompat/R$string;->mz_permission_agree:I

    new-instance v6, Lflyme/support/v7/app/PermissionDialogBuilder$2;

    invoke-direct {v6, p0, v1}, Lflyme/support/v7/app/PermissionDialogBuilder$2;-><init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/view/PermissionDialogView;)V

    .line 269
    invoke-virtual {v4, v5, v6}, Lflyme/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    sget v5, Lflyme/support/v7/appcompat/R$string;->mz_permission_disagree:I

    new-instance v6, Lflyme/support/v7/app/PermissionDialogBuilder$1;

    invoke-direct {v6, p0, v1}, Lflyme/support/v7/app/PermissionDialogBuilder$1;-><init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/view/PermissionDialogView;)V

    .line 277
    invoke-virtual {v4, v5, v6}, Lflyme/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lflyme/support/v7/app/AlertDialog$Builder;

    if-eqz v0, :cond_be

    .line 286
    iget-object v0, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mAppName:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lflyme/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lflyme/support/v7/app/AlertDialog$Builder;

    .line 288
    :cond_be
    new-instance v0, Lflyme/support/v7/app/PermissionDialogBuilder$4;

    invoke-direct {v0, p0}, Lflyme/support/v7/app/PermissionDialogBuilder$4;-><init>(Lflyme/support/v7/app/PermissionDialogBuilder;)V

    invoke-virtual {v4, v0}, Lflyme/support/v7/app/AlertDialog$Builder;->create(Lflyme/support/v7/app/AlertDialog$Builder$DialogFactory;)Lflyme/support/v7/app/AlertDialog;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;

    .line 295
    invoke-virtual {v1}, Lflyme/support/v7/view/PermissionDialogView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v4

    new-instance v5, Lflyme/support/v7/app/PermissionDialogBuilder$5;

    invoke-direct {v5, p0, v0}, Lflyme/support/v7/app/PermissionDialogBuilder$5;-><init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 301
    invoke-virtual {v1}, Lflyme/support/v7/view/PermissionDialogView;->getTermsCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 302
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 303
    iget-object v2, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mTerms:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 304
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 305
    new-instance v2, Lflyme/support/v7/app/PermissionDialogBuilder$6;

    invoke-direct {v2, p0, v0}, Lflyme/support/v7/app/PermissionDialogBuilder$6;-><init>(Lflyme/support/v7/app/PermissionDialogBuilder;Lflyme/support/v7/app/PermissionDialogBuilder$PermissionDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 311
    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setHighlightColor(I)V

    const/16 p0, 0x18

    const/4 v1, 0x4

    const/16 v2, 0xc

    const/16 v3, 0xa

    .line 312
    invoke-virtual {v0, p0, v1, v2, v3}, Lflyme/support/v7/app/AlertDialog;->setCustomPaddingRule(IIII)V

    return-object v0

    .line 234
    :cond_fe
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "permissions or additional groups can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 231
    :cond_106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "appName can\'t be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isTablet(Landroid/content/Context;)Z
    .registers 2

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lflyme/support/v7/appcompat/R$bool;->isTablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public setMessage(Ljava/lang/String;[Ljava/lang/String;)Lflyme/support/v7/app/PermissionDialogBuilder;
    .registers 4

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, p2, v0}, Lflyme/support/v7/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lflyme/support/v7/app/PermissionDialogBuilder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lflyme/support/v7/app/PermissionDialogBuilder;
    .registers 5

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, p1, p2, p3, v0}, Lflyme/support/v7/app/PermissionDialogBuilder;->setMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)Lflyme/support/v7/app/PermissionDialogBuilder;

    return-object p0
.end method

.method public setMessage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I)Lflyme/support/v7/app/PermissionDialogBuilder;
    .registers 5

    .line 114
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mAppName:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissions:[Ljava/lang/String;

    .line 116
    iput-object p3, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionSummary:[Ljava/lang/String;

    .line 117
    iput-object p4, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mPermissionResIds:[I

    return-object p0
.end method

.method public setOnPermissionListener(Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;)Lflyme/support/v7/app/PermissionDialogBuilder;
    .registers 2

    .line 175
    iput-object p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mCallBack:Lflyme/support/v7/app/PermissionDialogBuilder$OnPermissionClickListener;

    return-object p0
.end method

.method public setShowAlmostDenyBtn(Z)Lflyme/support/v7/app/PermissionDialogBuilder;
    .registers 2

    .line 158
    iput-boolean p1, p0, Lflyme/support/v7/app/PermissionDialogBuilder;->mShowAlmostDenyBtn:Z

    return-object p0
.end method
