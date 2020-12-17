.class public Lflyme/support/v7/permission/Permission;
.super Ljava/lang/Object;
.source "Permission.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lflyme/support/v7/permission/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mLocalization:Lflyme/support/v7/permission/Localization;

.field private mProxy:Lflyme/support/v7/permission/PackageManagerProxy;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lflyme/support/v7/permission/Localization;Lflyme/support/v7/permission/PackageManagerProxy;)V
    .registers 4

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lflyme/support/v7/permission/Permission;->mIdentifier:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    .line 22
    iput-object p3, p0, Lflyme/support/v7/permission/Permission;->mProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    return-void
.end method


# virtual methods
.method public compareTo(Lflyme/support/v7/permission/Permission;)I
    .registers 4
    .param p1  # Lflyme/support/v7/permission/Permission;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    iget-object v0, p0, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz v0, :cond_14

    iget-object v1, p1, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz v1, :cond_14

    .line 48
    invoke-virtual {v0}, Lflyme/support/v7/permission/Localization;->getPriority()I

    move-result p0

    iget-object p1, p1, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    invoke-virtual {p1}, Lflyme/support/v7/permission/Localization;->getPriority()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 49
    :cond_14
    iget-object p0, p0, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz p0, :cond_1a

    const/4 p0, -0x1

    return p0

    .line 51
    :cond_1a
    iget-object p0, p1, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

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

    .line 12
    check-cast p1, Lflyme/support/v7/permission/Permission;

    invoke-virtual {p0, p1}, Lflyme/support/v7/permission/Permission;->compareTo(Lflyme/support/v7/permission/Permission;)I

    move-result p0

    return p0
.end method

.method public getDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 34
    iget-object v0, p0, Lflyme/support/v7/permission/Permission;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 35
    iget-object p0, p0, Lflyme/support/v7/permission/Permission;->mDisplayName:Ljava/lang/String;

    return-object p0

    .line 36
    :cond_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    if-eqz v0, :cond_30

    .line 38
    invoke-virtual {v0, p1}, Lflyme/support/v7/permission/Localization;->getLabelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 39
    iget-object p0, p0, Lflyme/support/v7/permission/Permission;->mLocalization:Lflyme/support/v7/permission/Localization;

    invoke-virtual {p0, p1}, Lflyme/support/v7/permission/Localization;->getLabelString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_30
    iget-object p1, p0, Lflyme/support/v7/permission/Permission;->mProxy:Lflyme/support/v7/permission/PackageManagerProxy;

    iget-object p0, p0, Lflyme/support/v7/permission/Permission;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lflyme/support/v7/permission/PackageManagerProxy;->loadPermissionLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIdentifier()Ljava/lang/String;
    .registers 1

    .line 26
    iget-object p0, p0, Lflyme/support/v7/permission/Permission;->mIdentifier:Ljava/lang/String;

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lflyme/support/v7/permission/Permission;->mDisplayName:Ljava/lang/String;

    return-void
.end method
