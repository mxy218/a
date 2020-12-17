.class public Lflyme/support/v7/permission/PermissionGroup;
.super Ljava/lang/Object;
.source "PermissionGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lflyme/support/v7/permission/PermissionGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mIconId:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private mIdentifier:Ljava/lang/String;

.field private mLocalization:Lflyme/support/v7/permission/Localization;

.field private mProxy:Lflyme/support/v7/permission/PackageManagerProxy;

.field private mSubPermission:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/Permission;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lflyme/support/v7/permission/Localization;Lflyme/support/v7/permission/PackageManagerProxy;)V
    .registers 5

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lflyme/support/v7/permission/PermissionGroup;->mSubPermission:Ljava/util/List;

    .line 24
    iput-object p1, p0, Lflyme/support/v7/permission/PermissionGroup;->mIdentifier:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    .line 26
    iput-object p3, p0, Lflyme/support/v7/permission/PermissionGroup;->mProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    return-void
.end method


# virtual methods
.method public addSubPermission(Lflyme/support/v7/permission/Permission;)V
    .registers 2

    .line 30
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mSubPermission:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public compareTo(Lflyme/support/v7/permission/PermissionGroup;)I
    .registers 4
    .param p1  # Lflyme/support/v7/permission/PermissionGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz v0, :cond_14

    iget-object v1, p1, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz v1, :cond_14

    .line 87
    invoke-virtual {v0}, Lflyme/support/v7/permission/Localization;->getPriority()I

    move-result p0

    iget-object p1, p1, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    invoke-virtual {p1}, Lflyme/support/v7/permission/Localization;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 88
    :cond_14
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz p0, :cond_1a

    const/4 p0, -0x1

    return p0

    .line 90
    :cond_1a
    iget-object p0, p1, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2
    .param p1  # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 13
    check-cast p1, Lflyme/support/v7/permission/PermissionGroup;

    invoke-virtual {p0, p1}, Lflyme/support/v7/permission/PermissionGroup;->compareTo(Lflyme/support/v7/permission/PermissionGroup;)I

    move-result p0

    return p0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 73
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionGroup;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 74
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mDisplayName:Ljava/lang/String;

    return-object p0

    .line 75
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz v0, :cond_30

    .line 77
    invoke-virtual {v0, p1}, Lflyme/support/v7/permission/Localization;->getLabelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 78
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mLocalization:Lflyme/support/v7/permission/Localization;

    invoke-virtual {p0, p1}, Lflyme/support/v7/permission/Localization;->getLabelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_30
    iget-object v0, p0, Lflyme/support/v7/permission/PermissionGroup;->mProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lflyme/support/v7/permission/PackageManagerProxy;->loadPermissionGroupLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 51
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public getSubPermission(Ljava/lang/String;)Lflyme/support/v7/permission/Permission;
    .registers 4

    .line 34
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mSubPermission:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/permission/Permission;

    .line 35
    invoke-virtual {v0}, Lflyme/support/v7/permission/Permission;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSubPermission()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lflyme/support/v7/permission/Permission;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lflyme/support/v7/permission/PermissionGroup;->mSubPermission:Ljava/util/List;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lflyme/support/v7/permission/PermissionGroup;->mDisplayName:Ljava/lang/String;

    return-void
.end method

.method public setIconId(I)V
    .registers 2

    .line 65
    iput p1, p0, Lflyme/support/v7/permission/PermissionGroup;->mIconId:I

    return-void
.end method
