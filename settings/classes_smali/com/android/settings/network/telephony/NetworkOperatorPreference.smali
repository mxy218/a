.class public Lcom/android/settings/network/telephony/NetworkOperatorPreference;
.super Landroidx/preference/Preference;
.source "NetworkOperatorPreference.java"


# instance fields
.field private mCellInfo:Landroid/telephony/CellInfo;

.field private mForbiddenPlmns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLevel:I

.field private mShow4GForLTE:Z

.field private mUseNewApi:Z


# direct methods
.method public constructor <init>(Landroid/telephony/CellInfo;Landroid/content/Context;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/CellInfo;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 52
    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 53
    iput-object p3, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    .line 54
    iput-boolean p4, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    .line 55
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110075

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mUseNewApi:Z

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->refresh()V

    return-void
.end method

.method private getIconIdForCell(Landroid/telephony/CellInfo;)I
    .registers 3

    .line 92
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_29

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1d

    const/4 p0, 0x4

    if-eq p1, p0, :cond_19

    const/4 p0, 0x5

    if-eq p1, p0, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_19
    const p0, 0x7f08077d

    return p0

    .line 100
    :cond_1d
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mShow4GForLTE:Z

    if-eqz p0, :cond_25

    const p0, 0x7f0802e6

    goto :goto_28

    :cond_25
    const p0, 0x7f08077f

    :goto_28
    return p0

    :cond_29
    const p0, 0x7f08077c

    return p0

    :cond_2d
    const p0, 0x7f08077e

    return p0
.end method

.method private updateIcon(I)V
    .registers 6

    .line 110
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mUseNewApi:Z

    if-eqz v0, :cond_1c

    if-ltz p1, :cond_1c

    const/4 v0, 0x5

    if-lt p1, v0, :cond_a

    goto :goto_1c

    .line 113
    :cond_a
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    .line 115
    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->getIconIdForCell(Landroid/telephony/CellInfo;)I

    move-result v2

    const/4 v3, 0x0

    .line 114
    invoke-static {v1, p1, v0, v2, v3}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getSignalStrengthIcon(Landroid/content/Context;IIIZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method public getCellInfo()Landroid/telephony/CellInfo;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    return-object p0
.end method

.method public refresh()V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-static {v0}, Lcom/android/settings/network/telephony/CellInfoUtil;->getNetworkTitle(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    iget-object v2, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mForbiddenPlmns:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/android/settings/network/telephony/CellInfoUtil;->isForbidden(Landroid/telephony/CellInfo;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1208c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    :cond_33
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0}, Landroid/telephony/CellInfo;->getCellSignalStrength()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 76
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    goto :goto_44

    :cond_43
    const/4 v0, -0x1

    .line 78
    :goto_44
    iget v1, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    if-eq v1, v0, :cond_4f

    .line 79
    iput v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    .line 80
    iget v0, p0, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->mLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    :cond_4f
    return-void
.end method

.method public setIcon(I)V
    .registers 2

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/NetworkOperatorPreference;->updateIcon(I)V

    return-void
.end method
